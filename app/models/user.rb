class User < ApplicationRecord

  has_secure_password
  has_many :cities
  has_many :fav_cities
end
