class Review < ApplicationRecord
  belongs_to :recipe, optional:true
  belongs_to :user, optional:true
end