module Board
	def initialize
		board_creator
		show_board
		#@@board[2][2] = "O"	
	end
	
	def show_board
		@@board.each do |row| 
			row.each do |line| 
				case line
				when nil 		then print "."
				when true		then print "X"
				when false 	then print "O"
				end
			end
			puts
		end
	end

	private
	def board_creator
		@@board = []
		3.times do |j|								#3 rows
			row = []
			3.times { row << nil }			#3 columns
			@@board << row
		end
	end
end

module Players
	def change_player
		@@player ||= false
		case @@player
		when true 	then @@player = false
		when false 	then @@player = true
		end
		puts "it's #{@@player? "player 1" : "player 2"}'s turn"
	end
end

class Tictac
	#implement players
	#implement score
	#implement interface
	include Board
	include Players
	def initialize
		puts "here is the board:"
		super
		puts "let's go"
		@move_count = 0
	end

	def move(x,y)
		@move_count += 1
		puts "*" * 30
		puts "\tturn #{@move_count}"
		change_player
		if @@board[x][y] == nil
			 @@board[x][y] = @@player ? true : false
		else
			puts "\nyou cannot do this move\n"
		end
		show_board
	end

	def score
	end

end

uno = Tictac.new
#uno.move(2,2)
#uno.move(2,2)
uno.move(0,2)
uno.move(1,2)
uno.move(2,2)