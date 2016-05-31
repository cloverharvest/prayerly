class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "New comment added."
      redirect_to prayer_comment_path
    else
      flash[:error] = @comment.errors.full_messages
      render :new
    end
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    render :show
  end

  def edit
  end


  private

    def comment_params
      params.require(:comment).permit(:name, :prayer_intention, :prayer_id, :id)
    end
end
