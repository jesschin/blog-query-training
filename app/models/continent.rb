class Continent < ActiveRecord::Base
  has_many :authors
  has_many :countries
end
