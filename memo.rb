require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.chomp.to_s

if memo_type == "1"
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    file = File.open("#{file_name}.csv", "w")
    puts "メモしたい内容を記入してください"
    puts "完了したら Ctr + D を押します"
    lines = STDIN.read
    lines.each_line do |line|
        line = line.chomp
        file.print(line + ',')
    end
elsif memo_type == "2"
    puts "編集したいファイルの拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    file = File.open("#{file_name}.csv", "a")
    puts "メモしたい内容を記入してください"
    puts "完了したら Ctr + D を押します"
    lines = STDIN.read
    lines.each_line do |line|
        line = line.chomp
        file.print(line + ',')
    end
else
    puts "１か２で入力してください"
end