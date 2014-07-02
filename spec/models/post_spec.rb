require 'rails_helper'

RSpec.describe Post, :type => :model do
  it { should belong_to(:category) }
  it { should have_many(:comments) }
  it { should have_many(:tags) }

  it "should have many comments" do
    g = Post.reflect_on_association(:comments)
    expect(g.macro).to eq(:has_many)
  end

  it "orders by title" do
    abc = Post.create(:title => "abc", :body => "blah")
    xyz = Post.create(:title => "xyz", :body => "blah")

    expect(Post.order(:title)).to eq([abc, xyz])
  end
end
