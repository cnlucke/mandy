class Page < ApplicationRecord
  has_many :comments, as: :parent
end
