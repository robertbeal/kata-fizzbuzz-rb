require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/config'

describe :config do
  it 'says Fizz for multiples of 3' do
    multiple_of_3 = Random.new.rand(100) * 3

    rules = Config.new.select{ |rule| rule.applies_to(multiple_of_3) }
    rules.wont_be_empty
    rules.select{ |rule| rule.say == 'Fizz'}.wont_be_empty
  end

  it 'says Buzz for multiples of 5' do
    multiple_of_5 = Random.new.rand(100) * 5

    rules = Config.new.select{ |rule| rule.applies_to(multiple_of_5) }
    rules.wont_be_empty
    rules.select{ |rule| rule.say == 'Buzz'}.wont_be_empty
  end
end
