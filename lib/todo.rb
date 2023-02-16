def todo(text)
    return false if !text.is_a? String

    if text.include?("#TODO")
        true
    else
        false
    end
end