require('rspec')
require('definition')
require('word')

describe('#Definition') do

  describe('#initialize') do
    it('returns attributes of an initialized definition object') do
      word = Word.new({name: "Vanessa", id: 2})
      definition = Definition.new({name: "the greatest of all time", id: nil, word_id: 2})
      expect(definition.name).to(eq("the greatest of all time"))
      expect(definition.id).to(eq(1))
      expect(definition.word_id).to(eq(2))
    end
  end

end