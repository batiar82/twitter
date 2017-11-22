class MainController < ApplicationController
  before_action :authenticate_user!
  def welcome
    #if user_signed_in?
      @tweets=current_user.tweets
    #else
      #render template: "devise/sessions/new"
     # redirect_to "/users/sign_in"
    #end
  end
end

