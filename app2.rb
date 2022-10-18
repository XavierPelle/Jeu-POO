require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#set-up les joueurs et le tableau

p1 = Player.new("Dylan",10)
p2 = Player.new("Killian",10)
enemy = []
enemy.push(p1)
enemy.push(p2)

puts "
------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
------------------------------------------------- "

puts "Quelle est ton nom champion ?"

    player = gets.chomp 

    player = HumanPlayer.new(player)

while player.life_points >0 && (p1.life_points > 0 || p2.life_points >0)

    puts "Voici l'état de #{player.name} :"
    puts player.show_state 
    puts " "

    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner "
    puts " "

    puts "attaquer un joueur en vue :"
    puts "0 - Dylan a #{p1.life_points} points de vie"
    puts "1 - Killian a #{p2.life_points} points de vie"
    puts " "

    choose = gets.chomp

    if choose == "a" 
        puts player.search_weapon
    
    elsif choose == "s"
        puts player.search_health_pack
    
    elsif choose == "0"
        puts player.attacks(p1)


    elsif choose == "1"
        puts player.attacks(p2)

    end
    puts " "

        enemy.each { |i| i.life_points <= 0 ? break : i.attacks(player) }
    
end

puts "La partie est finie"

if player.life_points > 0

puts "BRAVO ! TU AS GAGNE !"

else

puts "Loser ! Tu as perdu !"

end