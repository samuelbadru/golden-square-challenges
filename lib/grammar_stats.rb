class GrammarStats
  def initialize
    @correct = 0
    @checks = 0

  end

  def check(text)
    return "No text" if text == ""

    @checks += 1

    if ('A'..'Z').include?(text[0].upcase) && text[0] == text[0].upcase && ['.', '!', '?'].include?(text[-1])
      @correct += 1
      p "Text: #{text}   Correct: #{@correct}"
      true
    else 
      false
    end
    
  end

  def percentage_good
    return "No checks done" if @checks == 0

    result = (@correct.to_f/@checks) * 100
    result.to_i
  end
end