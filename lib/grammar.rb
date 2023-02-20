def grammar_check(text)
    return "No text" if text == ""

    if ('A'..'Z').include?(text[0].upcase) && text[0] == text[0].upcase && ['.', '!', '?'].include?(text[-1])
        true
    else 
        false
    end
end