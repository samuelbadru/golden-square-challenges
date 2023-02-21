require 'todo'
# "When nothing is listed there is nothing to do = problem domain"
describe 'todo method' do
    it 'returns false when empty string is given' do
        expect(todo("")).to eq false
    end

    it 'return false when a hastag is not used before TODO' do
        expect(todo("TODO Feed the cat")).to eq false
    end

    it 'return false when todo is lowercase' do
        expect(todo("#todo Go shopping")).to eq false
    end

    it 'returns true when "#TODO" is present' do
        expect(todo("#TODO Wash the car")).to eq true
    end

    it 'returns true when multiple "#TODO"\'s are present' do
        expect(todo("#TODO Do the dishes #TODO Do the laundry")).to eq true
    end

    it 'returns true when only "#TODO" is present' do
        expect(todo("#TODO")).to eq true
    end

    it 'returns false when a non-string is entered' do
        expect(todo(1234)).to eq false
    end
end