class PagesController < ApplicationController

  def home
  end

  def contact
  end

  def archive
    @posts = Post.all
    @categories = Category.all


  end
end
