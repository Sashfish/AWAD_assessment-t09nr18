#Ruby, S., & Thomas, D. (2009). Agile web development with rails. Raleigh, NC: Pragmatic Bookshelf.
class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_line_item

def total_price
  line_items.to_a.sum {|item| item.total_price}
end

def add_property(property)
  current_item = line_items.find_by(property_id: property.id)
  if current_item
    current_item.quantity +=1
  else
    current_item = line_items.build(property_id: property.id)
  end
  current_item
end

  private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
