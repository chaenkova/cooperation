class Scene < ApplicationRecord
  belongs_to :background
  belongs_to :character
  has_many :users
  has_many :choices


  #sound
  #choices

end
