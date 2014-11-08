require "./food_trucks"

class FoodTruckChoicePolicy
  def self.choose_based_on_day?(day)
    day = day.to_i
    Foodtruck.constants.select do |constant|
      Foodtruck.const_get(constant).days_available.include?(day)
    end
  end
end

puts "\n\nPick a Foodtruck for me"
puts "\nPick a day of the week: 1=Monday,2=Tuesday,3=Wednesday,4=Thursday,5=Friday"
day_of_week = gets.chomp.to_i

puts "The food trucks on #{day_of_week} are:"
puts FoodTruckChoicePolicy.choose_based_on_day?(day_of_week).join(", ")


puts "\n\nFoodtruck options are: #{Foodtruck.constants.join(", ")}"
puts "Which truck do you want to choose from?"
name = gets.chomp
truck = Foodtruck.const_get(name.to_s)

puts "\nYou chose: #{name}"
puts "  Goleg? #{truck.goleg?}"
puts "  Fast? #{truck.fast?}"
puts "  Low Price? #{truck.low_price?}"
puts "  Available #{truck.days_available.join(", ")}"
