class Task < ApplicationRecord
  belongs_to :category
  validates :task, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
