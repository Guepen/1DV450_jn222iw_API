class ApiKey < ActiveRecord::Base
  before_create :generate_new_apikey
  belongs_to :user
  validates :apikey, presence: true, uniqueness: true

  def generate_new_apikey
    #http://railscasts.com/episodes/352-securing-an-api?view=asciicast
    begin
      self.apikey = SecureRandom.hex
    end while self.class.exists?(apikey: apikey)
  end
end
