class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @users = User.all
    end
    def follow
        @userToFollow=User.find(params[:id])
        if current_user.following?(@userToFollow)
            current_user.unfollow(@userToFollow)
        else
            current_user.follow(@userToFollow)
        end
        @palabra="lalala"
        respond_to do |format|
            format.js
        end
    end
     def unfollow
        userToUnFollow=User.find(params[:email])
        current_user.unfollow(userToUnFollow)
        respond_to do |format|
            format.js
        end
    end
end
