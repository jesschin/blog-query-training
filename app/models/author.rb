class Author < ActiveRecord::Base
  belongs_to :post
  belongs_to :continent
  belongs_to :country
end
