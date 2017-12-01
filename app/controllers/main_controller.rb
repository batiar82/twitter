class MainController < ApplicationController
  before_action :authenticate_user!
  def welcome
    #if user_signed_in?
      user_ids=current_user.following.ids
      favorite_ids=current_user.favtweets.ids
      @tweets=Tweet.where("user_id = ? OR user_id IN (?) OR id in(?)",current_user.id,user_ids,favorite_ids)
      render 'timeline'
    #else
      #render template: "devise/sessions/new"
     # redirect_to "/users/sign_in"
    #end
  end
end

