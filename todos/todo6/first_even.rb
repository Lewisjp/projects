def first_even(numbers_check)
  #code goes here
  check_rd = 0
  answer_num = 0

  numbers_check.each do |x|
      if (x % 2 == 0) && (check_rd < 1)
  		check_rd += 1
  		answer_num += x
 	end
  end
    puts answer_num
end


first_even([300, 22, 1, 55, 42])
