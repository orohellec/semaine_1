def password_verification()
	puts "Veuillez confirmer votre mot de passe"
	check_password = gets.chomp
	if (@user_password == check_password)
		puts "Votre nouveau mot de passe à bien été enregistré"
	else
		puts "Les deux mots de passe ne sont pas identiques"
		define_password()
	end
end

def define_password()
	puts "Veuillez tapez votre mot de passe"
	@user_password = gets.chomp
	password_verification()
end

def perform()
	define_password()
end

perform()
