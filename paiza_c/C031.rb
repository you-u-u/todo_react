n =gets.to_i
cities = {}

n.times do
  city, different = gets.split
  cities[city] = different.to_i
end

location, time = gets.split
hh, mm = time.split(":").map(&:to_i)
p location , time
time_dif = cities[location]

cities.each do |city, different|
  output_time = hh + cities[city] - time_dif
  output_time %= 24
  puts format("%02d:%02d", output_time, mm)
end
