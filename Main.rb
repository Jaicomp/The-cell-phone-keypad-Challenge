require_relative "Cell"
require_relative "Board"
require_relative "CellPhoneKeypad"

initialCell = Cell.new(0,0)

board = Board.new


lettersList = [' ', 'abc', 'def', 'ghi','jkl','mno', 'pqrs', 'tuv', 'wxyz', '', '', 'U']
numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, nil, 0, nil]


# Fill Game's Board
numColumn = 0
numRow = 0
maxNumRows = lettersList.length / 3
while numRow < maxNumRows
	row = []
	board.addRow(row)
	for j in 0..2
		column = {'letters' => [], 'number' => numbersList[numColumn]}
		for k in 0..lettersList[numColumn].length-1
			column['letters'].push lettersList[numColumn][k]
		end
		board.addColumn(numRow, column)
		numColumn += 1
	end
	numRow += 1
end

#Inicial cell
initialCell = {'x' => 1, 'y' => 3}


puts "Enter your text: "
num = Integer(gets)
dstCell = board.getCellFromCharacter(num)
#p dstCell
board.calculateTimeToTravelToCell(initialCell, dstCell)



