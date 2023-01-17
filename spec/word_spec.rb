require_relative '../lib/word'

require 'rspec'

describe Word do
  describe '#initialize' do
    it 'sets @word to a random word from data/words.txt' do
      expect(File).to receive(:readlines).with('data/words.txt').and_return(%w[press cards learn])

      word = Word.new
      expect(%w[press cards learn]).to include(word.word)
    end

    it 'sets @display to a string of underscores the same length as @word' do
      expect(File).to receive(:readlines).with('data/words.txt').and_return(%w[press cards learn])

      word = Word.new
      expect(word.display).to eq('_____')
    end
  end

  describe '#guessed?' do
    it 'returns true if @display does not include an underscore' do
      word = Word.new
      word.instance_variable_set(:@display, 'word')

      expect(word.guessed?).to be true
    end

    it 'returns false if @display includes an underscore' do
      word = Word.new
      word.instance_variable_set(:@display, 'wo_d')

      expect(word.guessed?).to be false
    end
  end

  describe '#guess' do
    it 'updates @display with the guessed letter if the letter is in @word' do
      word = Word.new
      word.instance_variable_set(:@word, 'word')
      word.instance_variable_set(:@display, '____')

      expect(word.guess('w')).to be true
      expect(word.display).to eq('w___')
    end

    it 'returns false if the letter is not in @word' do
      word = Word.new
      word.instance_variable_set(:@word, 'word')

      expect(word.guess('x')).to be false
    end
  end
end
