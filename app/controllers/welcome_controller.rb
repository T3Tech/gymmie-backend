class WelcomeController < ApplicationController
  def index
    unless params[:user_id].blank?
      @user = User.find(params[:user_id])
    end

    respond_to do |format|
      format.html
      format.json { render :json => "Welcome To Gymmie" }
    end
  end
end
