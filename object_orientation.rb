class Ferret
    def set_name=(ferret_name)
        @name = ferret_name
    end
    
    def get_name
        return @name
    end
    
    def set_owner=(owner_name)
        @owner_name = owner_name
    end
    
    def get_owner_name
        return @owner_name
    end
    
    def squeal
        return "Squeeee!"
    end
end

my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
my_ferret_name = my_ferret.get_name
puts #{my_ferret_name} says #{my_ferret.squeal}"
