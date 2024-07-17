class Category < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :category, presence: true
  validates :description, presence: true
end
