class ArticlesController < ApplicationController
  # before_action :set_article, only: [:show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  # def set_article
  # end
end
