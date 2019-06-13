class Follower
	attr_reader :name, :age, :life_motto
	@@all_follower = []

	def initialize(name, age, life_motto)
		@name = name
		@age = age
		@life_motto = life_motto
		@@all_follower.push(self)
	end

	def cults
		cults = []
		Bloodoath.all.each {|bloodoath|
			if bloodoath.follower == self
				cults.push(bloodoath.cult)
			end
		}
		cults
	end

	def join_cult(cult)
		Bloodoath.new(cult, self)
	end

	def self.all
		@@all_follower
	end

	def self.of_a_certain_age(age)
		@@all_follower.select {|follower|
			follower.age >= age
		}
	end


end