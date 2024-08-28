=begin
整数 N が与えられるので、三角形の三辺の長さの和が N であり、全ての辺の長さが整数であるような直角三角形が存在するかどうかを判定してください。
なお、直角三角形の斜辺 a と他の二辺 b , c の間には次のような三平方の定理が成り立ちます。


a ^ 2 = b ^ 2 + c ^ 2

・ ヒント
三辺の長さの和が N であるような全ての三角形の三辺 a , b , c の組み合わせのうち、三平方の定理を満たすものが 1 つでもあれば "YES" , それ以外の場合は "NO" が答えとなります。
全ての三辺の場合を全列挙することができれば三平方の定理を満たすかの判定をすることで答えを求めることができます。  
=end

n = gets.chomp.to_i

found = false

(1..n/2).each do |b|
  (1..n/2).each do |c|
    a = n - b - c
    if (a ** 2 == b ** 2 + c ** 2)
      found = true
      break if found
    end
  end
  break if found
  puts b
end

puts found ? "YES" : "NO"