class ToppagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build  
      @microposts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end

end
