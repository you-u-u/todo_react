@number_of_100yen = [100, 100, 100, 100, 100, 100]
p "1"
p @number_of_100yen.push([200])
p @number_of_100yen.concat([200,300])
p @number_of_100yen.slice(6)
p @number_of_100yen.slice(0,4)
p @number_of_100yen.pop
# pop :自身の末尾から要素を取り除いてそれを返します。引数を指定した場合はその個数だけ取り除き、それを配列で返します。
p 2
p @number_of_100yen.pop
p @number_of_100yen
p @number_of_100yen.length
p @number_of_100yen.count(100)
