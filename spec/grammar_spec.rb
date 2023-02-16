require 'grammar'

describe 'grammar_check method' do
    it 'returns "No text" when there is no input' do
        expect(grammar_check("")).to eq "No text"
    end

    it 'returns false when no capital and no ending punctuation' do
        expect(grammar_check("when I wake up")).to eq false
    end

    it 'returns false when wrong ending punctuation is used' do
        expect(grammar_check("I remember syrup sandwiches,")).to eq false
    end

    it 'returns false when first letter is lowercase' do
        expect(grammar_check("then you dive in it.")).to eq false
    end

    it 'returns false when it does not start with a letter' do
        expect(grammar_check("$wimming pool full of liquor.")).to eq false
    end

    it 'returns true when starting with capital and ends with full-stop' do
        expect(grammar_check("I recognise you're looking at me for the pay cut.")).to eq true
    end

    it 'returns true when starting with capital and ends with exclamation mark' do
        expect(grammar_check("My left stroke just went viral!")).to eq true
    end

    it 'returns true when starting with capital and ends with question mark' do
        expect(grammar_check("Why you babysitting only two or three shots?")).to eq true
    end


end
