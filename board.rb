class Board

	def initialize
		@board = []
	end

	def addRow(row)
		@board.push row
		p @board
	end

	def addColumn (numberRow, column)
		@board[numberRow].push column
		
	end
	




end
