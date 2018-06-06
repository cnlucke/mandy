class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'

  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end
end
