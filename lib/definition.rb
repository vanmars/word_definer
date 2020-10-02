class Definition
  attr_reader :id
  attr_accessor :name, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id) || @@total_rows += 1
    @word_id = attributes.fetch(:word_id)
  end

  # Create Definition
  def ==(other_definition)
    self.name == other_definition.name && self.word_id == other_definition.word_id
  end

  def save
    @@definitions[self.id] = Definition.new({name: self.name, id: self.id, word_id: self.word_id})
  end

  # Read Definition
  def self.all
    @@definitions.values
  end

  def self.find(id)
    @@definitions[id]
  end

  # Update Definition
  def update(name)
    @name = name
  end

  # Delete Defintion
  def delete 
    @@definitions.delete(self.id)
  end

  # For Testing
  def self.clear
    @@definitions = {}
    @@total_rows = 0
    
  end

  # Find Word for Given Definition
  def word
    Word.find(self.word_id)
  end
end