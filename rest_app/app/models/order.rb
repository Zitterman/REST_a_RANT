class Order < ActiveRecord::Base

  belongs_to :table
  belongs_to :menu_item

end
