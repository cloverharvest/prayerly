class CommentsController < ApplicationController
  before_action :authenticate_admin!, :only => [:edit, :update, :destroy]

  def index
    @comments = Comment.all
    render :index
  end

  def new
    @comment = Comment.new(prayer_id: params[:prayer_id])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "New comment created."
      redirect_to @comment.prayer
    else
      flash[:error] = @comment.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    render :show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:name, :prayer_intention, :prayer_id, :id, :humanizer_answer, :humanizer_question_id)
    end
end
