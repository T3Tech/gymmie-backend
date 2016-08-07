class UsersController < ApplicationController

  def partners
    @users = User.where(user_type_id: UserType.find_by(name: :normal).id)
    render :json => PartnerResponse.new(@users).data
  end

  def activities
  end

  def trainers
  end

  def partner
    unless params[:partner_id].blank?
      @user = User.find(params[:partner_id])
    end
    render :json => PartnerResponse.new([@user]).data.first
  end

  def activity
  end

  def trainer
  end
end
