
class FizzBuzz
  def initialize(rules)
    @rules = rules
  end

  def say(number)
    response = @rules.select{ |rule| rule.applies_to(number) }
                     .map{ |rule| rule.say }
                     .join

    return response.empty? ? number : response
  end
end
