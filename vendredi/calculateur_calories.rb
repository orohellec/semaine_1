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
  if meal["Lipides"]  #to exclude element :Prix in MENU
    result = meal["Lipides"] * @CALORIES["Lipides"] +
             meal["Glucides"] * @CALORIES["Glucides"] +
             meal["Protéines"] * @CALORIES["Protéines"]
    puts "Il y a #{result} calories dans ce plat"
  end
end

def meal_weight_watchers(menu)
  menu.values.each do |test|
    if menu.key(test) != "PRIX"
     print "#{menu.key(test)} "
     weight_watchers(test)
    end

  end
end

def meal_price(menu)
  puts "Le prix du menu: #{menu["PRIX"].values.sum} €"
end

weight_watchers(WELSH)
puts MENU
meal_price(MENU)
meal_weight_watchers(MENU)
