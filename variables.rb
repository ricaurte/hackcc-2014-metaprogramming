require "./food_trucks"

puts "Inject stuff into the trucks!"

while true
  puts "What do you want to add?"
  p "variable name: "
  name = gets.chomp

  puts ""
  p "variable value: "
  value = gets.chomp

  puts "which truck to add to? #{Foodtruck.constants.join(", ")}"
  truck = Foodtruck.const_get(gets.chomp.to_s)

  truck.instance_variable_set("@#{name}", value)

  puts "#{truck} now has the following variables:"
  truck.instance_variables.each do |variable|
    puts "  #{variable} => #{truck.instance_variable_get(variable)}"
  end
end