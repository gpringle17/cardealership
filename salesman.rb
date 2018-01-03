class Salesmen
	def initialize(name,streak=0)
		@name=name.capitalize
		@streak=streak
	end
	def sell
		@streak=@streak+1
	end
	def fail
		@streak=0
	end
	def self.from_csv(string)
		name, streak =string.split(',')
		new(name, Integer(streak))
	end
	def to_s
		puts "#{@name} has a current streak of #{@streak}."
	end
end