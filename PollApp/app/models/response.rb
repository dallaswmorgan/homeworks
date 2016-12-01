
class Response < ActiveRecord::Base

  validate :not_authored_poll, :not_duplicate_response

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_choice_id

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  has_one :question,
    through: :answer_choice,
    source: :question


    def sibling_responses
      question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
      sibling_responses.exists?(user_id: self.user_id)
    end

    def not_duplicate_response
      if respondent_already_answered?
        errors[:duplicate] << "response not allowed"
      end
    end

    def not_authored_poll
      if respondent.authored_polls.exists?(self.user_id)
        errors[:author] << "constructed the poll and is not allowed to answer"
      end
    end
end
