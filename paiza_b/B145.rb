n,k = gets.split.map(&:to_i)

bingo_card = []

n.times do
  bingo_card << gets.split.map(&:to_i)
end

bingo_num = gets.split.map(&:to_i)

opened = Array.new(n) {Array.new(n, false)}
center = n / 2 
opened[center][center] = true

bingo_num.each do |num|
  n.times do |i|
    n.times do |j|
      if bingo_card[i][j] == num 
        opened[i][j] = true
      end
    end
  end
end

bingo = 0

n.times do |i|
  bingo += 1 if opened[i].all?
end

n.times do |j|
  vertical_bingo = true
  n.times do |i|
    vertical_bingo = false unless opened[i][j]
  end
  bingo += 1 if vertical_bingo
end


diagonal_bingo = true
n.times do |i|
  diagonal_bingo = false unless opened[i][i]
end
bingo += 1 if diagonal_bingo

diagonal_bingo = true
n.times do |i|
  diagonal_bingo = false unless opened[i][n-1-i]
end
bingo += 1 if diagonal_bingo

puts bingo