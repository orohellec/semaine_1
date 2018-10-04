def say_hello(first_name)
	puts "hello #{first_name}"
end

print "Quel est votre prénom? > "
first_name = gets.chomp
say_hello(first_name)
