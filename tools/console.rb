require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


jerry = Follower.new("jerry")
devil = Cult.new("devil")
oath1 = Bloodoath.new(devil, jerry, "2001-1-1")






binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
