=begin
指定された範囲内で素数の個数を数えるプログラムを書いてください。

制約
for ループを使用して、指定された範囲内の全ての数をチェックすること。
数値の範囲は 2 以上の自然数です。
=end
a,b=gets.split.map(&:to_i)
count = 0

for num in a..b
  is_prime= true

  if num < 2
    is_prime = false

  else 
    for i in 2..Math.sqrt(num).to_i
      if num%i ==0
        is_prime = false
        break
      end
    end
  end
  count += 1 if is_prime
end
puts count