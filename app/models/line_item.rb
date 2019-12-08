class LineItem < ApplicationRecord
  belongs_to :property
  belongs_to :cart
  def total_price
    property.price * quantity
  end
end
