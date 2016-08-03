require 'rule'

class Config
  include Enumerable

  def initialize
    @rules = [
      Rule.new('Fizz', Proc.new { |input| input % 3 == 0 }),
      Rule.new('Buzz', Proc.new { |input| input % 5 == 0 })
    ]
  end

  def each
    @rules.each { |rule| yield rule }
  end
end
