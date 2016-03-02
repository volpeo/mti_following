class Space < ActiveRecord::Base
  belongs_to :user

  acts_as :followable
end