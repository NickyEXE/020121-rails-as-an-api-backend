class CatsController < ApplicationController


  def index
    cats = Cat.all
    render json: cats
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    render json: {message: "You did it! You vanished a cat to the Thames."}
  end

end
