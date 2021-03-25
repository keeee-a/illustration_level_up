class Review < ApplicationRecord
  has_one :illustration
  belongs_to :user
end
