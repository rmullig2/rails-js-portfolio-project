require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @user = User.new(email: 'test_user@yahoo.com', password: "password123") }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'test_user@yahoo.com'
  end

  it "#role is 'user' by default" do
    expect(@user.role).to eq "user"
  end

  it "#role can be set to :admin" do
    @user.role = :admin
    expect(@user.role).to eq "admin"
  end

end
