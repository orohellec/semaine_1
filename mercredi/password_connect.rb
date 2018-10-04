def password_verification()
	puts "Veuillez confirmer votre mot de passe"
	check_password = gets.chomp
	if (@user_password == check_password)
		connect(true)
	else
		puts "Les deux mots de passe ne sont pas identiques"
		connect(false)
		return 0
	end
end

def define_password()
	puts "Veuillez tapez votre mot de passe"
	@user_password = gets.chomp
	password_verification()
end

def connect(boolean)
	if boolean == true
		puts "Vous êtes maintenant connecté"
	else
		puts "Vous n'êtes pas connecté"
		print "Tapez 1 pour recommencer, 0 pour quitter > "
		continue = gets.chomp.to_i
		if continue == 1
			define_password()
		else
			exit
		end
			
	end
end

def perform()
	define_password()
end

perform()

