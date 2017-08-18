# (1..9).each do |n|

# 	puts " #{num[n]} | "

# end

a = []

(1..9).each { |n| a[n-1] = n }

play = "1"
game = 1
error = ""

while game == 1 do 

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
	choice = gets.chomp.to_i
	error = "test"
	check = 0
	(0..8).each do |m|

		if choice == a[m]
			if play == "1" then a[m] = "X" else a[m] = "o" end
			if play == "1" then play = "2" else play = "1" end
			check = 9
		else
			check = check - 1
		end
		if check >= 1 then error = "" else error = "Invalid Choice!" end
	end

end
