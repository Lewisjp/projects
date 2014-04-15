=begin

Let's make an object that behaves like a hash today!
 
I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
For example
 
obj = {:blake => "the best"}
obj["blake"] #=> "the best"
 
I'd like to be able to set values in our fake hash.
I'd like to be able to find all values that have keys beginning with the letter a.
I'd like to be able to get all the keys in the hash in a descending alphabetized array.
 

=end



end

class FakeHashWrapper
 
	def initialize(args)
		@info = args.slice
	end

	def each(&block)
		block ? elements.each {|element| yield element} : elements.to_enum
	end
		 
	def first
		elements.first
	end
	 
	def {}(i)
	    elements[i]
	end

 
end

=begin
	
psudeocode 
1. take in argument
2. convert into string
3. strip the elements before => and place it into key array
4. If the item begins with : make it a symbol.
5. strip the elements after => and place it into valaue array

=end

class MyFakeHash

	attr_accessor :keys, :values

	def initialize(arg)

	end
end
