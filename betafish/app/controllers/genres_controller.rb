class GenresController < ApplicationControllers
  def new
  end

  def create
    @genre = Genre.new
    if @genre.save
      redirect_to @genre
    else
      render :new
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private
    def genre_params
      params.require(:genre).permit(:name)
    end
end