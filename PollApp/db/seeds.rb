# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name:'Dallas')
User.create(name:'Ke$ha')
User.create(name:'Bugz')

Poll.create(title: 'Pancakes and Waffles', user_id: 1)
Poll.create(title: 'Ke$ha Trivia', user_id: 2)

Question.create(text: 'Sweet or savory pancake/waffle?', poll_id: 1)
Question.create(text: 'Powedered sugar or syrup?', poll_id: 1)
Question.create(text: 'What drug is your love?', poll_id: 2)
Question.create(text: 'What do you brush your teeth with?', poll_id: 2)

AnswerChoice.create(text: 'Sweet', question_id: 1) #1
AnswerChoice.create(text: 'Savory', question_id: 1) #2
AnswerChoice.create(text: 'Sugar', question_id: 2) #3
AnswerChoice.create(text: 'Syrup', question_id: 2)
AnswerChoice.create(text: 'Ibuprofen', question_id: 3)
AnswerChoice.create(text: 'Medicinal heroin', question_id: 3)
AnswerChoice.create(text: 'Colgate toothpaste that 9/10 dentists recommend', question_id: 4)
AnswerChoice.create(text: 'Trident toothpaste that 6/10 dentists recommend', question_id: 4)
AnswerChoice.create(text: 'Bottle of Jack', question_id: 4)

Response.create(user_id: 1, answer_choice_id: 2)
Response.create(user_id: 1, answer_choice_id: 4)
Response.create(user_id: 1, answer_choice_id: 6)
Response.create(user_id: 1, answer_choice_id: 9)

Response.create(user_id: 2, answer_choice_id: 1)
Response.create(user_id: 2, answer_choice_id: 3)
Response.create(user_id: 2, answer_choice_id: 5)
Response.create(user_id: 2, answer_choice_id: 9)

Response.create(user_id: 3, answer_choice_id: 2)
Response.create(user_id: 3, answer_choice_id: 3)
Response.create(user_id: 2, answer_choice_id: 6)
Response.create(user_id: 2, answer_choice_id: 7)
