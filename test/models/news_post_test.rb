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

require 'test_helper'

class NewsPostTest < ActiveSupport::TestCase

  test "all fixtures valid" do
    news_posts.each do |news_post|
      assert news_post.valid?
    end
  end

end
