class ApiKey < ActiveRecord::Base
  validates :apikey, presence: true
  belongs_to :user
end
