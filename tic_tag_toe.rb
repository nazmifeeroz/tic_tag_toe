# tic-tag-toe game

puts "Play against player(p) or computer(c)?"
pc = gets.chomp

play = "y"

while play == "y" do

	a = []

	(1..9).each { |n| a[n-1] = n }

	play = "1"
	game = 0
	error = ""
	allmoves = 0

	#ask for user name

	while game <= 9 do 

		puts "\e[H\e[2J"
		puts "\tTic-Tag-Toe"
		puts "\t-----------\n\n"
		puts "\t #{a[0]} | #{a[1]} | #{a[2]}"
		puts "\t ---------"
		puts "\t #{a[3]} | #{a[4]} | #{a[5]}"
		puts "\t ---------"
		puts "\t #{a[6]} | #{a[7]} | #{a[8]}\n\n"
		puts "Player #{play} Select a number:"
		puts error

		if a[0] == "X" && a[3] == "X" && a[6] == "X"
			puts "Player X wins!" 
			break 
		elsif a[0] == "X" && a[1] == "X" && a[2] == "X"
			puts "Player X wins!" 
			break 
		elsif a[0] == "X" && a[4] == "X" && a[8] == "X"
			puts "Player X wins!" 
			break 
		elsif a[1] == "X" && a[4] == "X" && a[7] == "X"
			puts "Player X wins!" 
			break 
		elsif a[3] == "X" && a[4] == "X" && a[5] == "X"
			puts "Player X wins!" 
			break 
		elsif a[4] == "X" && a[6] == "X" && a[2] == "X"
			puts "Player X wins!" 
			break 
		elsif a[5] == "X" && a[8] == "X" && a[2] == "X"
			puts "Player X wins!" 
			break 
		elsif a[6] == "X" && a[7] == "X" && a[8] == "X"
			puts "Player X wins!" 
			break 
		end

		if a[0] == "o" && a[3] == "o" && a[6] == "o"
			puts "Player o wins!" 
			break 
		elsif a[0] == "o" && a[1] == "o" && a[2] == "o"
			puts "Player o wins!" 
			break 
		elsif a[0] == "o" && a[4] == "o" && a[8] == "o"
			puts "Player o wins!" 
			break 
		elsif a[1] == "o" && a[4] == "o" && a[7] == "o"
			puts "Player o wins!" 
			break 
		elsif a[3] == "o" && a[4] == "o" && a[5] == "o"
			puts "Player o wins!" 
			break 
		elsif a[4] == "o" && a[6] == "o" && a[2] == "o"
			puts "Player o wins!" 
			break 
		elsif a[5] == "o" && a[8] == "o" && a[2] == "o"
			puts "Player o wins!" 
			break 
		elsif a[6] == "o" && a[7] == "o" && a[8] == "o"
			puts "Player o wins!" 
			break 
		end

		if game == 9 
			puts "Draw!" 
			break 
		end

		choice = gets.chomp.to_i
		error = ""
		check = 9

		(0..8).each do |m|

			if choice == a[m]
				if play == "1" then a[m] = "X" else a[m] = "o" end
				if play == "1" then play = "2" else play = "1" end
				game += 1
			else
				check = check - 1
			end

			if check >= 1 
				error = "" 
			else
				error = "Invalid Choice!" 
			end
		end
	end
	puts "play again? (y/n)"
	play = gets.chomp
end