class ChartsController < ApplicationController
  def index
    prices1 = Property.where(price: 0..300000).count
    prices2 = Property.where(price: 300000..700000).count
    prices3 = Property.where('price > 700000').count
    @p = {'Under $300000'=>prices1, '$300000 - $700000'=>prices2, '$700000+'=>prices3}
  end
end
