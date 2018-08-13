class Review < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :description, presence: true
  validates :evaluation, presence: true

  scope :find_new_review, -> { order(created_at: :desc).limit(5) }
end
