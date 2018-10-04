def game()
	level = 0

	while (level != -1 && level != 10)
		puts "Appuie sur enter pour lancer le dés ou taper exit pour quitter le jeu"
		user_input = gets.chomp
		if user_input != 'exit'
			score = rand (1..6)
			puts "score du dès: #{score}"
			if score == 1
				level -= 1
			elsif (score == 5 || score == 6)
				level += 1
			end
			puts "Vous êtes sur la marche #{level}"
		else
			exit
		end
	end
	if level == -1
		puts "Vous avez perdu"
	elsif level == 10
		puts "Vous avez gagné"
	else
		puts "error"
		exit
	end
end

puts "Bienvenue dans le jeu de l'escalier! Le principe est simple: Il y a 10 marches 
et tu dois tous les gravir pour gagner. Pour cela c'est simple lance le dès.\n
1 : tu descends d'une marche
2, 3, 4 : rien ne se passe
5, 6: tu montes d'une marche\n
Ready to go? 1 pour oui, 0 pour sortir du jeu"

play = gets.chomp.to_i

if (play == 1)
	game()
else
	exit
end





