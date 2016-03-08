class RepliesController < ApplicationController

  def new
    if logged_in?
      @reply = Reply.new
    else
      redirect_to new_user_path
    end
  end

  def create
    @reply = Reply.new(reply_params)
    @story = Story.find(params[:story_id])
    if @reply.save
      current_user.replies << @reply
      @story.replies << @reply
      redirect_to @story
    else
      render :new
    end
  end

  private

    def reply_params
      params.require(:reply).permit(:content)
    end

end