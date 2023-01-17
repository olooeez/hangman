class Player
  attr_accessor :name, :guesses

  def initialize
    @name = get_name
    @guesses = []
  end

  def get_name
    print '• What is your name? '
    gets.chomp
  end
end
