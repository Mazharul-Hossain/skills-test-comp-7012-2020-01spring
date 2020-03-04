class AddNewsFeedFkColToNewsPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :news_posts, :news_feed, foreign_key: true
  end
end
