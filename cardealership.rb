require_relative '../lib/studio_game/game'
require_relative '../lib/studio_game/clumsy_player'
require_relative '../lib/studio_game/berserk_player'

deals = dealership.new("Bobs")
default_player_file = 
File.join(File.dirname(__FILE__), 'salesman.csv')
deals.load_salesman(ARGV.shift || default_salesman_file)
deals.load_salesman(ARGV.shift|| "salesman.csv")
default_player_file = 
File.join(File.dirname(__FILE__), 'inventory.csv')
deals.load_inventory(ARGV.shift || default_inventory_file)
deals.load_inventory(ARGV.shift|| "inventory.csv")
knuckleheads.add_player(klutz)
knuckleheads.add_player(berserker)
loop do 
	puts "\nIs there any new inventory you would like to manually enter? ('quit' to exit)"
	answer=gets.chomp.downcase
	case answer
	when /^\d+$/
		knuckleheads.play(answer.to_i)
	when 'quit','exit'
		knuckleheads.print_stats
		break
	else
		puts "Please enter a number or 'quit'"
	end
end
knuckleheads.save_high_scores