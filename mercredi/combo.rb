def say_hello(first_name, last_name)
	puts "hello #{first_name} #{last_name}"
end

print "Quel est votre prénom? > "
first_name = gets.chomp
print "Quel est votre prénom? > "
last_name = gets.chomp

say_hello(first_name, last_name)
