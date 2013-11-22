# Anagram Detector

# Write a program that, given a word and a list of possible anagrams, 
# selects the correct one(s).

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(answers)

    words_found = Array.new

    #takes stringm places all characters to an array, then runs enumerable method for permutation and returns it to array.
    new_word = word.chars.to_a.permutation.to_a

    new_word.each do |scramble|
      test_word = scramble.join # joins letters to form new word
          
      if answers.include?(test_word) == true
          words_found << test_word
      end
    end

    words_found.uniq
  end

  def display(word, words_found)

    if words_found[0] == nil
      puts "No valid words found."
    else
      puts "#{word} can also be #{words_found}"
    end

  end

end


word = 'allergy'
answers = %w(gallery ballerina regally clergy largely leading)

detector = Anagram.new(word)
puts detector.match(answers).inspect


# detector = Anagram.new('ba')
# puts detector.match(['ab', 'abc', 'bac'])

=begin
  it 'should detect a simple anagram' do
    detector = Anagram.new('ba')
    anagrams = detector.match(['ab', 'abc', 'bac'])
    anagrams.should eq(['ab'])
  end

 # %w[characters].permutation.map &:join


# In other words, given: "listen" and %w(enlists google inlets banana) 
# the program should return "inlets".

# PS what is %w? 
# http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean

# Save this file as anagram_spec.rb
# run it with rspec anagram_spec.rb


RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

require_relative './anagram'

describe 'Anagram' do 
  it 'should detect no matches' do
    detector = Anagram.new('diaper')
    detector.match(%w(hello world zombies pants)).should eq([])
  end

  it 'should detect a simple anagram' do
    detector = Anagram.new('ba')
    anagrams = detector.match(['ab', 'abc', 'bac'])
    anagrams.should eq(['ab'])
  end

  it 'should detect an anagram' do
    detector = Anagram.new('listen')
    anagrams = detector.match %w(enlists google inlets banana)
    anagrams.should eq(['inlets'])
  end

  it 'should detect multiple anagrams' do
    detector = Anagram.new('allergy')
    anagrams = detector.match %w(gallery ballerina regally clergy largely leading)
    anagrams.should eq(['gallery', 'regally', 'largely'])
  end
end
=end