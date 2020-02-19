# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

one = HelpRequest.create!(
    name: "Homer Simpson",	
    email: "homer@email.com",
    description: "Out of donuts!",	
    priority: "Critical"
)

two = HelpRequest.create!(
    name: "Apu Nahasapeemapetilon",
    email: "	apu@kwikemart.com",
    description: "Squishee machine is broken.",	
    priority: "High"
)

three = HelpRequest.create!(
    name: "Charles Montgomery Burns",	
    email: "monty@burnsinc.com",
    description: "Nuclear core in meltdown.",	
    priority: "Critical"
)

four = HelpRequest.create!(
    name: "Ned Flanders",	
    email: "ned.flanders@church.org",
    description: "Society has lost all sense of morality.",	
    priority: "Low"
)