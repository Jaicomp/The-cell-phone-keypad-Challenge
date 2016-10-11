require_relative "cell"
require_relative "board"
require_relative "CellPhoneKeypad"

initialCell = Cell.new(0,0)

board = Board.new


lettersList = [' ', 'abc', 'def', 'ghi','jkl','mno', 'pqrs', 'tuv', 'wxyz', '', '', 'U']
numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, nil, 0, nil]

for i in 0..lettersList.length-1
	row = []
	board.addRow(row)

end




=begin
initialCell = {'x' => 3, 'y' => 1}
cellPhoneKeypad = CellPhoneKeypad.new(initialCell)

dstCell = cellPhoneKeypad.getCellFromCharacter(ARGV[0].to_i)

asd = cellPhoneKeypad.calculateTimeToTravelToCell(dstCell)
p asd


puts "Enter the number of test cases: "
num_test_cases = Integer(gets)

for i in 1..num_test_cases
	text = gets
	
	

	puts "#{text}"

end

=end
