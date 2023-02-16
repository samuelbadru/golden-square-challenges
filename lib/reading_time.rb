def estimate_time(text)
    words = text.split.count
    time = words / 200.0

    if time != 1.0
        "#{time} minutes"
    else
        "#{time} minute"
    end
end