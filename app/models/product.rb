class Product < ApplicationRecord
	  belongs_to :category
	  
	  scope :scope_premium, ->{ where(premium: true)}
	  scope :last_n, ->(cant) {order('id DESC').limit(cant)}

	  validates :price, presence: true
	  before_validation :set_premium
	  

	  def set_premium
	  	self.premium ||= false
	  end	

end
