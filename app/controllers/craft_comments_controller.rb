class CraftCommentsController < ApplicationController
  def index
    comments = CraftComment.all
    render json: comments.as_json{methods: [:comment]}
  end

  def create
    comment = CraftComment.new(
      user_id: params[:user_id],
      craft_id: params[:craft_id],
      comment: params[:comment]
    )
    comment.save
    render json: comment
  end

  def show
    comment = CraftComment.find_by(id: params[:id])
    render json: comment
  end

  def destroy
    comment = CraftComment.find_by(id: params[:id]).comment.destroy
    render json: {message: "Comment destroyed."}
  end 
end
