require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



p1 = Player.new("Dylan",10)
p2 = Player.new("Killian",10)


while p1.life_points > 0 && p2.life_points > 0 do

puts "Voici l'état de chaque joueur :"

    puts p1.show_state 
    puts p2.show_state
    puts ""

puts "Passons à la phase d'attaque :"

    puts p1.attacks(p2)
    puts "#{p2.name} s'est fait démolir"

     if  p2.life_points <= 0

        break

     end
        
    puts p2.attacks(p1)
    puts "#{p1.name} a pris un revers monumental"
    puts ""

end












    
