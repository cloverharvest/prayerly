class CommentsController < ApplicationController
  include SessionsHelper
  before_action :check_admin, except: [:new, :create, :show]

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
    @comment = Comment.find_by_id(params[:id])
    @prayer = Prayer.find_by_id(params[:prayer_id])
    # (prayer_id: params[:prayer_id])
  end

  def update
    @comment = Comment.find_by prayer_id: params[:prayer_id]
    if @comment.update(comment_params)
      flash[:success] = "Comment updated."
      # need help here
      redirect_to '/prayers/' + params[:prayer_id].to_s
      # @comment.prayer
    else
      flash[:error] = @comment.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    @comment = Comment.find_by prayer_id: params[:prayer_id]
    if @comment.destroy
      flash[:success] = "Prayer intention deleted."
      redirect_to '/prayers/' + params[:prayer_id].to_s
    else
      flash[:error] = @comment.errors.full_messages.to_sentence
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:name, :prayer_intention, :prayer_id, :id, :humanizer_answer, :humanizer_question_id)
    end
end
