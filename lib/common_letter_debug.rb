def get_most_common_letter(text)
    # default value of 0 is returned when accessing a non-existent key
    counter = Hash.new(0)

    # text turned in char array, and each char is put into hash as a key, and its corresponding
    # value is incremented by one each time
    text.chars.each do |char|
        counter[char] += 1 if ('A'..'z').include? char 
    end
    p "counter after each loop is #{counter}"
    # converts counter hash to a nested array of [key, value] arrays
    # which is then sorted by the value, and the key of the first array is then indexed for
    p "counter after array and sort is #{counter.to_a.sort_by { |k, v| v}}"
    
    # need to remove non letters and sort in descending order or index the last array
    puts counter.to_a.sort_by { |k, v| v }[-1][0]

  end
  
  # Intended output:
  # 
get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  