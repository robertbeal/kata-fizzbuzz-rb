require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/fizzbuzz'
require_relative '../lib/rule'

describe 'Fizz Buzz' do
  it 'says the input' do
    input = Random.new.rand(100)

    app = FizzBuzz.new([])
    app.say(input).must_equal input
  end

  it 'says the rules value if the input applies to the rule' do
    rules = [Rule.new('say-it', Proc.new { true })]
    
    app = FizzBuzz.new(rules)
    app.say(0).must_equal 'say-it'
  end

  it 'says applies multiple rules' do
    rules = [
              Rule.new('say', Proc.new { true }),
              Rule.new('-it', Proc.new { true })
            ]

    app = FizzBuzz.new(rules)
    app.say(0).must_equal 'say-it'
  end
end
