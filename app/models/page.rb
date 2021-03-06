class Page < ApplicationRecord
  has_many :comments, as: :parent
  validates :slug, uniqueness: true, presence: true, exclusion: {in: %w[signup login]}

  before_validation :generate_slug

  # def to_param
  #   slug # or "#{id}-#{name}".parameterize
  # end

  def generate_slug
    self.slug ||= name.parameterize
  end

end
