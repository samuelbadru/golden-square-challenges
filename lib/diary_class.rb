class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        @bookmark = 0
    end

    def title
        @title
    end

    def contents
        @contents
    end

    def count_words
        @contents.split.length
    end

    def reading_time(wpm)
        count_words / wpm 
    end

    def reading_chunk(wpm, minutes)
        words_length = (minutes.to_f / reading_time(wpm)) * count_words
        content_arr = contents.split
        finish = @bookmark + words_length
        result = content_arr[@bookmark, finish].join(' ') + ' '
        
        # if user finishes reading everything, bookmark should reset to 0
        if finish == content_arr.length
          @bookmark = 0
        else
          @bookmark = words_length
        end

        result
    end
end
