require 'csv'
require_relative 'user'
def interface
	puts """
	Welcome to the atm interface please enter you pin:\n
	"""
	inpin = $stdin.gets.chomp

	name = nil
	usrbalence = nil
	act_usrpin = inpin

	CSV.foreach("info.csv") do |row|

		usrpin = row[1]

		if usrpin == inpin
			define_vars(row[0], row[2])
	 	end
	end

	def define_vars(a,b)

		name = a
		usrbalence = b
	end

	puts "Hello #{name}, what would you like to do today?\n"
	puts "1: Deposit\n2: Withdraw\n3: Quickcash\n4: Exit\n"

	option_main = $stdin.gets.chomp
	def which_to_run_main(n)
		if n == "1"
			desam = $stdin.gets.chomp
			newbal = desam.to_f + usrbalence
			User.new(name,usrpin,newbal)
		elsif n == "2"
			e.withdraw
			User.new(name,usrpin,newbal)
		elsif n ==  "3"
			e.quickcash
			User.new(name,usrpin,newbal)
		else
			puts "Thanks for using!"
			interface
		end
	end
	which_to_run_main(option_main)

end
