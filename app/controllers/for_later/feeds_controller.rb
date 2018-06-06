class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
  end

  def show
  end
end
