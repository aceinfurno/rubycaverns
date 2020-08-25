class Menu
def initialize 
	mainMenu
end
def mainMenu


case gets.strip
when "newGame"
	CreateCharacter.new
	
when "help"
	puts ''
	puts "we like to use camelCase in these parts"
	puts "match what's on the screen and you'll be clean!"
	puts ''
	print "what say ye'?"
	Menu.new

when "quit"
	exit
else 
	puts 'sorry, try again!'
	Menu.new
	
end
end
end

class Mainmenu
	def initialize
		gameMenu
	end
	
	def gameMenu
		case gets.strip
		when 'newGame'
			puts 'hi'
			Mainmenu.new
		when 'help'
			puts 'help'
			Mainmenu.new
		when 'checkChar'
		$mainChar.checkStats
			Mainmenu.new
		else
			Mainmenu.new
		end
	end
end
class TownWelcome
	def initialize
	puts "welcome to town!
		
		While in town, feel free to look around!
		
		feel free to ask for help by typing \'help\' in the prompt!
		
		enterDungeon : shop : manageInventory : manageCharacter : "
	continue
	end
	def continue
	Mainmenu.new
	end
end
class CreateCharacter
	def initialize
		nameChar
		TownWelcome.new 
	end
	
	def nameChar
		puts "hi, it is nice to meet you, but before we get started

i would like to get to know more about you...

What's your name?"
		charName = gets.strip
		puts "what kind of character would you like to play as?
we have a 'stealthy' class, a 'brute' class, and a 'spellster' class!"
		case gets.strip
			when "stealthy"
			$mainChar = Stealthy.new("#{charName}")
			TownWelcome.new
			when "brute"
			$mainChar = Brute.new("#{charName}")
			TownWelcome.new
			when "spellster"
			$mainChar = Spellster.new("#{charName}")
			TownWelcome.new
			else
			puts "uh oh, that's not an available class! try typing one of the 'names' listed!"
			CreateCharacter.new
		
		end
	end
end