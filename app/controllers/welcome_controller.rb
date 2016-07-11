class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render :json => "Welcome To Gymmie" }
    end
  end
end
