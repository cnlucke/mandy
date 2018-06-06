class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :parent, polymorphic: true
  scope :by_parent, lambda { |parent_id| where(parent_id: parent_id) unless parent_id.nil? }
end
