require_relative 'player'
require_relative 'turn'

puts 'Welcome to TwO-O-Player Math Game!'

P1 = Player.new('Player 1')
puts "What would you like to name the first player?"
P1.name = gets.chomp

P2 = Player.new('Player 2')
puts "What would you like to name the second player"
P2.name = gets.chomp

puts "#{P1.name} vs. #{P2.name} in a TwO-O-Player Math Game!"

loop do 

  turn(P1)
  if P1.gameover
    break puts "#{P2.name} wins with a score of #{P2.life}/3. Better luck next time #{P1.name}"
  end 

  turn(P2)
  if P2.gameover
    break puts "#{P1.name} wins with a score of #{P1.life}/3. Better luck next time #{P2.name}"
  end 

puts "The Current Score is:"
puts "#{P1.name}:#{P1.life}/3 vs. #{P2.name}:#{P2.life}/3"

end
puts "GAMEOVER"