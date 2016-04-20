require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/fizzbuzz'

describe 'Fizz Buzz' do
  it 'says the input' do
    rules = {}
    input = Random.new.rand(100)

    app = FizzBuzz.new(rules)
    app.say(input).must_equal input
  end

  it 'says a word if the input is divisible by the rule' do
    number = Random.new.rand(100)
    rules = {number => 'say-it'}
    app = FizzBuzz.new(rules)
    
    10.times do |n|
      app.say(number * n).must_equal 'say-it'
    end
  end

  it 'says applies multiple rules' do
    rules = {3 => 'Fizz', 5 => 'Buzz'}

    app = FizzBuzz.new(rules)
    app.say(15).must_equal 'FizzBuzz'
  end

  it 'applies rules by their value in ascending order' do
    rules = {5 => 'Buzz', 3 => 'Fizz'}

    app = FizzBuzz.new(rules)
    app.say(15).must_equal 'FizzBuzz'
  end
end
