require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

angel = Location.new("Angel")
notting_hill = Location.new("Notting Hill")
chiswick = Location.new("Chiswick")
canary_wharf = Location.new("Canary Wharf")
battersea = Location.new("Battersea")

nathaniel = Trainer.new("Nathaniel")
diego = Trainer.new("Diego")
susannah = Trainer.new("Susannah")
amy = Trainer.new("Amy")
mira = Trainer.new("Mira")


charlie = Client.new("Charlie")
angela = Client.new("Angela")
rob = Client.new("Rob")
ryan = Client.new("Ryan")
laura = Client.new("Laura")
sarah = Client.new("Sarah")
will = Client.new("Will")
ted = Client.new("Ted")
chris = Client.new("Chris")
annemarie = Client.new("Anne-Marie")

charlie.assign_trainer(nathaniel)
angela.assign_trainer(mira)
rob.assign_trainer(diego)
ryan.assign_trainer(diego)
laura.assign_trainer(susannah)
sarah.assign_trainer(mira)
will.assign_trainer(nathaniel)
ted.assign_trainer(diego)
chris.assign_trainer(diego)
annemarie.assign_trainer(amy)

Contract.new(nathaniel,notting_hill)
Contract.new(diego,chiswick)
Contract.new(susannah,angel)
Contract.new(mira,battersea)
Contract.new(amy, canary_wharf)

Contract.new(mira,canary_wharf)
Contract.new(diego,battersea)
Contract.new(nathaniel,angel)
Contract.new(diego,notting_hill)

Pry.start
