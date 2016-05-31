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
      redirect_to prayer_comment_path(@prayer)
    else
      flash[:error] = @comment.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def show
  end

  private

    def comment_params
      params.require(:comment).permit(:name, :prayer_intention, :prayer_id)
    end
end
