


def odd_pyramide(user_input)
	number_floor = user_input
	if (user_input <= 0 || user_input > 100)
		puts "Merci de saisir un entier positif compris entre 1 et 100"
		exit
	end
	i = 0
	number_symbol = 1
	spaces = (number_floor - 1) * 2
	middle_space = spaces/2
	while (i < number_floor)
		middle_space.times {print ' '}
		number_symbol.times {print '#'}
		middle_space -= 1
		number_symbol += 2
		i += 1
		puts ""
	end
end

def user_input
	print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? > "
	input = gets.chomp.to_i
	return input
end

	odd_pyramide(user_input)
