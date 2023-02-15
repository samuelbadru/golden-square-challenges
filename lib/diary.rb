def make_snippet(words)
    words_arr = words.split

    if words_arr.count <= 5
        words
    else
        words_arr[0..4].join(' ') + "..."
    end
end
