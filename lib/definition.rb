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
  end

  # Read Definition
  def self.all
  end

  def self.find
  end

  # Update Definition
  def update
  end

  # Delete Defintion
  def delete 
  end

  # For Testing
  def self.clear
  end

  # Find Word
  def word
  end
end