class CraftsController < ApplicationController
  def index
    crafts = Craft.all
    render json: crafts
  end

  def create
    if(params["image_url"])
      image_url = params["image_url"]
    elsif(params["image_file"])
      response = Cloudinary::Uploader.upload(params["image_file"], resource_type: :auto)
      image_url = response["secure_url"]
    else
      image_url = nil
    end 
    craft = current_user.crafts.new(
      name: params[:name],
      description: params[:description],
      difficulty: params[:difficulty],
      materials: params[:materials],
      image: image_url
    )
    if craft.save
      render json: craft
    else
      render json: {errors: craft.errors.full_messages}, status: 422
    end
  end

  def show
    craft = Craft.find_by(id: params[:id])
    render json: craft
  end

  def update
    craft = Craft.find_by(id: params[:id])
    craft.name = params[:name] || craft.name
    craft.description = params[:description] || craft.description
    craft.difficulty = params[:difficulty] || craft.difficulty
    craft.materials = params[:materials] || craft.materials
    craft.save
    render json: craft
  end

  def destroy
    craft = Craft.find_by(id: params[:id])
    craft.destroy
    render json: {message: "Post successfully destroyed."}
  end
end
