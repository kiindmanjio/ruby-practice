def jankensuruyo
  puts "最初はグー！！！！..........ジャーーーンケーーン"
  puts "[1]:グー\n[2]:チョキ\n[3]:パー"
  
  my_hand = gets.to_i

  cpu_hand=rand(1..4)

  if (my_hand == 1) && (cpu_hand == 2) || (my_hand == 2) && (cpu_hand ==3) || (my_hand == 3) && (cpu_hand == 1)
      puts "じゃんけん魔人X:うわぁーーーーーーーー！！！"
      puts "あなたの勝ちー！！"
      return false
  
  elsif (my_hand == cpu_hand)
      puts "あいこで。。。。。。。。。。。"
      return true
  
  elsif (my_hand == 1) && (cpu_hand == 4) || (my_hand == 2) && (cpu_hand ==4) || (my_hand == 3) && (cpu_hand == 4)
      puts "相手が後出しした！"
      puts "じゃんけん魔人X：頼む！チャンスをくれ！"
      puts "[1]チャンスを与える/[2]チャンスを与えない"
      chance = gets.to_i
        if chance == 1
          puts "じゃんけん魔人X: ふははははh！！！バカめ！！！"
          return true
        else 
          puts "じゃんけん魔人X:ちくしょーーー！！！ぐわぁーーー！！"
          puts "あなた：後出しは許さん！"
          return false
        end

  else 
    puts "じゃんけん魔人X:雑魚めが！！"
    puts "あなた：くそぉ。。。力が及ばなかった。。。"
    return

  end
end

janken = true
puts " じゃんけん魔人X が現れた！"

while janken do
  puts "[1]戦う/[2]逃げる"
  input =gets.to_i
   if input == 1
    janken = jankensuruyo
   else
    puts "あなたは逃げた"
     break
  end
end
