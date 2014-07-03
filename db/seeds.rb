# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
diary = Category.create(:name => "Diary")
social = Category.create(:name => "Social")

post_daily = Post.create(:title => "My Daily Life", :body => "Hello Hello", :category => diary)
post_nightly = Post.create(:title => "My Night Life", :body => "Not applicable", :category => diary)

post_daily_comment1 = Comment.create(:body => "Awww Daily life 1", :post => post_daily)
post_daily_comment2 = Comment.create(:body => "Awww Daily life 2", :post => post_daily)
post_nightly_comment1 = Comment.create(:body => "Awww Nightly life 1", :post => post_nightly)
post_nightly_comment2 = Comment.create(:body => "Awww Nightly life 1", :post => post_nightly)

post_awkward = Post.create(:title => "Awkward Penguin", :body => "Social skills 101", :category => social)
post_extrovert = Post.create(:title => "Good Guy Greg", :body => "Extrovert Extraordinaire", :category => social)

post_awkward_comment1 = Comment.create(:body => "Awww Awkward life 1", :post => post_awkward)
post_awkward_comment2 = Comment.create(:body => "Awww Awkward life 2", :post => post_awkward)
post_extrovert_comment1 = Comment.create(:body => "Awww Extrovert life 1", :post => post_extrovert)
post_extrovert_comment2 = Comment.create(:body => "Awww Extrovert life 1", :post => post_extrovert)

guest_daily_comment1 = Guest.create(:name => "Daily Guest 1", :comment => post_daily_comment1)
guest_daily_comment2 = Guest.create(:name => "Daily Guest 2", :comment => post_daily_comment2)
guest_nightly_comment1 = Guest.create(:name => "Nightly Guest 1", :comment => post_nightly_comment1)
guest_nightly_comment2 = Guest.create(:name => "Nightly Guest 2", :comment => post_nightly_comment2)
guest_awkward_comment1 = Guest.create(:name => "Awkward Guest 1", :comment => post_awkward_comment1)
guest_awkward_comment2 = Guest.create(:name => "Awkward Guest 2", :comment => post_awkward_comment2)
guest_extrovert_comment1 = Guest.create(:name => "Extrovert Guest 1", :comment => post_extrovert_comment1)
guest_extrovert_comment2 = Guest.create(:name => "Extrovert Guest 2", :comment => post_extrovert_comment2)

post_daily_tag1 = Tag.create(:name => "#diary", :post => post_daily)
post_daily_tag2 = Tag.create(:name => "#1", :post => post_daily)
post_nightly_tag1 = Tag.create(:name => "#diary", :post => post_nightly)
post_nightly_tag2 = Tag.create(:name => "#2", :post => post_nightly)
post_awkward_tag1 = Tag.create(:name => "#social", :post => post_awkward)
post_awkward_tag2 = Tag.create(:name => "#1", :post => post_awkward)
post_extrovert_tag1 = Tag.create(:name => "#social", :post => post_extrovert)
post_extrovert_tag2 = Tag.create(:name => "#2", :post => post_extrovert)

# User.create(:email => "admin@test.com", :password => "password")
User.create(:email => "admin@test.com", :password => "password", :role => :admin)
User.create(:email => "user@test.com", :password => "password", :role => :user)











