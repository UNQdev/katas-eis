class Ship

	attr_accessor :location

	def initialize(positions)
		@location = []
		positions.each do | position |
			@location << [position, false]
		end
	end

	def somebody_shot(shoot_position)
	end

	def got_hit?(shoot_position)
	end

	def sank?
	end

end