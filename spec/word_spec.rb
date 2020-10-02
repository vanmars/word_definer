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

end