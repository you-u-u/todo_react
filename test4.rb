input = gets.chomp

A,B,C = input.split.map(&:to_i)
N = 0
N += A
N *= B
N %= C
puts N
