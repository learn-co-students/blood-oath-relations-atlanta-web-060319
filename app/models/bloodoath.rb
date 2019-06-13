class Bloodoath
	attr_reader :cult, :follower
	@@all_bloodoath = []

	def initialize(cult, follower)
		@cult = cult
		@follower = follower
		@date = Time.now.strftime("_%Y-%m-%d_")
		@@all_bloodoath.push(self)
	end

	def self.all
		@@all_bloodoath
	end
end