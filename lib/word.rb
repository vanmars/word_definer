class Word
  attr_reader :id, :name

  @@words = {}
  @@total_rows = 0

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id) || @@total_rows += 1
  end

  # Create Word
  def ==(other_word)
  end

  def save
  end

  # Read Words
  def self.all
  end

  def self.find
  end
 
  # Update Word
  def update
  end


  # Delete Word
  def delete
  end

  # For Testing
  def self.clear
  end


end