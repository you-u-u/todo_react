=begin
毎年 5 月 1 日に、自分が運営している会社の社員一覧表を作成しています。表は年度ごとに更新され、社員の名前と年齢が載っています。
ところで、会社のメンバーは昨年度から全く変わらず、社員の誕生日は全員 7 月 7 日だったので、前年度の一覧表の年齢欄をそれぞれ +1 するだけで今年度の表が作れることにパイザ君は気づきました。
昨年度の一覧表が与えられるので、今年度の一覧表を出力してください。
入力される値
N
s_1 a_1
...
s_N a_N
1 行目には社員の数を表す整数 N が与えられ、2 行目 〜 (N + 1) 行目の各行では、社員の名前を表す文字列 s_i とその社員の昨年度の年齢を表す整数 a_i が半角スペース区切りで与えられます（1 ≤ i ≤ N）。

期待する出力
入力された通りの順番で、社員 s_i の名前と、その社員の今年度の年齢を半角スペース区切りでN行出力してください。
s_1 (a_1 + 1)
...
s_N (a_N + 1)
=end

n = gets.to_i

roster = Array.new(n)
n.times { |i| roster[i] = gets.split(' ') }
puts roster
p roster
roster.each do |member|
  name = member[0]
  age = member[1].to_i

  puts name + ' ' + (age + 1).to_s
end


n=gets.to_i
member= n.times.map{ gets.split(' ') }
n.times do |i|
    name = member[i][0]
    age = member[i][1].to_i+1
    puts "#{name} #{age}"
end