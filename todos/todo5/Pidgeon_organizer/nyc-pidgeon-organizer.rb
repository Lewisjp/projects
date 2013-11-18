# Work in progress



########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


pigeon_data_reorg = Hash.new 

pigeon_data[:gender][:male].each { |value| pigeon_data_reorg[value]={:gender => "male"} }
pigeon_data[:gender][:female].each { |value| pigeon_data_reorg[value]={:gender => "female"} }

temp = pigeon_data.each {a[value].merge!(b[:lives])}






puts pigeon_data_reorg.inspect 


=begin
#they over wrote the color 
temp = Hash.new
pigeon_data[:color][:purple].each { |value| pigeon_data_reorg[value] = { :color => "purple"} }
pigeon_data[:color][:grey].each { |value| pigeon_data_reorg[value] = { :color => "grey"} }
pigeon_data[:color][:white].each { |value| pigeon_data_reorg[value] = { :color => "white"} }
pigeon_data[:color][:brown].each { |value| pigeon_data_reorg[value] = { :color => "brown"} }



pigeon_data[:lives]["Subway"].each { |value| pigeon_data_reorg[value] = { :lives => "Subway"} }
pigeon_data[:lives]["Central Park"].each { |value| pigeon_data_reorg[value] = { :lives => "Central Park"} }
pigeon_data[:lives]["Library"].each { |value| pigeon_data_reorg[value] = { :lives => "Library"} }
pigeon_data[:lives]["City Hall"].each { |value| pigeon_data_reorg[value] = { :lives => "City Hall"} }
=end





# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }