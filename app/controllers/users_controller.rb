class UsersController < ApplicationController

  def partners
    User.where(type: :normal)
  end

  def activities
  end

  def trainers
  end

  def partner
    unless params[:partner_id].blank?
      @user = User.find(params[:partner_id])
    end
    render :json => UserProfileResponse.new(@user).data
  end

  def activity
  end

  def trainer
  end
end
