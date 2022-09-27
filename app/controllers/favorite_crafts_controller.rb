class FavoriteCraftsController < ApplicationController
  def index
   
    # render json: current_user.favorite_crafts.map(&:craft)
    # n1, makes a query for each favorite
    render json: current_user.favorite_crafts.includes(:craft).map(&:craft)
    # grabs user, eager loads crafts linked to favorite crafts at the same time as favorite crafts
  end

  def create
    favorite = FavoriteCraft.new(
      user_id: params[:user_id],
      craft_id: params[:craft_id]
    )
    favorite.save
    render json: favorite
  end

  def show
    favorite = FavoriteCraft.find_by(id: params[:id])
    render json: favorite
  end

  def destroy
    favorite = FavoriteCraft.find_by!(craft_id: params[:id], user_id: current_user.id)
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
