class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
  end
end
