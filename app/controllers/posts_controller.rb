class PostsController < ApplicationController
  # http_basic_authenticate_with name: "admin", password: "123", except: [:index, :show]

  before_action :set_post, only: [ :show, :edit, :update, :destroy]

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, success: "Пост обновлён"
    else
      render :edit, danger: "Пост не обновлён"
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: "Пост удалён"
  end

  def create
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, success: "Пост создан"
    else
      render :new, danger: "Пост не создан"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
