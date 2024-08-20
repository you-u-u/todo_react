n=gets.to_i
num =[]

n.times do 
  num<<gets.to_i
end

results = []

(1..n).each do |i|
  num.combination(i).each do |comb|
    if comb.sum==777
      results << comb.sort
    end
  end
end


if results.length == 0
  puts "no answer"
elsif results.uniq.length > 1
  puts "multiple answers"
elsif results.length == 1
  puts results.join(" ")
end

