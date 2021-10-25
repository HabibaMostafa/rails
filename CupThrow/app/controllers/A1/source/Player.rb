class Player
	# returns the name of the player (does not set it)
	def name
		@name
	end

	# stores the item in the player’s bag
	def store(item)
		@bag.store item
	end

	# gets each item in supplied container and stores it in the player’s bag
	def move_all(container)
		@bag.move_all container.empty_to_hand
	end
	
	# loads items from the player’s bag to the player’s cup based on the description
	def load(description, amt=:all)
		@cup.load @bag.select(description, amt)
	end

	# throws the cup, stores and returns the result
	def throw(the_throw = nil)
		the_throw = @cup.throw      # throws the cup
		@throws << the_throw        # stores the throw internally
		@bag.move_all @cup
		the_throw                   # returns the throw
	end

	# clears all stored throws
	def clear
		@throws = []
	end

	# calls tally(description) on each stored throw
	#    and returns the combined values as an array
	def tally(descr = {})		
		@throws.map { |a_throw| a_throw.description(descr).tally }
	end

	# calls sum(description) on each stored throw
	# and returns the combined values as an array
	def sum(descr = {})
		@throws.map { |a_throw| a_throw.description(descr).sum }
	end

	# returns the report from the most recent throw  
	def results(descr = {})		
		@throws.last.description(descr).results
	end

	def initialize(the_name)
		raise ArgumentError, "supplied name #{the_name} should be a string, but is a #{the_name.class}" \
		  unless the_name.is_a? String
		@name = the_name
		@bag = Bag.new
		@cup = Cup.new
		@throws = []
	end
end
