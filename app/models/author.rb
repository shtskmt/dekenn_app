class Author < ApplicationRecord
  ActiveAdmin.register Author do
    permit_params :name
  end
  has_many :posts
end
