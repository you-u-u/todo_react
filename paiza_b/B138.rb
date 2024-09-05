h, w = gets.split.map(&:to_i)
art = []
doughnuts = 0
h.times do
  art << gets.chomp
end
p art

(0...(h-2)).each do |i|
  (0...(w-2)).each do |j|
    p art[i][j..(j+2)]
    p "next"
    if art[i][j..(j+2)] == "###" &&
      art[i+1][j..(j+2)] == "#.#" &&
      art[i+2][j..(j+2)] == "###"
      doughnuts += 1
    end
  end
end

puts doughnuts



