
	@roster=Array.new
	def newroster(leave="no")
		while leave!="yes" do
		puts "Please input Salesman's name."
		name=gets.chomp
		puts "What is their current streak?"
		streak=gets.chomp
		puts "From 1 to 10 how good are they at sales?"
		skill=gets.chomp
		person=Salesman.new(name,streak,skill)
		@roster.push(person)
		puts "Are there more salespeople to add? (yes,no)"
		leave=gets.chomp
		end
	end
	@potential=Array.new
	def newcustomer(leave="no")
		while leave!="yes" do
		puts "Please tell us about yourself."
		puts "What is your name?"
		name=gets.chomp
		puts "From 1 to 10 how ready are you to buy a car to day?"
		desire=gets.chomp
		puts "How much are you wanting to spend?"
		money=gets.chomp
		target=potential.new(name,desire,money)
		@potential.push(target)
		puts "Are there more customers? (yes,no)"
		leave=gets.chomp
		end
	end

	puts newinventory
	puts newroster
	puts newcustomer

	arr = []

	arr.each do |person|
		if person.name == "alan"
		puts person.name
	end