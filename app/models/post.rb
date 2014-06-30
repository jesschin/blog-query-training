class Post < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  has_many :tags
  belongs_to :country
  has_one :author
end
