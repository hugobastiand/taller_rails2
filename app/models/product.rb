class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
  before_validation :set_premium
  def set_premium
  	self.premium ||= false
  end	
end
