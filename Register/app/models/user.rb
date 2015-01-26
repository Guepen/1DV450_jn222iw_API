class User < ActiveRecord::Base
  validates :email, :presence => true
  has_one :api_key
end
