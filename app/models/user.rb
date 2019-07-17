class User < ApplicationRecord
has_many :projects, dependent: :destroy
has_many :tasks, dependent: :destroy
has_many :comments, dependent: :destroy
has_many :discussions, dependent: :destroy

has_secure_password

VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
      
validates :email, presence: true, uniqueness: true, format: VALID_EMAIL_REGEX
def full_name #we access this method in application.html.erb current_user.full_name 
    "#{first_name} #{last_name}".strip
  end
end
