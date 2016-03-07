class StoriesController < ApplicationController
  before_action :set_user
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def index
    @stories = Story.all
    @genres = Genre.all
  end

  def new
    if logged_in?
      @story = Story.new
    else
      redirect_to new_user_path
    end
  end

  def create
    @story = Story.new(story_params)
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
      params.require(:story).permit(:title, :content)
    end

end