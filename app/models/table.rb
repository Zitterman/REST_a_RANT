class Table < ActiveRecord::Base

  belongs_to :server

  has_many :orders

end
