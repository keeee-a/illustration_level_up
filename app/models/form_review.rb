class FormReview
  include ActiveModel::Model
  attr_accessor :picture, :author, :account, :tag_id, :title, :comment, :user_id
  with_options presence: true do
    validates :picture
    validates :author
    validates :title
    validates :comment
    validates :user_id
  end

  def save
    review = Review.create(title: title, comment: comment, user_id: user_id)
    illustration = Illustration.create!(author: author, account: account, tag_id: tag_id, picture: picture, review_id: review.id)
  end
end