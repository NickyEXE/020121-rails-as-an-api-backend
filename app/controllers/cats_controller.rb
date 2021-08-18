class CatsController < ApplicationController
  before_action :set_cat, only: [:update, :destroy]

  def index
    cats = Cat.all.order(:name)
    render json: cats
  end

  def create
    cat = Cat.new(cat_purrrams)
    if cat.save
      render json: cat
    else
      render json: {error: cat.errors.full_messages.to_sentence}, status: 400
    end
  end


  def update
    @cat.update(cat_purrrams)
    render json: @cat
  end

  def destroy
    @cat.destroy
    render json: {message: "You did it! You vanished a cat to the Thames."}
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_purrrams
    params.permit(:tip, :name, :actor, :image, :description, :team_name)
  end

end
