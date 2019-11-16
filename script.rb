class Arena 
    attr_accessor :name, :gladiators
    def initialize(name, gladiators = [])
        @name = name.capitalize
        @gladiators = gladiators
    end

    def add_gladiator(gladiator)
        if gladiators.length < 2
            gladiators << gladiator
        puts "#{gladiator.name} entered the #{name}"
        else 
            puts "#{name} allows just two Gladiators at a time"
        end
    end

    def fight
        if gladiators[0].weapon == "spear" && gladiators[1].weapon == "trident" 
              gladiators.shift
        elsif gladiators[0].weapon == "trident" && gladiators[1].weapon == "club"
            gladiators.shift
        elsif gladiators[0].weapon == "club" && gladiators[1].weapon == "spear"
            gladiators.shift
        elsif gladiators[0].weapon == gladiators[1].weapon
            gladiators = []
        end
    end

end

class Gladiator
    attr_accessor :name, :weapon
    def initialize(name, weapon)
        @name = name 
        @weapon = weapon.downcase
        if weapon != "trident" && weapon != "spear" && weapon != "club" 
            puts "Cannot use the #{weapon} as a weapon"
            puts " Choose from: [trident, blub, spear]"
            weapon = []
        end
    end
end



max = Gladiator.new("Maximus","trident")
titus = Gladiator.new("Titus","Taco")
andronicus = Gladiator.new("Andronicus","spear")
colosseum = Arena.new("colosseum")
puts colosseum.name
colosseum.add_gladiator(max)
colosseum.add_gladiator(titus)
colosseum.add_gladiator(andronicus)
puts colosseum.gladiators

puts(colosseum.gladiators.length) 
colosseum.fight 
puts(colosseum.gladiators.length)

