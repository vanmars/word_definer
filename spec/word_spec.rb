require('rspec')
require('word')

describe('#Word') do

  describe('#id') do
    it('returns the id of an initialized word object') do
      word = Word.new({name: "Vanessa", id:1})
      expect(word.id).to(eq(1))
    end
  end

  describe('.all') do
    it('returns all of the created words') do 
      expect(Word.all).to(eq([]))
    end
  end

  describe('.save') do
    it('adds word to @@words hash') do 
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word2 = Word.new({name: "there", id: nil})
      word2.save
      expect(Word.all).to(eq([word1, word2]))
    end
  end

end