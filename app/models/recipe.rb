class Recipe < ApplicationRecord
  belongs_to :cuisine, optional:true
  belongs_to :user, optional:true

  # we can change the name of the association to whatever we want,
  # (i.e. r.favourited_by instead of r.users)
  # as long as we tell ActiveRecord which model class to use
  has_and_belongs_to_many :favourited_by, class_name: 'User'

  has_many :reviews

  # ratyrate_rateable "recipe"
end
