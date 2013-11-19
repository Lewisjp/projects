#Organizing Nested Data

#I have a collection of Programming Languages.  
languages = {
  :oo => {   #KEY
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {  #KEY
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

reorg_languages = Hash.new


  languages.each_pair do |key, value| 
  # puts key #=> oo #=> functional
  # puts value #=> {:ruby=>{:type=>"interpreted"}
    value.each_pair do | attribute, trait |
    #   puts attribute #=> ruby
    #   puts trait #=> {:type=>"interpreted"}
    
      if reorg_languages[attribute].nil?
         reorg_languages[attribute] = {}
      end

      reorg_languages[attribute][:style] = Array.new

      reorg_languages[attribute][:style] << key
    
    end
  end




  puts reorg_languages.inspect


=begin
I would like you to reformat the nested structure to be of the following form

{
  :ruby => {
    :style => [:oo],
    :type => "dynamic"
  },
  :python => {
    :style => [:oo],
    :type => "dynamic"
  }
  etc etc
}
=end 