class Player

    #Un joueur possède 2 attributs que tu vas mettre en attr_accessor : un nom @name (string) et un niveau de vie @life_points (integer).
    attr_accessor :name , :life_points

    def initialize (name)
        
        @name = name
        @life_points = 10

    end

    #afficher l'état d'un joueur avec show_state

    def show_state

        return "#{name} a #{life_points} point de vie et une arme de niveau #{weapon_level}"

    end

    # subir une attaque avec gets_damage

    def gets_damage(damage)

        @life_points = @life_points - damage 

        if @life_points <= 0
            puts "#{@name} est K.O ! "
        end


    end

    #attaquer avec attacks

    def attacks(opponent)

        details = compute_damage

        puts "#{@name} attaque #{opponent.name}"

        opponent.gets_damage(details) 
        
        return "Il perd #{details} point de vie"

    end

    #lance un dée 

    def compute_damage

        return rand(1..6)

    end

end

class HumanPlayer < Player #HumanPlayer hérite de Player

    attr_accessor :weapon_level

    def initialize(name)

        @name = name            
        @weapon_level = 1   
        @life_points = 100

    end

    def compute_damage #un dée de 1 a 6 multiplier par le niveau de l'arme

        rand(1..6) * @weapon_level

    end

    def search_weapon # permets de changer d'arme

        rand = rand(1..6)

        puts "Tu as trouvé une arme de niveau #{rand}"

        if rand > @weapon_level

            puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends"

            @weapon_level = rand
        
        else 

            puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."

        end


    end

    def search_health_pack #permet de se soigner
        
        rand_heal = rand(1..6)
        puts rand_heal

        if rand_heal == 1

            puts "Tu n'as rien trouvé..."

        elsif rand_heal > 1 && rand_heal < 6

            @life_points = @life_points + 50

            if @life_points > 100 
                @life_points = 100 
            end

            puts "Bravo, tu as trouvé un pack de +50 points de vie !"

        elsif rand_heal == 6

            @life_points = @life_points + 80
            
            if @life_points > 100
                @life_points = 100
            end

            puts "Waow, tu as trouvé un pack de +80 points de vie !"
            
        end
            
    end






end


