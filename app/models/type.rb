class Type < ActiveRecord::Base
  has_many :channels
  has_many :users, through: :channels
  has_many :messages
end
