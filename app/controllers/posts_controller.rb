class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def index
    # if params[:category_id]
    #   @category = Category.find(params[:category_id])
    #   @posts = @category.posts.page(params[:page]).reverse_order.order(created_at: :desc)
    # else
      @posts = Post.page(params[:page]).reverse_order.order(created_at: :desc)
    # end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def category
    @category = Category.find(params[:id])
    @post = Post.includes(:categories).where(post_category_relations: { category_id: @category }).page(params[:page]).reverse_order.order(created_at: :desc)
  end
   private

  def post_params
    params.require(:post).permit(:title, :body, :image, category_ids: [])
  end
end
