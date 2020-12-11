class ArticleCommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.article_comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:article_comment).permit(:commenter, :body)
  end
end
