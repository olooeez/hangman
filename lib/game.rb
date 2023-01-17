require_relative 'word'

class Game
  NUM_GUESSES = 10
  SAVE_FILE_NAME = 'saved_game.yml'.freeze

  attr_accessor :player, :word

  def initialize(player)
    @player = player
    @word = Word.new
  end

  def play
    guesses_left = NUM_GUESSES
    won = false

    until word.guessed? || player.guesses.size == NUM_GUESSES
      print "• Guess a letter, choose a word or type 'save' to save the game: "
      input = gets.chomp.downcase

      if input == 'save'
        save
        puts '> Game saved.'
        return
      end

      if player.guesses.include?(input)
        puts '> You have already guessed this letter.'
        next
      end

      if input == word.word
        won = true
        break
      end

      player.guesses << input

      guesses_left = NUM_GUESSES - player.guesses.size

      if word.guess(input)
        puts "> Correct! You have #{guesses_left} guesses left."
      else
        puts "> Incorrect! You have #{guesses_left} guesses left."
      end

      puts "> Word: [#{word.display}]"
    end

    if word.guessed? || won
      puts "> Wow! You won with #{guesses_left} guesses left."
    else
      puts "> You lose! The word was '#{word.word}'."
    end
  end

  def self.load
    unless File.exist?(SAVE_FILE_NAME)
      puts "> Error: No saved games found (file '#{SAVE_FILE_NAME}' not found)"
      exit 1
    end

    YAML.load_file(SAVE_FILE_NAME)
  end

  private

  def save
    File.write(SAVE_FILE_NAME, YAML.dump(self), mode: 'w')
  end
end
