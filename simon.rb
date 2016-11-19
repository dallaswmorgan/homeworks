class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

    until game_over
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep(1)
      system("clear")
    end

  end
# require "byebug"
  def require_sequence
    # byebug
    system("clear")
    input_sequence = []
    while input_sequence != @seq
      puts "Input the sequence"
      puts ">"
      input = gets.chomp
      input_sequence << input
      break if @seq[0..input_sequence.length] != input_sequence
      # break if input_sequence == @seq
    end
    @game_over = true unless @seq == input_sequence
  end

  def add_random_color
    seq << COLORS.sample

  end

  def round_success_message
    puts "Correct sequence!"
  end

  def game_over_message
    puts "Incorrect sequence, get 'em next time champ!'"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
