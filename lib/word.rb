class Word
  attr_accessor :word, :display

  def initialize
    @word = choose_word
    @display = '_' * @word.size
  end

  def guessed?
    !display.include?('_')
  end

  def guess(letter)
    return false unless word.include?(letter)

    word.chars.each_with_index do |l, i|
      display[i] = l if l == letter
    end

    true
  end

  private

  def choose_word
    words = File.readlines('data/words.txt').map(&:chomp)

    words.select { |w| w.length.between?(5, 12) }.sample
  end
end
