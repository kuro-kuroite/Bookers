class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 64 }
  validates :comment, presence: true, length: { maximum: 256 }
end
