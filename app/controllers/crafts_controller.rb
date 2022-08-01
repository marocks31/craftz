class CraftsController < ApplicationController
  def index
    crafts = Craft.all
    render json: crafts.as_json
  end

  def create
    craft = Craft.new(
      name: params[:name],
      description: params[:description],
      difficulty: params[:difficulty],
      materials: params[:materials]
    )
    craft.save
    render json: craft.as_json
  end

  def show
    craft = Craft.find_by(id: params[:id])
    render json: craft.as_json
  end

  def update
    craft = Craft.find_by(id: params[:id])
    craft.name = params[:name] || craft.name
    craft.description = params[:description] || craft.description
    craft.difficulty = params[:difficulty] || craft.difficulty
    craft.materials = params[:materials] || craft.materials
    craft.save
    render json: craft.as_json
  end

  def destroy
    craft = Craft.find_by(id: params[:id])
    craft.destroy
    render json: {message: "Post successfully destroyed."}
  end
end
