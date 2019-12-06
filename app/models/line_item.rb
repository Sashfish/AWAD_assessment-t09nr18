class LineItem < ApplicationRecord
  belongs_to :property
  belongs_to :cart
end
