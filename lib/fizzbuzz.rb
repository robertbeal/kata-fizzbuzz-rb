
class FizzBuzz
  def initialize(rules)
    @rules = rules
  end

  def say(number)
    rules = @rules.select{ |rule| rule.applies_to(number) }

    rules.empty? ? number : rules.map{ |rule| rule.say }.join
  end
end
