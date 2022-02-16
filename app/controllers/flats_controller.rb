class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @flat.save
    redirect_to flat_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
  end
  def destroy
  end

  private

  def review_params
    params.require(:flat).permit(:name, :address)
  end
end
