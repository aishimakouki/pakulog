class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates : name, presence: true
  validates : description, presence: true
  validates : image, presence: true
  validates : budget_min, presence: true
  validates : budget_max, presence: true
  validates : genre_id, presence: true
  validates : area_id, presence: true
  validates : user_id, presence: true
  validates : review_avg, presence: true

end
