require 'diary'

RSpec.describe "Make snippet method" do
    it "returns the string provided when 5 words or less" do
        result = make_snippet("Hello world")
        expect(result).to eq "Hello world"
    end

    it "returns the string for the first 5 words followed by elipses" do
        result = make_snippet("Hello world, I'm Samuel Badru and I'm 26")
        expect(result).to eq "Hello world, I'm Samuel Badru..."
    end
end