class MushroomsController < ApplicationController
    before_action :set_mushroom, only: %i[ show edit update destroy ]

    # GET /mushrooms or /mushrooms.json
    def index
      @mushrooms = Mushroom.all
    end
  
    # GET /mushrooms/1 or /mushrooms/1.json
    def show
    end
  
    # GET /mushrooms/new
    def new
      @mushroom = Mushroom.new
    end
  
    # GET /mushrooms/1/edit
    def edit
    end
  
    # POST /mushrooms or /mushrooms.json
    def create
      @mushroom = Mushroom.new(mushroom_params)
  
      respond_to do |format|
        if @mushroom.save
          format.html { redirect_to mushroom_url(@mushroom), notice: "Mushroom was successfully added." }
          format.json { render :show, status: :created, location: @mushroom }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @mushroom.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /mushrooms/1 or /mushrooms/1.json
    def update
      respond_to do |format|
        if @mushroom.update(mushroom_params)
          format.html { redirect_to mushroom_url(@mushroom), notice: "Mushroom was successfully updated." }
          format.json { render :show, status: :ok, location: @mushroom }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @mushroom.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /mushrooms/1 or /mushrooms/1.json
    def destroy
      @mushroom.destroy
  
      respond_to do |format|
        format.html { redirect_to mushrooms_url, notice: "Mushroom was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_mushroom
        @mushroom = Mushroom.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def mushroom_params
        params.require(:mushroom).permit(:name, :body, :psychedelic, :deadly)
      end
  end
  
