class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :products

  validates :product_id, presence: true
  validates :product_id, presence: true


end
