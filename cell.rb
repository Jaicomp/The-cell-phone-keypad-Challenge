class Cell
	
	attr_accessor :heuristic

	def initialize(x, y)
		@point = {'x' => x, 'y' => y}
		@heuristic = 0
		p @point
	end

end










