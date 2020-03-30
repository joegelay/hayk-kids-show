class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.new({
      username: params[:kid][:username],
      description: params[:kid][:description],
      favorite_color: params[:kid][:favorite_color],
      age: params[:kid][:age],
    })

    if @kid.save
      render json: @kid
    else 
      render json: @kid.errors.full_messages 
    end 
    
  end
end
