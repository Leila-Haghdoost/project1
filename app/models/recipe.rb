class Recipe < ApplicationRecord
  belongs_to :cuisine, optional:true
  belongs_to :user, optional:true

  has_and_belongs_to_many :favlists
  has_many :reviews

  # ratyrate_rateable "recipe"
end
