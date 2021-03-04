class PlantTagsController < ApplicationController
  before_action :set_plant, only: [:new, :create]
  before_action :set_plant_tag, only: [:destroy]

  def destroy
    @plant_tag.destroy!
    redirect_to garden_path(@plant_tag.plant.garden_id)
  end

  def create
    @plant_tag = PlantTag.new(plant_tag_params)
    @plant_tag.plant = @plant
    @plant_tag.save!
    redirect_to garden_path(@plant_tag.plant.garden_id)
  end

  def new
    @plant_tag = PlantTag.new
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

  def set_plant_tag
    @plant_tag = PlantTag.find(params[:id])
  end

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end
end
