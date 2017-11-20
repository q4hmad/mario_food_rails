class Product < ActiveRecord::Base
  has_many :reviews
  validates :country_of_origin, :presence => true
  validates :cost, :presence => true
  validates :country_of_origin, :presence => true

  scope :most_reviews, -> {(
    select("products.id, products.name,  count(reviews.id) as Reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
    )}

  scope :most_recent, -> { order(created_at: :desc).limit(10)}
  scope :country, -> { where(country_of_origin: 'USA') }
end
