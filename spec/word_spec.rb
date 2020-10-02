require('rspec')
require('word')

describe('#Word') do

  before(:each) do
    Word.clear()
  end

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

  describe('#save') do
    it('adds word to @@words hash') do 
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word2 = Word.new({name: "there", id: nil})
      word2.save
      expect(Word.all).to(eq([word1, word2]))
    end
  end

  describe('.clear') do
    it("clears all songs") do
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word2 = Word.new({name: "there", id: nil})
      word2.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word2 = Word.new({name: "hello", id: nil})
      word2.save
      expect(word1).to(eq(word2))
    end
  end
  
  describe('.find') do
    it("finds a word by id") do
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word2 = Word.new({name: "there", id: nil})
      word2.save
      expect(Word.find(word1.id)).to(eq(word1))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word1.update("hullo")
      expect(word1.name).to(eq("hullo"))
    end
  end

  describe('#delete') do
    it("deletes a word by id") do
      word1 = Word.new({name: "hello", id: nil})
      word1.save
      word2 = Word.new({name: "there", id: nil})
      word2.save
      word1.delete()
      expect(Word.all).to(eq([word1]))
    end
  end
end