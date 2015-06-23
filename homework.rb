#Ruby Objects 1
puts "Ruby Objects 1"
puts ""

class Calculator
	def initialize(num1=0,num2=0)
		@num1 = num1
		@num2 = num2
	end
	
	def add
		@num1 + @num2
	end
	
	def subtract
		@num1 - @num2
	end
	
	def multiply
		@num1 * @num2
	end
	
	def divide
		if (@num2 == 0)
			return "Can't divide by zero"
		else
			return @num1 / @num2
		end
	end
end
puts "New calculator created with values 30 and 3"
calculator = Calculator.new(30,3)

puts "Add: #{calculator.add}"
puts "Subtract: #{calculator.subtract}"
puts "Multiply: #{calculator.multiply}"
puts "Divide: #{calculator.divide}"

puts ""

#Ruby Objects 2
puts "Ruby Objects 2"
puts ""

class Elevator
	
	def initialize(top_floor)#Elevator wont be able to higher than the top floor that is set here
		@current_floor = 1
		@top_floor = top_floor
	end
	
	attr_reader :current_floor
	
	def go_up_by(number_of_floors)
		if (@current_floor + number_of_floors) > @top_floor
			puts "The top floor is #{@top_floor}. Please try again."
		else
			@current_floor += number_of_floors
		end
	end
	def go_down_by(number_of_floors)
		if (@current_floor - number_of_floors) < 1
			puts "The lowesr floor is 1. Please try again."
		else
			@current_floor -= number_of_floors
		end
	end
	def greet(giveFloor=nil)
		print "Hello insect!"
		print" You are currently on floor #{@current_floor}" if giveFloor
		puts ""
	end
	def play_elevator_music
		puts "*flute solo*"
	end
end

north_elevator = Elevator.new(10)
south_elevator = Elevator.new(10)

puts "North Elevator"
north_elevator.go_up_by(3)
north_elevator.greet("what floor?")
north_elevator.go_down_by(5)
north_elevator.greet
north_elevator.play_elevator_music

puts ""

puts "South Elevator"
south_elevator.go_up_by(7)
south_elevator.greet("what floor?")
south_elevator.go_down_by(3)
south_elevator.greet
south_elevator.play_elevator_music