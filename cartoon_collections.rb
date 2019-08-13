def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    print "#{index+1}#{dwarf}"
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.collect do |planeteer|
    planeteer.capitalize+"!"
  end
end

def long_planeteer_calls(asst_calls)
  asst_calls.any?{|call| call.length > 4}
end

def find_the_cheese(food_menu)
  cheese_types = ["cheddar", "gouda", "camembert"]
  i = 0
  while i < food_menu.length do
    if food_menu.include?(cheese_types[i])
      return food_menu.detect{|menu_item| menu_item == cheese_types[i]}
    else
      i += 1
    end
  end
end

#a better, simpler manner
#we are going to find the menu_item that includes a cheese_types
#can also switch food_menu and cheese_types
food_menu.find do |menu_item|
  cheese_types.include?(menu_item)
end
