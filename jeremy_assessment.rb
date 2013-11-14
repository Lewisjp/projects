# 1. Arrays

	array = ["Blake","Ashley","Jeff"]

	#a. Add a element to an array

	array << "Professor X"

	#b. Write a statement to print out all the elements of the array.

	puts array

	#c. Return the value at index 1.
	puts array[1]

	#d. Return the index for the value "Jeff".
	puts array.index("Jeff")

#2. Hashes

	instructor = {:name=>"Ashley", :age => 27}

	#a. Add a new key for location and give it the value "NYC".

	instructor[:location] = "NYC"

	#b. Write a statement to print out all the key/value pairs in the hash

	instructor.each {|key, value| puts "#{key} / #{value}"}

	#c. Return the name value from the hash.
	puts instructor[:name]

	#d. Return the key name for the value 27.

	instructor.each {|key, value| puts "#{key}" if value == 27}


#3. Nested Structures

	school = { 
	  :name => "Happy Funtime School",
	  :location => "NYC",
	  :instructors => [ 
	    {:name=>"Blake", :subject=>"being awesome" },
	    {:name=>"Ashley", :subject=>"being better than blake"},
	    {:name=>"Jeff", :subject=>"karaoke"}
	  ],
	  :students => [ 
	    {:name => "Marissa", :grade => "B"},
	    {:name=>"Billy", :grade => "F"},
	    {:name => "Frank", :grade => "A"},
	    {:name => "Sophie", :grade => "C"}
	  ]
	}


	#a. Add a key to the school hash called "founded_in" and set it to the value 2013.
	school[:founded_in] = 2013

	#b. Add a student to the school's students' array.
	school[:students] << {:name => "Wolverine"}

	#c. Remove "Billy" from the students' array.
	school[:students].delete_at(1)

	#d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
	school[:students].each { |x| x [:semester] = "Summer" }


	#e. Change Ashley's subject to "being almost better than Blake"
	school[:instructors].each {|x| x[:subject] = "being almost better than Blake" if x[:name]=="Ashley"} 

	#f. Change Frank's grade from "A" to "F".
	school[:students].each {|x| x[:grade] = "F" if (x[:name]=="Frank")}

	#g. Return the name of the student with a "B".
	school[:students].each {|x| puts x[:name] if x[:grade]=="B"} 

	#h. Return the subject of the instructor "Jeff".
	school[:instructors].each {|x| puts x[:subject] if x[:name]=="Jeff"} 


	#i. Write a statement to print out all the values in the school. ***FLAG
	#puts school.each_value {|value| puts "#{value}"}
	puts school[:name]
	puts school[:location]
=begin
	#if you want to see the subkeys as values of say :students or :instructors
	puts school.values_at(:instructors)
	puts school.values_at(:students)
=end

	#temp will take on the sub-key and hashes of a first level key!
	temp2 = school[:instructors]
	#sort through all items in the temp and puts subvalues 
	temp2.sort_by { |x| x[:name] }.each do |x| 
		puts "#{x[:name]}, #{x[:subject]}"
	end



	#temp will take on the sub-key and hashes of a first level key!
	temp1 = school[:students]
	#sort through all items in the temp and puts subvalues 
	temp1.sort_by { |x| x[:name] }.each do |x| 
		puts "#{x[:name]}, #{x[:grade]}, #{x[:semester]} "
	end



#4. Methods

	#If you need to use code from a previous numbered section please cut and paste into the approrpriate section.

	school = { 
	  :name => "Happy Funtime School",
	  :location => "NYC",
	  :instructors => [ 
	    {:name=>"Blake", :subject=>"being awesome" },
	    {:name=>"Ashley", :subject=>"being better than blake"},
	    {:name=>"Jeff", :subject=>"karaoke"}
	  ],
	  :students => [ 
	    {:name => "Marissa", :grade => "B"},
	    {:name=>"Billy", :grade => "F"},
	    {:name => "Frank", :grade => "A"},
	    {:name => "Sophie", :grade => "C"}
	  ]
	}


	#Note: You will need to pass the school variable to each of these methods to include it in scope.

	#a.
	#i. Create a method to return the grade of a student, given that student's name. 
	def student_grade(temp_name, school)

	  school[:students].each {|x| puts (x[:grade] || " No value Listed ") if x[:name]=="#{temp_name}"}

	end

	#ii. Then use it to refactor your work in 3.i.
	puts school[:name]
	puts school[:location]
	school[:instructors].each {|x| puts (x[:name] || " ")  + " " + (x[:subject] || " ") }
	school[:students].each {|x| puts (x[:name] || " ") + " " + (x[:grade] || " ") + " " + (x[:semester] || " ")}


	#b. i.Create a method to udpate a instructor's subject given the instructor and the new subject. 

	def update_subject(instructor, subject, school)
	  school[:instructors].each {|x| x[:subject] = subject if x[:name]== instructor} 
	end

	#ii. Then use it to update Blake's subject to "being terrible".

	update_subject("Blake", "being terrible", school)

	#c. i. Create a method to add a new student to the schools student array. 

	def add_student(name, school)
	  school[:students] << {:name => name}
	end

	#ii. Then use it to add yourself to the school students array.

	add_student("Jeremy", school)

	#d. i. Create a method that adds a new key at the top level of the school hash, given a key and a value. 
	#To keep format of previous keys we conver the added to_sym to the key.  We combine the hashes with merge! to make sure 
	#it is changed outside the method.  We replace our primary hash with the combined elements of our new_hash 

	def add_key(key, value, school)
	  new_hash = {}
	  new_hash[ key.to_sym] = value
	  new_hash.merge!(school)
	  school.replace new_hash
	end


	#ii. Then use it to add a "Ranking" key with the value 1.

	add_key("Ranking", "1", school)



#5. Object Orientation


	#a. Create a bare bones class definition for a School class.
	#b. Define an initialize method for the School class.
	#i. Give your School class the instance variables: name, location, ranking, students, instructors. 
	#NOTE: These variables should be of the same type as they are in the hash above.
	#ii. Rewrite your initialize method definition to take a parameter for each instance variable.
	#iii. Initialize each instance variable with the value of the corresponding parameter.

	class SchoolClass

		#c. Create an attr_accessor for name, location, instructors, and students. Create an attr_reader for ranking.

		attr_accessor :name, :location, :students
		attr_reader :ranking 

		#g. Create an array constant SCHOOLS that stores all instances of your School class.
		@@SCHOOLS = Array.new


		def initialize(name, location, ranking, students, instructors)
			@name = "Unkown Name "
			@location = "NYC"
			@ranking = 1
			@students = {}
			@instructors = {}


		@@SCHOOLS << {:name => @name, :location => @location, :ranking => @ranking, :students => @students, :instructors => @instructors}
		

		end

		#d. Create a method to set ranking, given a ranking value.

		def set_ranking(ranking, num_rank)
		    @ranking = num_rank
		end

		#e. Create a method to add a student to the school, given a name, a grade, and a semester.

		def add_student(name, grade, semester)
		    @students << {:name => name, :grade => grade, :semester => semester}
		end

		#f. Create a method to remove a student from the school, given a name.

		def remove_student(name)
			@students.delete(:name => name)
		end

		#h. Create a class method reset that will empty the SCHOOLS constant.

		def reset_school()
			@@SCHOOLS = Array.new
		end

	end


#6. Classes

	#a. Create a Student class.
	#b. Refactor your School instance methods to treat Students as an array of objects instead of an array of hashes.

	class Student 

		def initialize(name, location, ranking, students, instructors)
			@name = "Unkown Name "
			@location = "NYC"
			@ranking = 1
			@students = Array.new
			@instructors = {}

		end


		def add_student(name, grade, semester)
		    @students.insert(:name => name, :grade => grade, :semester => semester)
		end


		def remove_student(name)
			@students.delete(:name=>name)
		end

	#c. Create a method in the School class that finds a student by name and returns the correct Student object.

		def get_studet_object(name)

			school[:students].each {|x| puts (x[:grade] || " ") + " " + (x[:semester] || " ") if (x[:name] == name)}

		end

	end

=begin
#7.

	#a.	=> 
		hello
		Student

	#b.	=>
		Student

	#c. => location of the variable.

	#d. => Nothing, because no method wa used on the self variable.

	#e.	=> Nothing, because neither the class or its methods had been called.
=end
