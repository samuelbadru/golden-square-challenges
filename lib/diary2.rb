class Diary
  def initialize
    @list_of_diary_entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @list_of_diary_entries << entry
  end

  def all
    @list_of_diary_entries
  end

  def count_words
    total_words = 0
    @list_of_diary_entries.each { |entry| total_words += entry.count_words }
    total_words
  end

  def reading_time(wpm) 
    total_reading_time = 0
    @list_of_diary_entries.each { |entry| total_reading_time += entry.reading_time(40) }
    total_reading_time
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    user_word_length = wpm * minutes
    
    result_length = 0
    result = nil

    @list_of_diary_entries.each do |entry|
      if entry.count_words > user_word_length
        next
      elsif entry.count_words > result_length 
        result_length = entry.count_words
        result = entry
      end
    end
    
    result
    
    # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end
