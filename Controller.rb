require_relative "Board.rb" 
class Controller

	def initialize()
		@playingBoard =Board.new
	end
	
	def playingBoard
	@playingBoard
	end	
end

game=Controller.new
turn='O'
while true do
	STDOUT.flush
	colNum = gets.chomp
	if turn == 'O'
	 	turn='X'
	 elsif turn == 'X'
	 	turn='O'
	 end
	row, colNum = game.playingBoard.insert(colNum.to_i,turn)
	for i in 0..5
		for j in 0..5
			print game.playingBoard.board[i][j]
		end
		puts ''
	end
	if game.playingBoard.checkWinner(row, colNum) == true
		break; 
	end
end