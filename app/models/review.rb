class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :presence => true
  validates :rating, :presence => true
  validates :content_body, :presence => true
  validates_length_of :content_body, :in => 50..250, :allow_nil => true



end
