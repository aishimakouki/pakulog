class Shop < ApplicationRecord
  belongs_to :genre
  belongs_to :area
  belongs_to :user
  has_many :reviews

  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :genre_id, presence: true
  validates :area_id, presence: true
  validates :user_id, presence: true
  validates :review_avg, presence: true
  validates :budget_min , presence: true, :numericality => { :less_than => :budget_max }
  validates :budget_max, presence: true
end
