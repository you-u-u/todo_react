require 'set'
n=gets.to_i
words = n.times.map { gets.chomp }
puts words
a= Set.new
puts a
n.times do |i|
  next if a.add?(words[n-1-i]) == nil
  puts words[n-1-i]
end