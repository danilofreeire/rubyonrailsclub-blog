class ArticlesController < ApplicationController
  def show
    @article = Article.includes(:category, :author, comments: :user).friendly.find(params[:id])
    @other_articles = Article.all.sample(3)
    
  end
end
