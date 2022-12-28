def hoihoi_you
puts "0(上)1(右)2(左)3(下)"
myface_type = gets.to_i
opponent_face_type = rand(4)

if myface_type >=4
  puts "無効な数字です"
end

face_type = ["上","右","左","下"]
puts "ホイ!"
puts "あなた:#{face_type[myface_type]}"
puts "相手:#{face_type[opponent_face_type]}"

if myface_type == 0 && opponent_face_type == 0 || myface_type == 1 && opponent_face_type == 1 || myface_type == 2 && opponent_face_type == 2 || myface_type == 3 && opponent_face_type == 3
puts "---------"
puts "あなたの勝ちです"
else
puts "---------"
puts "じゃんけん・・・"
janken
end
end


def hoihoi_opponent
puts "0(上)1(右)2(左)3(下)"
myface_type = gets.to_i
opponent_face_type = rand(4)

if myface_type >=4
  puts "無効な数字です"
end

face_type = ["上","右","左","下"]
puts "---------"
puts "ホイ!"
puts "相手:#{face_type[myface_type]}"
puts "あなた:#{face_type[opponent_face_type]}"

if myface_type == 0 && opponent_face_type == 0 || myface_type == 1 && opponent_face_type == 1 || myface_type == 2 && opponent_face_type == 2 || myface_type == 3 && opponent_face_type == 3
puts "---------"
puts "あなたの負けです"
else
puts "---------"
puts "じゃんけん・・・"
janken
end
end


puts "じゃんけん・・・"
def janken
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
myhand_type = gets.to_i
opponent_hands_type = rand(3)

if myhand_type == 3 
puts "戦わないことにしました"
return false
end

if myhand_type >= 4
  puts "無効な数字です"
  return false
end

hand_type = ["グーを出しました","チョキを出しました","パーを出しました"]
puts "---------"
puts "ポン！"
puts "あなた:#{hand_type[myhand_type]}"
puts "相手:#{hand_type[opponent_hands_type]}"
puts "---------"

if myhand_type == 0 && opponent_hands_type == 0 || myhand_type == 1 && opponent_hands_type == 1 || myhand_type == 2 && opponent_hands_type == 2
puts "あいこ"
return true
elsif myhand_type == 0 && opponent_hands_type == 1 || myhand_type == 1 && opponent_hands_type == 2 || myhand_type == 2 && opponent_hands_type == 0
puts "あなた:あっち向いて"
hoihoi_you
return false
elsif myhand_type == 0 && opponent_hands_type == 2 || myhand_type == 1 && opponent_hands_type == 0 || myhand_type == 2 && opponent_hands_type == 1
puts "相手:あっち向いて"
hoihoi_opponent
return false
end
end


continue_game = true

while continue_game
  continue_game = janken
end