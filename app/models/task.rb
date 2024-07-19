class Task < ApplicationRecord
  belongs_to :category, optional: true
  validates :task, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
