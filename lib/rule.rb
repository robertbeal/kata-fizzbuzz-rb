
class Rule
  attr_reader :say

  def initialize(say, rule)
    @rule = rule
    @say = say
  end

  def applies_to(input)
    @rule.call(input)
  end
end
