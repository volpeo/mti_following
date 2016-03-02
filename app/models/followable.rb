class Followable < ActiveRecord::Base
  actable
  has_many :followings, dependent: :destroy
end
