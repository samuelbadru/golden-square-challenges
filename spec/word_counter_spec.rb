require 'word_counter'

describe 'count_words' do
    it 'returns the number of words in the string provided' do
        expect(count_words("I want a lemondade drink")).to eq 5
    end
end