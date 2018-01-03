require_relative 'salesman'
require_relative 'inventory'
require_relative 'customer'
require 'csv'
class Dealership
	def initialize(title)
		@title=title
		@salesmen=[]
		@customers=[]
		@inventory=[]
	end
	def add_inventory(a_inventory)
		@inventory.push(a_inventory)
	end
	def sell_inventory(a_inventory)
		@inventory.pop(a_inventory)
	end
	def hire_salesman(a_salesman)
		@salesmen.push(a_salesman)
	end
	def fire_salesman(a_salesman)
		@salesmen.pop(a_salesman)
	end
	def add_customer(a_customer)
		@customer.push(a_customer)
	end
	def blown_customer(a_customer)
		@customer.pop(a_customer)
	end

	def load_inventory(from_file)
			puts Dir.getwd
			CSV.foreach(from_file) do |row|
				inventory=Inventory.new(row[0], row[1].to_i)
				add_inventory(inventory)
			end
	end
	def load_salesmen(from_file)
		puts Dir.getwd
		CSV.foreach(from_file) do |row|
			salesman=Salesmen.new(row[0], row[1].to_i)
			hire_salesman(hire_salesman)
			end
	end
