class Game
    attr_accessor :human_player, :enemies 

    def initialize(name)

        @enemies = []
        @human_player = HumanPlayer.new(name)
        4.times do |i|
            @enemies << Player.new("ennemies #{i + 1}")
        end
    end

    def kill_player
        @enemies.each do |k|
            if k.life_points < 0
            @enemies.delete(k)
            end
        end
    end

    def is_still_ongoing?
        if @human_player.life_points < 0 || @enemies.empty?
            puts false
        else
            puts true
        end
    end

    def show_players 

        puts "#{@human_player.name} a #{@human_player.life_points} point de vie"
        puts "il reste #{enemies.length} enemies en vie"


    end

    def menu
        
        puts "Voici l'état de #{@human_player.name} :"
        puts show_players
        puts " "
    
        puts "Quelle action veux-tu effectuer ?"
        puts "a - chercher une meilleure arme"
        puts "s - chercher à se soigner "
        puts " "
    
        puts "attaquer un joueur en vue :"
        a = 0
        @enemies.each do |y|
            a = a + 1

            puts "#{a}   #{y.name} a #{y.life_points} HP"
            
        end

        return

    def menu_choice

        choose = gets.chomp

        if choose == "a" 
            puts player.search_weapon
        
        elsif choose == "s"
            puts player.search_health_pack
        
        else
        
            

        end
        
    end
    
end

       



end