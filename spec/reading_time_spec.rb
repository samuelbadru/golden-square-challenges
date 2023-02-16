require 'reading_time'

describe 'estimate_time method' do
    it 'returns 1 minute for a text with 200 words' do
        expect(estimate_time("hello " * 200)).to eq "1.0 minute"
    end

    it 'returns 2 minutes for a text with 400 words' do
        expect(estimate_time("hello " * 400)).to eq "2.0 minutes"
    end

    it 'returns 2.5 minutes for a text with 500 words' do
        expect(estimate_time("hello " * 500)).to eq "2.5 minutes"
    end

    it 'returns 0 minutes for an empty string' do
        expect(estimate_time(" ")).to eq "0.0 minutes"
    end

end