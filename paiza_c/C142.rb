=begin
あなたは、ある料理店でメニューを見ています。この料理店の料理名は複雑で、ある料理が食べたい料理であるか瞬時に判断するのが難しいです。

あなたが食べたい料理の名前と、メニューに載っている料理名が 1 つ与えられるので、食べたい料理に合致するメニューであれば "Yes" を、そうでなければ "No" を出力するプログラムを作成してください。
食べたい料理に合致するメニューとは、メニューの単語の中に食べたい料理名が入っていることを指します。

入力例 1 では、あなたは hamburg を食べたいと思っていて、与えられた料理名は cheese hamburg です。2 つ目の単語が、あなたの食べたい hamburg と一致しているため、"Yes" と出力します。
=end

want = gets.chomp.to_s
n = gets.chomp.to_i
menus = gets.split.map(&:to_s)

if menus.include?(want)
  puts "Yes"
else
  puts "No"
end

=begin 
もっと簡単な書き方
# 食べたい料理名を取得
want = gets.chomp

# メニューの数を取得（この値は使用しないため削除してもよい）
gets

# メニュー全体を1つの文字列として取得
menu = gets.chomp

# メニューを単語ごとに分割し、各単語に対して完全一致を確認
puts menu.split.any? { |word| word == want } ? "Yes" : "No"
=end