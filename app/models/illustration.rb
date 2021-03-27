class Illustration < ApplicationRecord
  has_one_attached :picture
  belongs_to :review
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tag
end
