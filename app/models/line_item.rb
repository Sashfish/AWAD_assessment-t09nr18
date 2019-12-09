#Ruby, S., & Thomas, D. (2009). Agile web development with rails. Raleigh, NC: Pragmatic Bookshelf.
class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :property, optional: true
  belongs_to :cart

  def total_price
    property.price * quantity
  end
end
