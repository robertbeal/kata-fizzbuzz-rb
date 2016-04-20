
class FizzBuzz
  def initialize(rules)
    @rules = rules.sort.to_h
  end

  def say(number)
    response = ''
  
    @rules.each do |key, value|
      if(number % key == 0)
        response += value;
      end
    end

    return response.empty? ? number : response
  end
end
