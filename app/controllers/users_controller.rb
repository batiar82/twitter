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
        respond_to do |format|
            format.js
        end
    end
    def tweets
        @tweets=User.find(params[:id]).tweets
        render 'main/timeline'
    end
    def like
        @tweetToLike=Tweet.find(params[:id])
        if(current_user.liking?(@tweetToLike))
            current_user.unlike(@tweetToLike)
        else
            current_user.like(@tweetToLike)
        end
        respond_to do |format|
            format.js
        end
    end
end
