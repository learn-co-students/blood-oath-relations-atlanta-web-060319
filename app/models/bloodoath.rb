class Bloodoath
    @@all = []

    def initialize(cult, follower, date = "2001-01-01")
        @cult = cult
        @follower = follower
        @date = date
        @@all << self

    end

    def self.all
        @@all
    end



end
