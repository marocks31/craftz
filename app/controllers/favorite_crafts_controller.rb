class FavoriteCraftsController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: params[:user_id],
      craft_id: params[:craft_id],
      name: params[:name],
      image: params[:image]
    )
    favorite.save
    render json: favorite
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "Favorite successfully removed."}
  end 


#  before_action :require_login
#  before_action :find_craft
#  before_action :find_favorite, only: [:destroy]

#   def create
#     if already_favorited?
#       flash[:notice] = "You have favorited this."
#    else @craft.favorites.create(user_id: current_user.id)
#    end
#    redirect_to post_path(@craft)
#   end

#   def destroy
#     if !(already_favorited?)
#       flash[:notice] = "Cannot unfavorite"
#     else 
#       @craft.destroy
#   end 
#   redirect_to craft_path(@craft)
#   end

#   def find_craft
#     @craft = Craft.find_by(id: params[:id])
#   end

#   def already_favorited?
#     Favorite.where(user_id: current_user.id, craft_id: params[:craft_id]).exists?
#   end
  
#   def find_favorite
#     @favorite = @craft.favorites.find(params[:id])
#   end 

end 
