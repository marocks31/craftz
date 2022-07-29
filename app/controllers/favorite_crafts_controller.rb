class FavoriteCraftsController < ApplicationController

  def create
    if already_favorited?
      flash[:notice] = "You have favorited this."
   else @crafts.favorites.create(user_id: current_user.id)
   end
   redirect_to post_path(@crafts)
  end

  def destroy
  end 
end
