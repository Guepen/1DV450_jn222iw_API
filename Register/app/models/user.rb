class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => {:message => "A user needs to have an e-mail!"},
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  has_one :api_key, dependent: :destroy
  has_secure_password
end
