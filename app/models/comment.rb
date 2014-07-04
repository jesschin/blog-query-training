class Comment < ActiveRecord::Base
  belongs_to :post
  has_one :guest

  has_paper_trail :ignore => [:id, :created_at, :updated_at]
end
