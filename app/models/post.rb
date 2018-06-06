class Post < ApplicationRecord
  belongs_to :feed
  belongs_to :author, class_name: "User"
  has_many :comments, as: :parent
end
