class Board

	def initialize()
		@board = [['-','-','-','-','-','-'], ['-','-','-','-','-','-'], ['-','-','-','-','-','-'], ['-','-','-','-','-','-'],
		 ['-','-','-','-','-','-'], ['-','-','-','-','-','-'] ]	
	end

	def board
		@board
	end
	def insert (colNum, turn)
	 	i=0
		6.times do
			print @board[i][colNum] 
		
			if @board[i][colNum]!='-'
			 	break 
			end
			puts i
				i=i+1
		end
        puts 'blaaaa   ' + i.to_s
		@board[i-1][colNum]=turn
	end

	def checkWinner ( turn )
		
	end
	
	# draw board
	def render
		
	end
	
end