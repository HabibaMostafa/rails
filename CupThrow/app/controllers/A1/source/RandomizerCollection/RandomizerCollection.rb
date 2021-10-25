class RandomizerCollection
	def count
		@items.length
	end

	def store(r)			
		raise ArgumentError, "argument #{r} is not  a randomizer" unless r.is_a? Randomizer
		@items << r
		self
	end

	def store_all(randomizers)
		randomizers.each do |item|
			self.store item
		end
	end

	# gets each randomizer in rc & stores items in the new collection, emptying rc by the end
	def move_all(rc) 	
		self.store_hand rc.empty_to_hand
		self
	end

	def store_hand(items)
		while (item = items.next) != nil
			self.store(item) 
		end
		self
	end

	# returns a Hand of all items in the collection and resets the collection (sets it to empty)
	def empty_to_hand
		hand = Hand.new
		@items.each { |item| hand.store(item) }   # copies references of our items to hand
		reinitialize                              # eliminates reference to our former items in us
		hand
	end

	def empty
		self.empty_to_hand
	end

	def reset
		@items.each { |item| item.reset }
		self
	end

	# change items for clones; the item content is the same but now resides elsewhere in memory 
	# the originals items are discarded from this object, but if they reside elsewhere
	# in another container/object, they are left alone and untouched
	def dup_items							
		@items = @items.map { |it| it.dup }
		self
	end

	def duplicate 				# a deep copy
		sd = self.dup
		sd.dup_items
	end

	def initialize(it = [])
		@items = it
	end

	private

	def reinitialize
		@items = []
	end
end
