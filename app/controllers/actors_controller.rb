class ActorsController < ApplicationController

  def index
    @actors=Actor.all
  end

  def new
      @actor=Actor.new

  end


  def create
    @actor = Actor.new (actors_params)
    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end



    private

    def actors_params

      params.require(:actor).permit(:name, :image_url, :bio, :birth_date, :birth_place, :death_date, :death_place, :alive)

    end


end
