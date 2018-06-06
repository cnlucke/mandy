class Admin::CommentsController < Admin::AdminController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_parent, only: [:new, :create, :show]

  def index
    @comments = Comment.by_parent(params[:parent])
  end

  def show
  end

  def new
    @comment = @parent.comments.new
  end

  def edit
  end

  def create
    @comment = @parent.comments.new(comment_params)

    if @comment.save
      redirect_to admin_comment_url, notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to admin_comment_url, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to admin_comments_url, notice: 'Comment was successfully destroyed.'
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_parent
    case params[:type]
    when "Post"
      @parent = Post.find(params[:parent])
    when "Feed"
      @parent = Feed.find(params[:parent])
    end

  end

  def comment_params
    params.require(:comment).permit(:author_id, :parent_id, :parent_type, :slug, :content)
  end
end
