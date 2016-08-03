require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/fizzbuzz'
require_relative '../lib/rule'

describe :fizzbuzz do
  it 'says the input' do
    input = Random.new.rand(100)

    app = FizzBuzz.new([])
    app.say(input).must_equal input
  end

  it 'says the rules if it applies' do
    rules = [Rule.new('say-it', proc {|input| input == 0 })]

    app = FizzBuzz.new(rules)
    app.say(0).must_equal 'say-it'
  end

  it 'does not say the rule if it does not apply' do
    rules = [Rule.new('say-it', proc {|input| input > 0 })]

    app = FizzBuzz.new(rules)
    app.say(0).must_equal 0
  end

  it 'applies multiple rules' do
    rules = [
              Rule.new('say', proc { true }),
              Rule.new('-it', proc { true })
            ]

    app = FizzBuzz.new(rules)
    app.say(0).must_equal 'say-it'
  end
end
