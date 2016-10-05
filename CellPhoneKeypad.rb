class CellPhoneKeypad
	def initialize(x, y)
		lettersList = [' ', 'abc', 'def', 'ghi','jkl','mno', 'pqrs', 'tuv', 'wxyz', '', '', '']
		numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, nil, 0, nil]
		
		@initialPosition = {'x' => x, 'y' => y}
		@keyPad = []
		for i in 0..lettersList.length-1
			
			cells = {'letters' => [], 'number' => numbersList[i]}
			for j in 0..lettersList[i].length-1
				cells['letters'].push lettersList[i][j]
			end
			
			@keyPad.push cells
			
		end
		
		p @initialPosition
		

	end
end
