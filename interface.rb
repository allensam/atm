require 'csv'
require_relative 'user'
def interface
	puts """
	Welcome to the atm interface please enter you pin:\n
	"""
	inpin = $stdin.gets.chomp
	name = nil

	CSV.foreach("info.csv") do |row|

		user = row[0]
		usrpin = row[1]
		usrbalence = row[2]

		if usrpin == inpin
	    	user = User.new(user,usrpin,usrbalence)
	 	end
	end

	puts "Hello #{name}, what would you like to do today?\n"
	puts "1: Deposit\n2: Withdraw\n3: Quickcash\n4: Exit\n"

	option_main = $stdin.gets.chomp
	def which_to_run_main(n)
		if n == "1"
			User.deposit
		elsif n == "2"
			User.withdraw
		elsif n ==  "3"
			User.quickcash
		else
			puts "Thanks for using!"
			interface
		end
	end
	which_to_run_main(option_main)
end
