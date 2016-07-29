class User < ApplicationRecord
  belongs_to :user_type
  belongs_to :gym

  has_many :user_goals
  has_many :goals, through: :user_goals
  has_many :user_interests
  has_many :interests, through: :user_interests

  has_many :workouts

  def name
    first_name + " " +last_name
  end

end
