class ShowCharacter 
attr_accessor :name, :show, :actor, :all_characters


def initialize(name, show, actor)
    @name = name 
    @show = show 
    @actor = actor
   Character.all << self 
end 

end 
