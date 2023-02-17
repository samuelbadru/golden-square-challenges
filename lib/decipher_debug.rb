def encode(plaintext, key)
    # get a character array of the key, with no repeated letters, resulting in:
    # ['s', 'e', 'c', 'r', 't']
    # lowercase alphabet is turned into a character array, and any letters already
    # in the key array is removed. The two arrays are then combined.
    # needed two dots to include z, length of cipher was 25 instead of 26
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p "cipher is #{cipher}"
    p "length of cipher is #{cipher.length}"

    # plaintext value is converted into a character array
    # finds the index of each plaintext character in the cipher and adds 65 as alphabet starts
    # at 65 (capitals), which is then converted into a character with chr method
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char).to_i).chr
    end

    # You then join the characters in the array
    puts ciphertext_chars.join
  end
  
  # Again needs 2 dots instead of 3 to include z, cipher made in same way as above
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)

    # ord returns the number version of each character (opposite of chr)
    # minus 65 to return it to the index number, used to find it in the cipher array
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
    # you then join the characters together
    puts plaintext_chars.join
  end
  
  # Intended output:
  #
encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"