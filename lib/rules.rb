require 'rule'

class Rules
  include Enumerable

  def initialize
    @rules = [
      Rule.new('Fizz', proc { |input| input % 3 == 0 }),
      Rule.new('Buzz', proc { |input| input % 5 == 0 })
    ]
  end

  def each
    @rules.each { |rule| yield rule }
  end
end
