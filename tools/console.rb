require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("a", "aa", 1, "aaa")
cult2 = Cult.new("b", "bb", 2, "bbb")
cult3 = Cult.new("c", "cc", 1, "ccc")

follower1 = Follower.new("d", 10, "ddd")
follower2 = Follower.new("e", 12, "eee")
follower3 = Follower.new("f", 14, "fff")

blood1 = Bloodoath.new(cult1, follower1)
blood2 = Bloodoath.new(cult2, follower1)
blood3 = Bloodoath.new(cult1, follower2)
blood4 = Bloodoath.new(cult3, follower2)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
