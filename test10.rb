=begin
入力される値
入力は以下のフォーマットで与えられます。

N
A_1 B_1
A_2 B_2
...
A_N B_N
・1 行で過去に行われたじゃんけんの回数を表す整数 N が与えられます。
・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、(i 回目のじゃんけんにおいてアリスさんが出した手)、(i 回目のじゃんけんにおいてボブさんが出した手) を表す文字列 A_i, B_i がこの順で半角スペース区切りで与えられます。
・入力は合計で N + 1 行となり、末尾に改行が 1 つ入ります。
・じゃんけんの手は「グー」、「チョキ」、「パー」の 3 種類のみであり、それぞれ順番に 'G', 'C', 'P' というアルファベット 1 文字によって表現されます。

それぞれの値は文字列で標準入力から渡されます。標準入力からの値取得方法はこちらをご確認ください
期待する出力
過去に行われたアリスさんとボブさんのじゃんけんの記録を元に、過去にアリスさんがボブさんに何回勝ったかを 1 行で出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません
=end
n= gets.chomp.to_i
count=0
 
n.times do
  a,b = gets.chomp.split.map(&:to_s)
  if a=="G"&& b=="C" or a=="C" && b=="P" or a=="P"&& b=="G"
    count += 1
  end
end
puts count