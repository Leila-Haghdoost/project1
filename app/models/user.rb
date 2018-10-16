class User < ApplicationRecord
  has_secure_password # makes 'password' field MANDATORY
  validates :email, presence: true, uniqueness: true
  has_many :recipes
  has_many :favlists
  ratyrate_rater 
end
