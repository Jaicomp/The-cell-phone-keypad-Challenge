require_relative "CellPhoneKeypad"

initialCell = {'x' => 3, 'y' => 1}
cellPhoneKeypad = CellPhoneKeypad.new(initialCell)
cellPhoneKeypad.calculateTimeToTravelToCell(55)

asd = cellPhoneKeypad.getCell(0)
p asd
=begin
puts "Enter the number of test cases: "
num_test_cases = Integer(gets)

for i in 1..num_test_cases
	text = gets
	
	

	puts "#{text}"

end

=end
