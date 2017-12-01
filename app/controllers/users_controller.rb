class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        if params[:search]
            @users=User.search(params[:search])
        else
            @users = User.where.not(id: current_user.id)
        end
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
            @tweetToLike=Tweet.find(@tweetToLike.id)
        else
            current_user.like(@tweetToLike)
            #@tweet2=Tweet.find(@tweetToLike.id)
        end
        respond_to do |format|
            format.js
        end
    end
end
