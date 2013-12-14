class User < ActiveRecord::Base
  has_many :channels
  has_many :types, through: :channels
end
