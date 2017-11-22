class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @users = User.all
    end
    def follow
        userToFollow=User.find(params[:email])
        current_user.follow(userToFollow)
        
    end
end
