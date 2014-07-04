class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  simple_roles
  has_paper_trail :ignore => [:encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :created_at, :updated_at]
end
