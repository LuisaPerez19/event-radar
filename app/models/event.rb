class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  CATEGORIES = %w[Music Education Business Food&Drink Performing&VisualArts]
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
