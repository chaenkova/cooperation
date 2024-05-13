class Scene < ApplicationRecord
  belongs_to :background
  belongs_to :characters
  has_many :users
  belongs_to :prev_scene, class_name: "Scene", optional: true
  belongs_to :next_scene, class_name: "Scene", optional: true

  #sound
  #choices

end
