class Admin::PostsController < Admin::AdminController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
    @feeds = Feed.all
  end

  def edit
    @feeds = Feed.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to admin_post_url, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to admin_post_url, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:feed_id, :author_id, :slug, :title, :body)
    end
end
