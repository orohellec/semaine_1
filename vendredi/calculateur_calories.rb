WELSH = Hash.new
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3
WELSH[:Prix] = 15

FRITES = Hash.new
FRITES["Lipides"] = 15
FRITES["Glucides"] = 41
FRITES["Protéines"] = 3.4
FRITES[:Prix] = 4

BIERE = Hash.new
BIERE["Lipides"] = 0
BIERE["Glucides"] = 25
BIERE["Protéines"] = 4
BIERE[:Prix] = 5

@CALORIES = Hash.new
@CALORIES["Lipides"] = 9
@CALORIES["Glucides"] = 4
@CALORIES["Protéines"] = 4

PRIX = Hash.new
PRIX["WELSH"] = WELSH[:Prix]
PRIX["FRITES"] = FRITES[:Prix]
PRIX["BIERE"] = BIERE[:Prix]

MENU = Hash.new
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE
MENU["PRIX"] = PRIX

def weight_watchers(meal)
    result = meal["Lipides"] * @CALORIES["Lipides"] +
             meal["Glucides"] * @CALORIES["Glucides"] +
             meal["Protéines"] * @CALORIES["Protéines"]
    puts "#{result} calories"
    return result
end

def meal_weight_watchers(menu)
  sum_calories = 0
  menu.values.each do |test|
    if menu.key(test) != "PRIX"
      print "#{menu.key(test)}: "
      sum_calories += weight_watchers(test)
    end
  end
  puts "\nTotal calories: #{sum_calories}"
end

def meal_price(menu)
  puts "Le prix du menu: #{menu["PRIX"].values.sum} €"
end

meal_weight_watchers(MENU)
meal_price(MENU)
