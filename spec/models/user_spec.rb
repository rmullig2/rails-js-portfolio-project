require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @user = User.new(email: 'test_user@yahoo.com', password: "password123") }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'test_user@yahoo.com'
  end

  it "#radmin is false by default" do
    expect(@user.admin?).to eq false
  end

end
