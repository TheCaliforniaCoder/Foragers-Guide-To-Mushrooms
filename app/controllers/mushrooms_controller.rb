class MushroomsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @mushrooms = Mushroom.all
  end
  
  def show
    @mushroom = Mushroom.find(params[:id])
  end

  def new
    @mushroom = Mushroom.new
  end

  def create
    @mushroom = current_user.mushrooms.new(mushroom_params)
    if @mushroom.save
      redirect_to @mushroom
    else
      render :new, status: :unprocessable_entity
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
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mushroom = current_user.mushrooms.find(params[:id])
    @mushroom.destroy
    redirect_to mushrooms_path
  end

  private

  def mushroom_params
    params.require(:mushroom).permit(:name, :body, :psychedelic, :deadly, :is_default, :img)
  end
end
