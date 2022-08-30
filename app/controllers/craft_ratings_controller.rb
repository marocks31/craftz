class CraftRatingsController < ApplicationController

  def index
    ratings = CraftRating.all
    render json: ratings.as_json{methods: [:rating]}
  end

  def create
    rating = CraftRating.new(
      user_id: params[:user_id],
      craft_id: params[:craft_id],
      rating: params[:rating]
    )
    rating.save
    render json: rating
  end

  def show
    rating = CraftRating.find_by(id: params[:id])
    render json: rating
  end

  def destroy
    rating = CraftRating.find_by(id: params[:id]).rating.destroy
    render json: {message: "Rating destroyed."}
  end 
end
