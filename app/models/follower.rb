class Follower
    @@all = []

    def initialize(full_name)
        @full_name = full_name
        @@all << self
    end

    def self.all
        @@all
    end
    

end
