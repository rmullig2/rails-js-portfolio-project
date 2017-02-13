require 'rails_helper'
require 'support/factory_girl'
require 'support/request_spec_helper'

RSpec.configure do |config|
  config.include RequestSpecHelper
end

RSpec.describe "Sessions" do
  it 'user cannot sign in if not registered' do
    #binding.pry
    sign_in(email: 'jsmith@google.com', password: 'password123')
    binding.pry
    expect(page).to have_content(/#{I18n.t('devise.failure.not_found_in_database', authentication_keys: 'email')}/i)
  end

  it 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    sign_in(email: user.email, password: user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end

  it 'user cannot sign in with wrong email' do
    user = FactoryGirl.create(:user)
    sign_in(email: 'invalid@email.com', password: user.password)
    expect(page).to have_content(/#{I18n.t('devise.failure.not_found_in_database', authentication_keys: 'email')}/i)
  end

  it 'user cannot sign in with wrong password' do
    user = FactoryGirl.create(:user)
    sign_in(email: user.email,  password: 'invalidpass')
    expect(page).to have_content(/#{I18n.t('devise.failure.invalid', authentication_keys: 'email')}/i)
  end
end
