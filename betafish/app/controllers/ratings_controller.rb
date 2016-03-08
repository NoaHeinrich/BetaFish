class RatingsController < ApplicationController
  def new
  end

  def create
    @rating = Rating.new
    @reply = Reply.find(params[:reply_id])
    if @rating.save
      @reply.rating = @rating
      redirect_to @reply.story
    else
      render :new
    end
  end

  private
    def rating_params
      params.require(:rating).permit(:score)
    end
end