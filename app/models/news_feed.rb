# == Schema Information
#
# Table name: news_feeds
#
#  id         :bigint           not null, primary key
#  editor     :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NewsFeed < ApplicationRecord

  has_many(
    :news_posts,
    dependent: :destroy, 
    class_name: 'NewsPost',
    foreign_key: 'news_feed_id', 
    inverse_of: :news_feed 
  )

  validates :title, presence: true
  validates :editor, presence: true

end
