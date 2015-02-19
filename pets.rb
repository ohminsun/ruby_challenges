class Pet
    attr_accessor :name, :owner_name
end

class Ferret < Pet 
	def squeal
		return "squeeeeee"
	end 
end
 
class Chinchilla < Pet
	def squeek
		return "eeeep"
	end
end
 
class Parrot < Pet
    def tweet
        return "chirrrrp"
    end
end

my_ferret = Ferret.new
my_ferret.name= "Fredo"
ferretname = my_ferret.name
 
my_parrot = Parrot.new
my_parrot.name= "Budgie"
parrotname = my_parrot.name
 
my_chinchilla = Chinchilla.new
my_chinchilla.name= "Dali"
chinchillaname = my_chinchilla.name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.tweet}, 
and #{chinchillaname} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect