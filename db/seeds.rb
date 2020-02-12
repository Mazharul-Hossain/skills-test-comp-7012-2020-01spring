# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Article.create!(author: "John Maloney, Mitchel Resnick, Natalie Rusk, Brian Silverman, and Evelyn Eastmond",
 journal: "ACM Transactions on Computing Education (TOCE)",
 title: "The Scratch Programming Language and Environment",
 year: 2010  )   

a2 = Article.create!(author:  "Juha Sorva, Ville Karavirta, and Lauri Malmi	", 
 journal: "ACM Transactions on Computing Education (TOCE)	",
 title: "A Review of Generic Program Visualization Systems for Introductory Programming Education	",
 year: 2013  )

a3 = Article.create!(author: "Christopher Douce, David Livingstone, and James Orwell	",
 journal: "Journal on Educational Resources in Computing (JERIC)	",
 title: "Automatic test-based assessment of programming: A review	",
 year:   2005
)

a4 = Article.create!(author: "Frank L. Greitzer, Olga Anna Kuchar, and Kristy Huston	 ",
 journal:  "Journal on Educational Resources in Computing (JERIC)	",
 title: "Cognitive science implications for enhancing training effectiveness in a serious gaming context	",
 year:  2007
)