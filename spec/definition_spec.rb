require('rspec')
require('definition')
require('word')

describe('#Definition') do

  before(:each) do
    Definition.clear
  end

  describe('#initialize') do
    it('returns attributes of an initialized definition object') do
      word = Word.new({name: "Vanessa", id: 2})
      definition = Definition.new({name: "the greatest of all time", id: nil, word_id: 2})
      expect(definition.name).to(eq("the greatest of all time"))
      expect(definition.id).to(eq(1))
      expect(definition.word_id).to(eq(2))
    end
  end

  describe('#==') do
    it('returns true if two definitions are the same') do
      definition1 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition2 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      expect(definition1).to(eq(definition2))
    end
  end

  describe('.all') do
    it('returns a list of all definitions') do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves definitions to @@definitions hash') do
      definition1 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition1.save
      definition2 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition2.save
      expect(Definition.all).to(eq([definition1, definition2]))
    end
  end

  describe('.clear') do
    it('clears the @@definitions hash') do
      definition1 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition1.save
      definition2 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition2.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.find') do
    it('finds the correct definition in the @@definitions hash') do
      definition1 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition1.save
      definition2 = Definition.new({name: "the greatest of all time", id: nil, word_id: 1})
      definition2.save
      expect(Definition.find(definition1.id)).to(eq(definition1))
    end
  end
end