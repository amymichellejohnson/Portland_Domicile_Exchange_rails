class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  validates :price, :presence => true
  validates :title, :presence => true
  validates :details, :presence => true
  validates :location, :presence => true
end
