secret = "There's money in the banana stand."
puts secret.downcase!

step_1 = secret.reverse!
puts step_1

step_2 = step_1.gsub!("a", "1a1")
puts step_2

step_3 = step_2.gsub!("b", "1a0")
puts step_3

step_4 = step_3.gsub!("c", "0a1")
puts step_4

=begin
step_5 = step_4.gsub!("d", "0a0")
puts step_5

step_6 = step_5.gsub!("e", "1b1")
puts step_6

step_7 = step_6.gsub!("f", "1b0")
puts step_7

step_8 = step_7.gsub!("g", "0b1")
puts step_8

step_9 = step_8.gsub!("h", "0b0")
puts step_9

step_10 = step_9.gsub!("i", "0c0")
puts step_10

step_11 = step_10.gsub!("j", "1c1")
puts step_11

step_12 = step_11.gsub!("k", "0c1")
puts step_12

step_13 = step_12.gsub!("l", "1c0")
puts step_13

step_14 = step_13.gsub!("m", "1d1")
puts step_14

step_15 = step_14.gsub!("n", "1d0")
puts step_15

step_16 = step_15.gsub!("o", "0d1")
puts step_16

step_17 = step_16.gsub!("p", "0d0")
puts step_17

step_18 = step_17.gsub!("q", "0e0")
puts step_18

step_19 = step_18.gsub!("r", "1e1")
puts step_19

step_20 = step_19.gsub!("s", "1e0")
puts step_20

step_21 = step_20.gsub!(" ", "0e1")
puts step_21

step_22 = step_21.gsub!("u", "1f1")
puts step_22

step_23 = step_22.gsub!("v", "0f0")
puts step_23

step_24 = step_23.gsub!("w", "1f0")
puts step_24

step_25 = step_24.gsub!("x", "0f1")
puts step_25

step_26 = step_25.gsub!("y", "1g1")
puts step_26

step_27 = step_26.gsub!("z", "0g0")
puts step_27

step_28 = step_27.gsub!("t", "1g0")
puts step_28

step_29 = step_30.gsub!(".", "0g1")
puts step_29

puts "Hello"


=end