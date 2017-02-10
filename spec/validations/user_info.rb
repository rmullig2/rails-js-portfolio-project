require "rails_helper"

RSpec.describe UserInfo, type: :model do
  User.create(email: 'test_user@yahoo.com', password: "password123")
  before(:each) { @user_info = UserInfo.new(name: "Ray Mulligan", city: "Bellmore", state: "NY") }

  it "should not save without a user_id" do
    @user = User.last
    #binding.pry
    expect(@user_info.save).to eq(false)
  end
  
  it "should save with a user" do
    @user = User.last
    @user_info.update(user: @user)
    @user_info.save
    expect(UserInfo.last.name).to match "Ray Mulligan"
  end
  
end