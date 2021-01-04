require_relative 'question'

def turn (player)
  puts "#{player.name}: What is #{Question.num1} + #{Question.num2} equal to?"

  answer = gets.chomp.to_i

  if Question.validate(answer)
    puts "That's the right answer! You will not lose a life"
  else 
    puts "That's the wrong answer! You will lose a life"
    player.incorect
  end
end 