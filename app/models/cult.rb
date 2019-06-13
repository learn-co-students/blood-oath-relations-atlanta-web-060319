class Cult
	attr_reader :name, :city, :year, :slogan
	@@all_cult = []
	
	def initialize(name, city, year, slogan)
		@name = name
		@city = city
		@year = year
		@slogan = slogan
		@@all_cult.push(self)
	end

	def self.all
		@@all_cult
	end

	def cult_list
		list = []
		Bloodoath.all.each {|bloodoath|
			if bloodoath.cult == self
				list.push(bloodoath.follower)
			end
		}
		list
	end

	def self.find_by_name(name)
		@@all_cult.find {|cult|
			cult.name == name
		}
	end

	def self.find_by_location(city)
		@@all_cult.select {|cult|
			cult.city == city
		}
	end

	def self.find_by_founding_year(year)
		@@all_cult.select {|cult|
			cult.year == year
		}
	end

end