require 'mysql2'

class Dog
  
  attr_accessor :db

  @@db = Mysql2::Client.new(:host => "localhost", :username => "root") #, :database => "dogs"

  # color, dog_name, dog_id #=> :database dogs set up 
  def initialize 
    new_table
  end

  # Create table
  def new_table
    db.query("
      CREATE TABLE dogs(
        dog_id INTEGER PRIMARY KEY AUTO_INCREMENT,
        dog_name TEXT,
        color TEXT
      );
    ")
  end

  # db
  def db
    @@db
  end

  # find_by_att , for now its just Color 
  def self.find_by_att(d_color)
    db.query("
      SELECT *
      FROM dogs
      WHERE color='d_color'
    ")
  end

  # find_by_if
  def self.find(d_id)
    db.query("
      SELECT *
      FROM dogs
      WHERE dog_id='d_id'
    ")
  end

  # insert
  def self.insert(color, dog_name)
    db.query("
      INSERT INTO dogs(color, dog_name) values('color', 'dogname')
    ")
  end

  # update by ID
  def update(d_id, d_name, d_color)
    db.query("
      UPDATE dogs
      SET color='d_color'
      SET dog_name='d_name'
      WHERE dog_id=d_id
    ")
  end

  # update by name
  def update_by_name(d_name, d_color)
    db.query("
      UPDATE dogs
      SET color='d_color'
       WHERE dog_name='d_name'
    ")
  end

  # delete/destroy
  def put_to_sleep(d_id)
    db.query("
      DELETE FROM dogs
      WHERE dog_id=d_id
    ")
  end

  # delete/destroy by name
  def put_to_sleep(d_name)
    puts "This will put down all dogs named #{d_name}.\nAre you sure you want to continue?"
    answer = gets.chomp.downcase

      if answer ==  ( "yes" || "y" )
        db.query("
          DELETE FROM dogs
          WHERE dog_id='d_name'
        ")
      end
  end

  # See all dogs
  def kettle
    db.query("
      SELECT * FROM dogs
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
#debugger
puts 'hi'






  # refactorings?
  # new_from_db?
  # saved?
  # save! (a smart method that knows the right thing to do)
  # unsaved?
  # mark_saved!
  # ==
  # inspect
  # reload
  # attributes

