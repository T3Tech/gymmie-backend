class UserProfileResponse

  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def data
    [{
      name: user.name,
      description: user.description
    }]
  end

end