puts "ジャンケン・・・(0:グー)or(1:チョキ)or(2:パー)"

def janken
    
player_hand = gets.to_i
program_hand = rand(0..2)
janken = ["グー","チョキ","パー"]


puts "あなた：#{janken[player_hand]}\n相手：#{janken[program_hand]}"

if player_hand == program_hand
    puts "あいこで・・・"
    @case_pattern = "janken_draw"
    return true
elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand ==0)
    @case_pattern = "janken_win"
    puts "ジャンケンはあなたの勝ち"
    return false
else 
    @case_pattern = "janken_rose"
    puts "ジャンケンは相手の勝ち"
    return false
end

end

draw = true
while draw
    draw = janken
end


def next_game
puts "---------------------------------------------------"
puts "あっち向いて・・・・(0:上)or(1:下)or(2:右)or(3:左)"

player_face = gets.to_i
program_face = rand(0..3)
acchimuite_hoi = ["上","下","右","左"]

case @case_pattern
when "janken_win"
    puts "ホイ！\nあなたが差した方向：#{acchimuite_hoi[player_face]}\n相手が向いた方向：#{acchimuite_hoi[program_face]}"

if player_face == program_face
    puts "あなたの勝ち！おめでとう！"
else 
    puts "引き分け"
    puts "ジャンケン・・・(0:グー)or(1:チョキ)or(2:パー)"
    janken
    draw = true
    while draw
        draw = janken
    end
    next_game
end

end 

case @case_pattern
when "janken_rose"
    puts "：ホイ！\nあなたが向いた方向：#{acchimuite_hoi[player_face]}\n相手が差した方向：#{acchimuite_hoi[program_face]}"

if player_face == program_face
    puts "あなたの負け！残念！"
else 
    puts "引き分け"
    puts "ジャンケン・・・(0:グー)or(1:チョキ)or(2:パー)"
    janken
    draw = true
    while draw
        draw = janken
    end
    next_game
end
end
end

next_game