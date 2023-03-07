class MushroomsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @mushrooms = Mushroom.all
  end

  def show
    @mushroom = Mushroom.find(params[:id])
  end

  def new
    @mushroom = current_user.mushrooms.build
  end

  def create
    @mushroom = current_user.mushrooms.build(mushroom_params)
    if @mushroom.save
      redirect_to @mushroom
    else
      render 'new'
    end
  end

  def edit
    @mushroom = current_user.mushrooms.find(params[:id])
  end

  def update
    @mushroom = current_user.mushrooms.find(params[:id])
    if @mushroom.update(mushroom_params)
      redirect_to @mushroom
    else
      render 'edit'
    end
  end

  def destroy
    @mushroom = current_user.mushrooms.find(params[:id])
    @mushroom.destroy
    redirect_to mushrooms_path
  end

  private

  def mushroom_params
    params.require(:mushroom).permit(:name, :description, :is_default)
  end
end
