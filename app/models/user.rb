class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :spaces, dependent: :destroy
  has_many :followings, dependent: :destroy

  has_many :followed, through: :followings, source: :followable

  acts_as :followable

  def followers
    followable_id = acting_as.id
    Following.where(followable_id: followable_id).includes(:user).map(&:user)
  end
end
