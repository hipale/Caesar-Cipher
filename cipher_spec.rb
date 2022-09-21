require './lib/cipher'

describe "#caesar_cipher" do
    it "returns one word, in which letters are moved up the alphabet, 
    with selected number" do 
      expect(caesar_cipher("abc", 2)).to eql("cde")
    end

    it "returns a changed word with big letter" do 
      expect(caesar_cipher("Big", 5)).to eql("Gnl")
    end

    it "returns a combination of few words" do
      expect(caesar_cipher("one and two", 4)).to eql("sri erh xas")
    end

    it "returns a word with few big letters and few words" do
      expect(caesar_cipher("Few More words", 1)).to eql("Gfx Npsf xpset")
    end
end