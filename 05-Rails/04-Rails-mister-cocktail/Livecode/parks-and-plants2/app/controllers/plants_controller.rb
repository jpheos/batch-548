class PlantsController < ApplicationController
  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    @plants = @garden.plants
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render 'gardens/show'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :photo_url)
  end
end
