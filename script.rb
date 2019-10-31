class Arena
end

class Gladiator
    attr_accessor :name, :weapon
    def initialize(name, weapon)
        @name = name
        @weapon = weapon
    end
end


max = Gladiator.new("Maximus", "Trident")
puts(max.name)
puts(max.weapon)