class Inventory
	def initialize(type,price=0,quantity=0)
		@type=type.capitalize
		@price=price
		@quantity=quantity
	end
	def sold(skill,desire)
		if(skill>=desire) then
		@quantity=@quantity-1
		puts "The sale was successful!"
		else 
		puts "The sale fell through. #{Salesmen.name} has ended!"

		end

	end
	def new_inventory
		@quantity=@quantity+1
	end
	def to_s
		puts "#{@quantity} #{@type} starting at $#{@price}!!"
	end
			def newinventory(leave="no")
		while leave!="yes" do
		puts "Please input new inventory model."
		puts "What is the type?"
		type=gets.chomp
		puts "What is the price?"
		price=gets.chomp
		car=Inventory.new(type,price)
		@inventory.push(car)
		puts "Do you have more inventory to add? (yes,no)"
		leave=gets.chomp
		end
	end
end