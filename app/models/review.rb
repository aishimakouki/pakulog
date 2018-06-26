class Review < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  validates : title, presence: true
  validates : description, presence: true
  validates : evaluation, presence: true

end
