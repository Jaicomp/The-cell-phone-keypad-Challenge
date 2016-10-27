class Board

	def initialize
		@board = []
	end

	public

	def addRow(row)
		@board.push row
	end

	def addColumn (numberRow, column)
		@board[numberRow].push column
	end
	
	def getCellFromCharacter(char)
	
		cell  = {}
		if char.is_a?(Fixnum)
			
			if char == 0
				cell['x'] = 2
				cell['y'] = 3
			else
				cell['x'] = (char - 1) % 3 
				cell['y'] = (char - 1) / 3
			end
			cell
		elsif char.is_a?(String)
			
		end
	
	end



	def calculateTimeToTravelToCell(srcCell, dstCell)

		pathSrcToDstCell = []

		openList = []
		closedList = []

		openList.push srcCell
		
		i = 0

		moveX = [0,1,1,1,0,-1,-1,-1]
		moveY = [-1,-1,0,1,1,1,0,-1]


		while openList[0] != dstCell

			closedList.unshift openList[0]
			openList.shift
			
			for i in 0..moveX.length-1
			
				newCell = {'x' => (closedList[0]['x'] + moveX[i]), 'y' => (closedList[0]['y'] + moveY[i])}
				
				if isInsideBoardRank(newCell) && !isInsideList(newCell, closedList)			
					openList.push newCell
				end

			end
			sortListOfCellsByHeuristic(openList, dstCell)		
			
		end

	end	



	def printBoard()
		p @board

	end

	private 

	def isInsideBoardRank(cell)
		return (cell['x'] >= 0 && cell['x'] < @board[0].length && cell['y'] >= 0 && cell['y'] < @board.length)

	end

	def isInsideList(cell, list)
		
		for i in 0..list.length-1
			if cell['x'] == list[i]['x'] && cell['y'] == list[i]['y']
				return true
			end 
		end
		return false

	end

	def sortListOfCellsByHeuristic(list, dstCell)
		#puts "oki"
		#calculateHeuristic(list[0], dstCell)

	end

	def calculateHeuristic(srcCell, dstCell)
		return (srcCell['x'] - dstCell['x']).abs.ceil + (srcCell['y'] -dstCell['y']).abs.ceil	

	end

end
