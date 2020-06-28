class MicropostsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  def index
      @microposts=Micropost.all.page(params[:page]).search(params[:search])
      @microposts = Micropost.all.order(id: :desc).page(params[:page]).per(30)
  end
  
  def new
  end
  
  def create
    @micropost=current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success]='I posted a message.'
      redirect_to root_url
    else
      @microposts=current_user.microposts
      flash.now[:danger]='Failed to post the message.'
      render 'toppages/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = 'Message deleted'
    redirect_back(fallback_location: root_path)
  end
  
  private

  def micropost_params
   params.permit(:content, :move, :place, :time, :necessary, :image)
  end
  
  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    unless @micropost
      redirect_to root_url
    end
  end


end
