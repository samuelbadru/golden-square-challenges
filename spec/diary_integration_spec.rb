require 'diary_entry'
require 'diary2'

describe 'diary_integration' do
  context 'when diary entries have been added to the diary' do

      yesterday = DiaryEntry.new('Funky Friday', 'At this age, how are them man still hating?')
      today = DiaryEntry.new('The Saturdays', 'Just can\'t get enough')
      sams_diary = Diary.new

    it 'can be viewed as a list' do
      sams_diary.add(yesterday)
      sams_diary.add(today)
      expect(sams_diary.all).to eq [yesterday, today]
    end

    it 'can show the total number of words in all diary entries' do
      expect(sams_diary.count_words).to eq 13
    end

    it 'can show the total reading time in minutes given wpm of all diary entries' do
      feb_20 = DiaryEntry.new('Blue Monday', 'How does it feel to treat me like you do? ' * 20)
      feb_21 = DiaryEntry.new('Tuesday', 'I got the best club going up on a Tuesday ' * 20)
      sams_diary = Diary.new
      sams_diary.add(feb_20)
      sams_diary.add(feb_21)
      expect(sams_diary.reading_time(40)).to eq 10
    end

    it 'shows the diary entry closest to the length the user can read' do
      feb_22 = DiaryEntry.new('Wednesday', 'Today is a cloudy day')
      feb_23 = DiaryEntry.new('Thursday', 'It is sunny')
      samuel_diary = Diary.new
      samuel_diary.add(feb_22)
      samuel_diary.add(feb_23)
      expect(samuel_diary.find_best_entry_for_reading_time(5, 1)).to eq feb_22
    end

    it 'shows the diary entry not over the length the user can read' do
      feb_22 = DiaryEntry.new('Wednesday', 'Today is a cloudy day')
      feb_23 = DiaryEntry.new('Thursday', 'It is sunny')
      samuel_diary = Diary.new
      samuel_diary.add(feb_22)
      samuel_diary.add(feb_23)
      expect(samuel_diary.find_best_entry_for_reading_time(4, 1)).to eq feb_23
    end


  end

  context 'when no diary entries have been added' do
  end
  


end