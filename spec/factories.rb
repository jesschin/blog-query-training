FactoryGirl.define do

  factory :post do
    sequence(:title) { |n| "Post #{n} Title" }
    sequence(:body) { |n| "Post #{n} Body" }
  end
end
