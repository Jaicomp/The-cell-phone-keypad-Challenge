class CellPhoneKeypad
	def initialize(initialCell)
		lettersList = [' ', 'abc', 'def', 'ghi','jkl','mno', 'pqrs', 'tuv', 'wxyz', '', '', 'U']
		numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, nil, 0, nil]
		
		@initialCell = {'x' => initialCell['x'], 'y' => initialCell['y']}
		@keyPad = []
		for i in 0..lettersList.length-1
			
			row = []
			
			for j in 0..2

				cell = {'letters' => [], 'number' => numbersList[i]}
				for k in 0..lettersList[i].length-1
					cell['letters'].push lettersList[i][k]
				end
				row.push cell
			end	
		
			@keyPad.push row
			
		end
		
	end

	public

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

		pathSrcToDst = []

		openList = []
		closedList = []

		openList.push @initialCell
		

		if openList[0] != dstCell
			openList[0]
		end

		puts "OKI"
		

		#	A.push initialCell + heuristic
		#
		#	while A[0] != destinationCell
		#
		#		c.push A
		#		A.shift 
		#
		#		addChild(Not in close)
		#		sortChildByHeruristic
		#end
		#

	end
	
end
