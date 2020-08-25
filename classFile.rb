class Hero
	attr_accessor :name, :hp, :str, :dex, :con, :int, :wis, :cha
	
	def initialize(name, hp=10, str=10, dex=10, con=10, int=10, cha=10)
		@name = name
		@hp = 10
		@str = 10
		@dex = 10
		@con = 10
		@int = 10
		@cha = 10
	end
	def checkStats
	puts " Our hero's name is #{@name},
	they have #{@hp} HP,
	their strength is #{@str},
	their dexterity is #{@dex},
	their constitution is #{@con},
	their inteligence is #{@int},
	and their charisma is #{@cha}!"
	end
end
class Stealthy <  Hero 
	def initialize(dex=16, int=12, cha=14)
		super
		@dex = 16
		@int = 12
		@cha = 14
		
	end
end
class Brute < Hero
	def initialize(hp=12, str=16, con=14)
		super
		@hp = 12
		@str = 16
		@con = 14
		
	end
end
class Spellster <  Hero
	
	def initialize(dex=14, con=12, int=16)
		super
		@dex = 14
		@con = 12
		@int = 16
		
	end
end



