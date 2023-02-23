require 'diary2'

describe Diary do
  context 'when no diary entries have been added' do
    sams_diary = Diary.new

    it 'has an empty list' do
      expect(sams_diary.all).to eq []
    end

    it 'has a word count of 0' do
      expect(sams_diary.count_words).to eq 0
    end

    it 'has a reading time of 0' do
      expect(sams_diary.reading_time(100)).to eq 0
    end
  end
end
