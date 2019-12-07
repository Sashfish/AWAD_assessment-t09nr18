class Property < ApplicationRecord
  has_one :feature

  def self.search(search)
    if search
      property=Property.find_by(address: search)
      if search
        self.where(address: property)
      else
        Property.all
      end
    else
      Property.all
    end
  end
end
