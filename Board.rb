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
			if @board[i][colNum]!='-'
				break 
			end
			i=i+1
		end
		@board[i-1][colNum]=turn
		return i-1, colNum
	end

	def checkWinner ( row, colNum)
		r = row;
		c= colNum;
		turn = @board[row][colNum]
		count=1;
		for i in 1..3
			# horizontal -right
			if (colNum + i ) < 6
				if @board[row][colNum+i] == turn
					count +=1;
				else
					break;
				end
			end
		end	
		for i in 1..3
			# horizontal -left
			if (colNum - i ) > -1
				if @board[row][colNum-i] == turn
					count +=1;
				else 
					break;
				end
			end
		end	
		if checkCount(count, turn)
			return true;
		end
		
		count = 1;
		for i in 1..3
			# vertical -down
			if (row + i ) < 6
				if @board[row+i][colNum] == turn
					count +=1;
				else
					break;
				end
			end
		end	
		if checkCount(count, turn)
			return true;
		end
		count = 1;
		for i in 1..3
			# diagonal-right-up
			if (colNum+i) < 6 && (row-i) > -1
				if @board[row-i][colNum+i] == turn
					count+=1;
				else 
					break;
				end
			end
		end
		for i in 1..3
			# diagonal-left-down
			if (colNum-i) > -1 && (row+i) < 6
				if @board[row+i][colNum-i] == turn
					count+=1;
				else 
					break;
				end
			end
		end
		if checkCount(count, turn)
			return true;
		end

		count = 1;
		for i in 1..3
			# diagonal-left-up
			if (colNum-i) > -1 && (row-i) > -1
				if @board[row-i][colNum-i] == turn
					count+=1;
				else 
					break;
				end
			end
		end
		for i in 1..3
			# diagonal-right-down
			if (colNum+i) < 6 && (row+i) < 6
				if @board[row+i][colNum+i] == turn
					count+=1;
				else 
					break;
				end
			end
		end
		if checkCount(count, turn)
			return true;
		end
	end


	def checkCount (count, turn)
		if count >= 4
			puts turn + " has winned"
			return true;
		end
	end
	# draw board
	def render
		
	end
	
end