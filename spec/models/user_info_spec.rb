require 'rails_helper'

RSpec.describe UserInfo, type: :model do
  before(:each) { @user_info = UserInfo.new(name: 'John Smith', city: "Chicago", state: "ILL", user_id: 1) }

  subject { @user_info }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@user_info.name).to match 'John Smith'
  end
  
  it { should respond_to(:city) }

  it "#city returns a string" do
    expect(@user_info.city).to match 'Chicago'
  end

  it { should respond_to(:state) }

  it "#state returns an string" do
    expect(@user_info.state).to match "ILL"
  end
  
  it { should respond_to(:user_id) }

  it "#user_id returns an integer" do
    expect(@user_info.user_id).to match 1
  end
  
  it { should respond_to(:user) }

  it "user_info has a user" do
    expect(Book.new).to respond_to(:user)
  end
  
end
