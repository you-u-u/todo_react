=begin
n = gets.chomp.to_i
categories = { 0 => 0, 1 => 0, 2 => 0, 3 => 0 }

n.times do 
  k, p = gets.split.map(&:to_i)
  categories[k] += p
  p categories
end

point_rate = {0=>5, 1=>3, 2=>2, 3=>1 }

points = categories.sum{|category, total| total/100*point_rate[category]}
puts points

=end







n= gets.chomp.to_i
mer = {0=>0,1=>0,2=>0,3=>0}

n.times do 
  k, p = gets.split.map(&:to_i)
  mer[k] += p
end
p mer
point_rate = {0=>5,1=>3,2=>2,3=>1}

points = mer.sum {|k, p| p*point_rate[k]}


puts points