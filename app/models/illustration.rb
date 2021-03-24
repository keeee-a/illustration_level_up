class Illustration < ApplicationRecord
  has_one_attached :picture
  belongs_to :review
end
