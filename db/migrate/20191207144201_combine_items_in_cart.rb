class CombineItemsInCart < ActiveRecord::Migration[6.0]
  def up
    Cart.all.each do |cart|
        sums = cart.line_items.group(:property_id).sum(:quantity)
        sums.each do |property_id, quantity|
          if quantity >1
            cart.line_items.where(property_id: property_id).delete_all
            item = cart.line_items.build(property_id: property_id)
            item.quantity = quantity
            item.save!
        end
    end
  end

  def down
    LineItem.where("quantity>1").each do |line_item|
      line_item.quantity.times do
        LineItem.create!(
          cart_id: line_item.cart_id,
          property_id: line_item.property_id,
          quantity: 1
        )
    end
    line_item.destroy
  end
end
end
end
