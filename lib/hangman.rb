require_relative 'game'
require_relative 'player'

require 'yaml'

def start_game
  choice = nil

  puts 'Welcome to Hangman!'
  until [1, 2].include?(choice)
    print '• Type 1 to start a game or 2 to load a game: '
    choice = gets.chomp.to_i

    case choice
    when 1
      player = Player.new
      game = Game.new(player)
      game.play
    when 2
      game = Game.load
      game.play
    else
      puts '> Error: Invalid choice.'
    end
  end
end

start_game
