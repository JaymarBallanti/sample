class Item < ActiveRecord::Base
  belongs_to :sale
  validates :item_name, :SKU, :retail_price, :date_sold, presence: true
end
