require "./food_trucks"

class Foodtruck
  class << self
    def method_missing(method_name, *args, &block)
      class_name = ActiveSupport::Inflector.camelize(method_name)
      if self.const_defined?(class_name)
        self.const_get(class_name)
      else
        super
      end
    end
  end
end

puts "Foodtruck has now been modified to have easy methods to access the trucks!"

puts "which truck? #{Foodtruck.constants.map{|t| ActiveSupport::Inflector.underscore(t)}.join(", ")}"
name = gets.chomp

truck = Foodtruck.send name


puts "\nYou chose: #{name} but class #{truck} was fetched!"
puts "  Goleg? #{truck.goleg?}"
puts "  Fast? #{truck.fast?}"
puts "  Low Price? #{truck.low_price?}"
puts "  Available #{truck.days_available.join(", ")}"
