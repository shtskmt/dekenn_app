class Post < ApplicationRecord
  belongs_to :author
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }

end
