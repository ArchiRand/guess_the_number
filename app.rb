@attempts = 1

# puts "Как тебя зовут?"
# @user_name = gets.chomp
# puts "Очень рад познакомиться, #{@user_name}"

puts 'В каком диапазоне ты хочешь отгадывать числа'
answer = gets.chomp.to_i
@number = rand(answer + 1)
puts "Комп загодал число от 0 до #{answer}"

def lets_play

  @attempts += 1
  puts 'Введи число'
  user_number = gets.chomp.to_i
  if @number > user_number
    delta = @number - user_number
  else
    delta = user_number - @number
  end

  if delta == 0
    puts "#{@user_name}, ты победила!"
    puts "Тебе понадобилось #{@attempts} попыток"
    exit
  elsif delta == 1
    puts 'Горячо'
  elsif delta >= 2 && delta < 4
    puts 'Тепло'
  elsif delta >= 4 && delta < 7
    puts 'Холодно'
  elsif delta >= 7 && delta <= 7
    puts 'Совсем холодно'
  end
end

while true
  lets_play
end