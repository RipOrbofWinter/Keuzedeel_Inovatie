class User < ApplicationRecord
	has_one_attached :image
	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
	#REGEX matching language for more look at http://www.rubular.com/
	  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                  format: { with: VALID_EMAIL_REGEX },
	                  uniqueness: { case_sensitive: false }
    has_secure_password
  	validates :password, presence: true, length: { minimum: 6 }

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
end