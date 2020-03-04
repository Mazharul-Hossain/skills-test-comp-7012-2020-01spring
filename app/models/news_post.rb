# == Schema Information
#
# Table name: news_posts
#
#  id           :bigint           not null, primary key
#  author       :string
#  headline     :string
#  story        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  news_feed_id :bigint
#
# Indexes
#
#  index_news_posts_on_news_feed_id  (news_feed_id)
#
# Foreign Keys
#
#  fk_rails_...  (news_feed_id => news_feeds.id)
#

class NewsPost < ApplicationRecord

  belongs_to(
    :news_feed,
    class_name: 'NewsFeed',
    foreign_key: 'news_feed_id', 
    inverse_of: :news_posts 
  )

  validates :headline, presence: true
  validates :author, presence: true
  validates :story, presence: true

end
