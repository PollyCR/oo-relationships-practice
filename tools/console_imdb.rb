require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

big_little_lies = Show.new("Big Little Lies")
friends = Show.new("Friends")

devil_wears_prada = Movie.new("The Devil Wears Prada")
les_miserables = Movie.new("Les Misérables")
horrible_bosses = Movie.new("Horrible Bosses")
legally_blonde = Movie.new("Legally Blonde")
bridget_jones_diary = Movie.new("Bridget Jones' Diary")
chicago = Movie.new("Chicago")


meryl = Actor.new("Meryl Streep")
reese = Actor.new("Reese Witherspoon")
shailene = Actor.new("Shailene Woodley")
nicole = Actor.new("Nicole Kidman")
anne = Actor.new("Anne Hathaway")
amanda = Actor.new("Amanda Seyfried")
colin = Actor.new("Colin Firth")
renee = Actor.new("Renee Zellweger")
catherine = Actor.new("Catherine Zeta Jones")
emily = Actor.new("Emily Blunt")
jennifer = Actor.new("Jennifer Aniston")

madeline_mackenzie = ShowCharacter.new("Madeline Mackenzie", big_little_lies, reese)
celeste_wright = ShowCharacter.new("Celeste Wright",big_little_lies,nicole)
jane_chapman = ShowCharacter.new("Jane Chapman", big_little_lies, shailene)
mary_louise_wright = ShowCharacter.new("Mary Louise Wright", big_little_lies, meryl)

rachel = ShowCharacter.new("Rachel Green",friends,jennifer)

miranda_bishop = MovieCharacter.new("Miranda Bishop", devil_wears_prada, meryl)
andy_sachs = MovieCharacter.new("Andy Sachs",devil_wears_prada, anne)

fantine = MovieCharacter.new("Fantine",les_miserables,anne)
cosette = MovieCharacter.new("Cosette",les_miserables,amanda)

julia = MovieCharacter.new("Julia", horrible_bosses, jennifer)

bridget_jones = MovieCharacter.new("Bridget Jones", bridget_jones_diary, renee)

roxie_hart = MovieCharacter.new("Roxie Hart",chicago,renee)










Pry.start
