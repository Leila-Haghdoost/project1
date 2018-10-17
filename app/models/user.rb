class User < ApplicationRecord
  has_secure_password # makes 'password' field MANDATORY
  validates :email, presence: true, uniqueness: true
  has_many :recipes


  # we can change the name of the association to whatever we want,
  # (i.e. u.favourites instead of u.recipes - which is already being used to refer to
  # the recipes created by this user)
  # as long as we tell ActiveRecord which model class to use
  has_and_belongs_to_many :favourites, class_name: 'Recipe'

  has_many :reviews

  # ratyrate_rater
end
