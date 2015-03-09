class Wishlist < ActiveRecord::Base
  belongs_to  :user
  has_many    :products

  validates :title, :presence => {:message => "What is this list for?"}
end
