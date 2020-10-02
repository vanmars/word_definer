class Word
  attr_reader :id, :name

  @@words = {}
  @@total_rows = 0

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id) || @@total_rows += 1
  end

  # Create Word
  def save
    @@words[self.id] = Word.new({name: self.name, id: self.id})
  end

  def ==(other_word)
    self.name == other_word.name
  end

  # Read Words
  def self.all
    @@words.values
  end

  def self.find(id)
    @@words[id]
  end
 
  # Update Word
  def update(name)
    @name = name 
  end


  # Delete Word
  def delete
  end

  # For Testing
  def self.clear
    @@words = {}
    @@total_rows = 0
  end
end