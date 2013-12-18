require 'mysql2'
require 'debugger'

class Dog
  
  attr_accessor :db, :name, :color

  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  # color, dog_name, dog_id #=> :database dogs set up 
  def initialize(name, color)
    @name = name
    @color = color

 #  new_table  #=> Table 'dogs.dogs' doesn't exist (Mysql2::Error)
  end

  def mark_saved!
    self.id = self.db.last_id if self.db.last_id > 0
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
  def self.db
    @@db
  end

  # db
  def db
    @@db
  end



  # def self.new_from_db(row)
  #   dog = Dog.new(row["name"], row["color"]) #=> undefined method `[]' for nil:NilClass (NoMethodError)
  #   dog
  # end


  # find_by_att , for now its just Color 
  def self.find_by_att(d_color)
    result = db.query("
      SELECT *
      FROM dogs
      WHERE color='#{d_color}'
    ")
  end

  # find_by_if
  def self.find(d_id)
    result = db.query("
      SELECT *
      FROM dogs
      WHERE dog_id=#{d_id}
    ")
    # self.new_from_db(result.first)
  end

  # find by name 
  def self.find_by_name(name)
    result = self.db.query("
      SELECT *
      FROM dogs
      where name = '#{name}'
    ")

    # self.new_from_db(result.first)
  end



  # insert
  def self.insert(d_color, dog_name)
    self.db.query("
      INSERT INTO dogs(color, dog_name) VALUES('#{d_color}', '#{dog_name}')
    ")
  end

  # update by ID
  def update(d_id, d_name, d_color)
    self.db.query("
      UPDATE dogs
      SET color='#{d_color}'
      SET dog_name='#{d_name}'
      WHERE dog_id=#{d_id}
    ")
  end

  # update by name
  def update_by_name(d_name, d_color)
    self.db.query("
      UPDATE dogs
      SET color='#{d_color}'
       WHERE dog_name='#{d_name}'
    ")
  end

  # delete/destroy
  def put_to_sleep(d_id)
    self.db.query("
      DELETE FROM dogs
      WHERE dog_id=#{d_id}
    ")
  end

  # delete/destroy by name
  def put_to_sleep(d_name)
    puts "This will put down all dogs named #{d_name}.\nAre you sure you want to continue?"
    answer = gets.chomp.downcase

      if answer ==  ( "yes" || "y" )
        db.query("
          DELETE FROM dogs
          WHERE dog_id='#{d_name}'
        ")
      end
  end

  # See all dogs
  def kettle
    self.db.query("
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
# debugger
puts 'hi'



# refactorings?
