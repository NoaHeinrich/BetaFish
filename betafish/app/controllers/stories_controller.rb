class StoriesController < ApplicationController
  before_action :set_user
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new
    if @story.save
      redirect_to @story
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user ||= User.find_by_id(session[:user_id])
    end

    def set_story
      @story = Story.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:user).permit(:title, :content)
    end

end