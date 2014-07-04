class Post < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  has_many :tags

  has_paper_trail :ignore => [:created_at, :updated_at]
end
