require 'diary_class'

describe DiaryEntry do

  feb_17 = DiaryEntry.new('Funky Friday', 'At this age, how are them man still hating?')

  it 'returns the title as a string' do
      expect(feb_17.title).to eq 'Funky Friday'
  end

  it 'returns the contents as a string' do
      expect(feb_17.contents).to eq 'At this age, how are them man still hating?'
  end

  it 'returns the number of words in the contents as an integer' do
      expect(feb_17.count_words).to eq 9
  end

  feb_18 = DiaryEntry.new('The Saturdays', 'Just can\'t get enough ' * 50 + 'Why are you waiting? ' * 50)

  it 'returns estimated reading time as an integer in minutes for the contents at the given words per minute' do
    expect(feb_18.reading_time(40)).to eq 10
  end

  context 'with content readable within the given minutes' do
    it 'returns the full contents' do
      expect(feb_18.reading_chunk(40, 10)).to eq 'Just can\'t get enough ' * 50 + 'Why are you waiting? ' * 50
    end  
  end

  context 'with content unreadable within the given minutes' do
    it 'returns a readable chunk' do
      expect(feb_18.reading_chunk(40, 5)).to eq 'Just can\'t get enough ' * 50
    end

    it 'returns the next chunk, next time we are asked' do
      expect(feb_18.reading_chunk(40, 5)).to eq 'Why are you waiting? ' * 50
    end
  end

end