require 'mysql2'
require 'debugger'

class Dog
  
  attr_accessor :id, :name, :color

  @@client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize(name = "Bob Barker", color = "blue")
    @name = name 
    @color = color 
  end


  def self.db
    @@client
  end

  def db 
    @@client
  end

  def find_all
    results = db.query("
      SELECT *
      FROM dogs
      ")
      print(results)
  end

  # Find dog by ID 
  def find(dog_id)
    results = db.query("
      SELECT *
      FROM dogs
      WHERE dog_id=#{dog_id}
      ")
  end

  # Find dog by name
  def find_by_name(d_name)
    results = db.query("
      SELECT *
      FROM dogs
      WHERE dog_name=#{d_name}
      ")
  end


  def find_by_attr(field_1, field_2)
    results = db.query("
      SELECT *
      FROM dogs
      WHERE #{field_1}=#{field_2}
      ")
  end


  def mark_saved!
    self.id = self.db.last_id if self.db.last_id > 0
  end




    # self.new_from_db(result.first)



  # insert
  def insert(d_name, d_color)
    db.query("
      INSERT INTO dogs(color, dog_name) VALUES('#{d_color}', '#{d_name}')
    ")
  end 

  def update(d_id, d_name, d_color)
    update_name(d_id, d_name)
    update_color(d_id, d_color)
  end

  def update_name(d_id, d_name)
    db.query("
      UPDATE dogs
      SET dog_name='#{d_name}'
      WHERE dog_id=#{d_id}
    ")
  end

  def update_color(d_id, d_color)
    db.query("
      UPDATE dogs
      SET color='#{d_color}'
      WHERE dog_id=#{d_id}
    ")      
  end


  def delete(d_id)
  db.query("
    DELETE FROM dogs
    WHERE dog_id=#{d_id}
  ")
  end



  # new_from_db?
  # saved?
  # save! (a smart method that knows the right thing to do)
  # unsaved?
  # mark_saved!

  # ==
  def ==(compare_dogs)
    self.id == compare_dogs.id
  end


  # inspect
  def inspect
    "I'm #{name}, and yes.  I am a dog." 
  end

  # reload
  # attributes

end

dog = Dog.find(10)
# debugger
puts 'hi'



# refactorings?
