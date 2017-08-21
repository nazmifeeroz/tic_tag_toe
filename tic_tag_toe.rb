# tic-tag-toe game
def winning_check(a, player_sym)

	if a[0] == player_sym && a[3] == player_sym && a[6] == player_sym
		return true
	elsif a[0] == player_sym && a[1] == player_sym && a[2] == player_sym
		return true
	elsif a[0] == player_sym && a[4] == player_sym && a[8] == player_sym
		 return true
	elsif a[1] == player_sym && a[4] == player_sym && a[7] == player_sym
		 return true
	elsif a[3] == player_sym && a[4] == player_sym && a[5] == player_sym
		 return true
	elsif a[4] == player_sym && a[6] == player_sym && a[2] == player_sym
		 return true
	elsif a[5] == player_sym && a[8] == player_sym && a[2] == player_sym
		return true
	elsif a[6] == player_sym && a[7] == player_sym && a[8] == player_sym
		return true
	end
end

puts "\e[H\e[2J"
puts "Play against player(p) or computer(c)?"
pc = gets.chomp

if pc == "p" 
	name = []
	play = "y"
	puts "\e[H\e[2J"
	print "Player 1 name: "
	name[0] = gets.chomp.upcase
	print "Player 2 name: "
	name[1] = gets.chomp.upcase

	while play == "y" do

		a = []

		(1..9).each { |n| a[n-1] = n }

		play = 0
		game = 0
		error = ""
		allmoves = 0

		while game <= 9 do 

			if winning_check(a, "X")
				puts "#{name[0]} wins!" 
				break 
			elsif winning_check(a, "o")
				puts "#{name[1]} wins!" 
				break 
			end

			if game == 9 
				puts "Draw!" 
				break 
			end

			puts "\e[H\e[2J"
			puts "\tIt's " + name[0] + " VS " + name[1] +"!!\n\n\n\n"

			puts "\t\t\t\tTic-Tag-Toe"
			puts "\t\t\t\t-----------\n\n"
			puts "\t\t\t\t #{a[0]} | #{a[1]} | #{a[2]}"
			puts "\t\t\t\t ---------"
			puts "\t\t\t\t #{a[3]} | #{a[4]} | #{a[5]}"
			puts "\t\t\t\t ---------"
			puts "\t\t\t\t #{a[6]} | #{a[7]} | #{a[8]}\n\n\n"
			puts "Enter 12 to quit. 11 to reset game.\n"
			puts "\n\n#{error}\n\n"
			print "#{name[play]} Enter Choice: "
			choice = gets.chomp.to_i
			

			
			error = ""
			check = 9

			(0..8).each do |m|

				if choice == a[m]
					if play == 0 then a[m] = "X" else a[m] = "o" end
					if play == 0 then play = 1 else play = 0 end
					game += 1

				elsif choice == 12
					puts "Are you sure you wish to quit? (y/n)"
					quitans = gets.chomp
					if quitans == "y" then exit else break end

				elsif choice == 11
					puts "Restart? (y/n)"
					restartansw = gets.chomp
					if restartansw == "y"
						(1..9).each { |n| a[n-1] = n }

						play = 0
						game = 0
						error = ""
						allmoves = 0
						break
					else 
						break
					end
						
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
# -----------------------------------player vs comp--------------------
else

	x = 0
	name = []
	cont = "y"
	puts "\e[H\e[2J"
	print "Player name: "
	name[0] = gets.chomp.upcase
	play = 0
	while cont == "y" do

		a = []

		(1..9).each { |n| a[n-1] = n }

		game = 0
		error = ""
		allmoves = 0

		while game <= 9 do 

			if a[0] == "X" && a[3] == "X" && a[6] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[0] == "X" && a[1] == "X" && a[2] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[0] == "X" && a[4] == "X" && a[8] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[1] == "X" && a[4] == "X" && a[7] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[3] == "X" && a[4] == "X" && a[5] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[4] == "X" && a[6] == "X" && a[2] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[5] == "X" && a[8] == "X" && a[2] == "X"
				puts "#{name[0]} wins!" 
				break 
			elsif a[6] == "X" && a[7] == "X" && a[8] == "X"
				puts "#{name[0]} wins!" 
				break 
			end

			if a[0] == "o" && a[3] == "o" && a[6] == "o"
				puts "Computer wins!" 
				break 
			elsif a[0] == "o" && a[1] == "o" && a[2] == "o"
				puts "Computer wins!" 
				break 
			elsif a[0] == "o" && a[4] == "o" && a[8] == "o"
				puts "Computer wins!" 
				break 
			elsif a[1] == "o" && a[4] == "o" && a[7] == "o"
				puts "Computer wins!" 
				break 
			elsif a[3] == "o" && a[4] == "o" && a[5] == "o"
				puts "Computer wins!" 
				break 
			elsif a[4] == "o" && a[6] == "o" && a[2] == "o"
				puts "Computer wins!" 
				break 
			elsif a[5] == "o" && a[8] == "o" && a[2] == "o"
				puts "Computer wins!" 
				break 
			elsif a[6] == "o" && a[7] == "o" && a[8] == "o"
				puts "Computer wins!" 
				break 
			end

			if game == 9 
				puts "Draw!" 
				break 
			end

			puts "\e[H\e[2J"
			puts "\tIt's " + name[0] + " VS Computer!!\n\n\n\n"

			puts "\t\t\t\tTic-Tag-Toe"
			puts "\t\t\t\t-----------\n\n"
			puts "\t\t\t\t #{a[0]} | #{a[1]} | #{a[2]}"
			puts "\t\t\t\t ---------"
			puts "\t\t\t\t #{a[3]} | #{a[4]} | #{a[5]}"
			puts "\t\t\t\t ---------"
			puts "\t\t\t\t #{a[6]} | #{a[7]} | #{a[8]}\n\n\n"
			puts "Enter 12 to quit. 11 to reset game.\n"
			puts "\n\n#{error}\n\n"
			puts "Computer chose #{x}"
			print "#{name[play]} Enter Choice: "

			if play == 0
				choice = gets.chomp.to_i

				error = ""
				check = 9

				(0..8).each do |m|

					if choice == a[m]
						if play == 0 then a[m] = "X" else a[m] = "o" end
						play = 1
						game += 1

					elsif choice == 12
						puts "Are you sure you wish to quit? (y/n)"
						quitans = gets.chomp
						if quitans == "y" then exit else break end

					elsif choice == 11
						puts "Restart? (y/n)"
						restartansw = gets.chomp
						if restartansw == "y"
							(1..9).each { |n| a[n-1] = n }

							play = 0
							game = 0
							error = ""
							allmoves = 0
							break
						else 
							break
						end
							
					else
						check = check - 1
					end

					if check >= 1 
						error = "" 
					else
						error = "Invalid Choice!" 
					end
				end
			elsif play == 1
				
				x = a.map {|x| Integer(x) rescue nil }.compact.sample
				(0..8).each do |r|
					if x == a[r] then a[r] = "o" end
				end
				play = 0
				game += 1
			end
			
		end
		puts "play again? (y/n)"
		cont = gets.chomp
	end

end