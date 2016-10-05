require_relative "CellPhoneKeypad"


cellPhoneKeypad = CellPhoneKeypad.new(3, 1)

puts "Enter the number of test cases: "
num_test_cases = Integer(gets)

for i in 1..num_test_cases
	text = gets
	
	

	puts "#{text}"
end


