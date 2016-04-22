class Server < ActiveRecord::Base

  enum role: [ :server, :manager ]

  has_secure_password

  has_many :tables

end
