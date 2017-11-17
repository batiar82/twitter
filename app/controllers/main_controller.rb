class MainController < ApplicationController
  def welcome
    if user_signed_in?
      @tweets=current_user.tweets
     
    end
  end
end
