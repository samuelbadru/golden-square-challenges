require 'grammar_stats'

describe GrammarStats do
  object = GrammarStats.new
  
  context 'for the check method' do
    it 'returns "No text" when there is no input' do
      expect(object.check("")).to eq "No text"
    end

    it 'returns false when no capital and no ending punctuation' do
        expect(object.check("when I wake up")).to eq false
    end

    it 'returns false when wrong ending punctuation is used' do
        expect(object.check("I remember syrup sandwiches,")).to eq false
    end

    it 'returns false when first letter is lowercase' do
        expect(object.check("then you dive in it.")).to eq false
    end

    it 'returns false when it does not start with a letter' do
        expect(object.check("$wimming pool full of liquor.")).to eq false
    end

    it 'returns true when starting with capital and ends with full-stop' do
        expect(object.check("I recognise you're looking at me for the pay cut.")).to eq true
    end

    it 'returns true when starting with capital and ends with exclamation mark' do
        expect(object.check("My left stroke just went viral!")).to eq true
    end

    it 'returns true when starting with capital and ends with question mark' do
        expect(object.check("Why you babysitting only two or three shots?")).to eq true
    end
  end

  object2 = GrammarStats.new

  context 'for the percentage_good method' do
    it 'returns "No checks done" when the check method has yet to be used' do
      expect(object2.percentage_good).to eq "No checks done"
    end

    it 'returns 100 when no failed checks have occurred yet' do
      object2.check("Last time that I checked.")
      object2.check("It was five chains on my neck!")
      object2.check("Who run the city?")
      expect(object2.percentage_good).to eq 100
    end

    it 'return 50 when half the checks have failed' do
      object2.check("First, you get the money,")
      object2.check("then respect.")
      object2.check("then the power come next")
      expect(object2.percentage_good).to eq 50
    end

    object3 = GrammarStats.new
    it 'returns 0 when all checks as of yet have failed' do
      object3.check("First, you get the money,")
      object3.check("then respect.")
      object3.check("then the power come next")
      expect(object3.percentage_good).to eq 0
    end
  end

end