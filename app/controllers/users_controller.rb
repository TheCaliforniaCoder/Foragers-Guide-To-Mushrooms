class UsersController < ApplicationController
    before_action :set_user, only: %i[ edit update destroy ]
  
    # GET /users 
    def index
      @user = current_user
      @default_mushrooms = @user.default_mushrooms
    end
end
  