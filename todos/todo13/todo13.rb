# Version Sort
#* from rubeque http://www.rubeque.com/problems/version-sort * 

## Objectives: 

#Implement the version_sort method

### Inspiration: 

#http://www.gnu.org/software/coreutils/manual/html_node/More-details-about-version-sort.html

## Skills: 
#reg exp, split, sort, each

## Instructions:

# The version sort takes into account the fact that file names frequently include indices or version numbers. Standard sorting functions usually do not produce the ordering that people expect because comparisons are made on a character-by-character basis. The version sort addresses this problem, and is especially useful when browsing directories that contain many files with indices/version numbers in their names:

#      $ ls -1            $ ls -1v
#      foo.zml-1.gz       foo.zml-1.gz
#      foo.zml-100.gz     foo.zml-2.gz
#      foo.zml-12.gz      foo.zml-6.gz
#      foo.zml-13.gz      foo.zml-12.gz
#      foo.zml-2.gz       foo.zml-13.gz
#      foo.zml-25.gz      foo.zml-25.gz
#      foo.zml-6.gz       foo.zml-100.gz


## Ruby Code:


class Array

  def sort_please(var_arr) 

    changed = true
      while changed == true
      changed = false
      (var_arr.count-1).times do |x| 
        if var_arr[x][1].to_i < var_arr[x+1][1].to_i
          var_arr[x] <=> var_arr[x+1]
          changed = true
        end
      end
      end

  end



  def version_sort
    var_arr = Array.new

    version = /.\d+\D\d*\D*/ # => -2.012b.ext #.\d+\D\d* "foo-1.9.3.ext" => -1.9.3.

    self.each do |item|
      temp = Array.new
      temp << item # nested array will start with original variable

      num = item.match(version) # class type => MatchData
      num = num.to_s.delete("-").delete("ext")
      num = num.split(".").unshift(item) # => ["foo-2.012b.ext", "2", "012b"]

      var_arr << num # nest array for future sorting 
    end

      # var_arr[0][0] #=> foo-1.10.2.ext
      sort_please(var_arr)
  end



  # def version_sort
  #       # My understanding is that the order of "foo-2.01.ext" and "foo-2.1.ext" is not specified.
  #   # If so, the assert_equal test should be modified accordingly.

  #   def to_array(s)
  #     a = s.scan(/(\d+)([a-z]*)/).flatten 
  #     a.each_with_index.map {|e,i| i.even? ? e.to_i : e!="" ? e : i==a.length-1 ? (?a.ord-1).chr : (?z.ord+1).chr}
  #   end

  #   return self.sort do |a,b|
  #     am, bm = to_array(a), to_array(b)
  #     len = [am.length, bm.length].min
  #     cmp = 0
  #     am[0,len].zip(bm[0,len]).each {|pair| break if (cmp = (pair.first<=>pair.last)) != 0}
  #     cmp
  #   end
  # end

end

filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

filenames.version_sort

