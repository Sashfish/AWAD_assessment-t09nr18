class Property < ApplicationRecord
  has_one :feature
#https://github.com/mislav/will_paginate/wiki/Simple-search
  def self.search(search, page)
  paginate :per_page => 5, :page => page, :conditions => ['address like ?', "%#{search}%"], :order => 'address'
  end
end
