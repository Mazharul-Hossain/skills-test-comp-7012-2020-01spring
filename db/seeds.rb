# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# News Feeds
#

food = NewsFeed.create!(
  title: 'Food and Cooking',
  editor: 'Judith Jones'
)

world = NewsFeed.create!(
  title: 'World News',
  editor: 'Rebekah Brooks'
)

#
# Food News Posts
#

f1 = NewsPost.create!(
  news_feed: food,
  headline: "Is New York’s Best Pizza in New Jersey?",
  author: 'Pete Wells',
  story: 'In September, our dining critic crossed the Hudson River, and named Razza Pizza Artigianale in Jersey City home to the region’s best pizza, citing a sauce "which is less acidic and bitter than many, and about as sweet as possible without tasting sugary." Local ingredients like a buffalo mozzarella made from Sussex County water buffaloes helped, too.'
)

f2 = NewsPost.create!(
  news_feed: food,
  headline: 'Five Common Wine Myths, Debunked',
  author: 'Eric Asimov',
  story: 'Five of Daniel Boulud\'s sommeliers held a dinner this year to counter enduring wine shibboleths. Among them? The proper temperature to serve wine and fixations on fine vintages. "I was drawn to this dinner because, as with anyone who writes or talks about wine regularly, I am intimately familiar with all sorts of widely held yet mistaken notions," our wine critic said. "They are worth discussing, as these fallacies can be significant barriers to getting the most pleasure out of drinking wine."'
)

#
# World News Posts
#

w1 = NewsPost.create!(
  news_feed: world,
  headline: "Taiwan to 'Have No Problem' Maintaining GDP Growth of 2% This Year",
  author: 'Yimou Lee',
  story: 'Taiwan would \'have no problem\' maintaining economic growth of 2% this year, its statistics chief said on Wednesday, amid concerns that a coronavirus outbreak could hit the economy of the island which is a key part of the global technology supply chain. Chu Tzer-ming, minister of the statistics agency, told the island\'s parliament that a T$60 billion ($2 billion) stimulus package would help soften the virus impact. Taiwan, whose largest trading partner is China, cut its estimate for 2020 economic growth to 2.37% last month as the outbreak threatens its economy.'
)

w2 = NewsPost.create!(
  news_feed: world,
  headline: 'North Korean Swagger May Conceal Brewing Virus Disaster',
  author: 'Hyung-jin Kim and Kim Tong-hyung',
  story: 'In these days of infection and fear, a recent propaganda photo sums up the image North Korea wants to show the world, as well as its people: Soldiers with black surgical masks surround leader Kim Jong Un, ensconced in a leather overcoat and without a mask as he oversees a defiant military drill. As a new and frightening virus closes in around it, North Korea presents itself as a fortress, tightening its borders as cadres of health officials stage a monumental disinfection and monitoring program. That image of world-defying impregnability, however, may belie a brewing disaster.'
)
