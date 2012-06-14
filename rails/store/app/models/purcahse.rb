class Purcahse < ActiveRecord::Base
  attr_accessible :item, :price
  validates :price, :numericality => { greater_than_or_equal_to: 0}
end
