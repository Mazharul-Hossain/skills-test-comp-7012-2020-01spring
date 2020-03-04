class NewsFeedsController < ApplicationController

  def index
    news_feeds = NewsFeed.includes(:news_posts)
    # news_feeds.each do |news_feed|
    #   print(news_feed)
    # end
    # news_feeds = []
    # news_feeds_old.each do |news_feed|
    #   news_feeds = NewsFeed.includes(:news_posts).last(news_feed.id)
    # end

    respond_to do |format|
      format.html do
        render :index, locals: { news_feeds: news_feeds }
      end
    end
  end

  def show
    news_feed = NewsFeed.find(params[:id])
    respond_to do |format|
      format.html do
        render :show, locals: { news_feed: news_feed }
      end
    end
  end

end
