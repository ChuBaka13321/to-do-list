require "rails_helper"

## note that due to the way we included this in our gemfile
#  namely 'require: false', means that we must explicitly include
#  it here
require 'shoulda/matchers'

describe User do

    it "has an email" do
      user = FactoryGirl.create(:a_user)
      expect(user.email).to_not be_nil
    end

    it "has a password" do
      user = FactoryGirl.create(:a_user)
      expect(user.password).to_not be_nil
    end

    ## our new tests that examine our User model to determine if 
    #  a validation exists requiring the presence of the attribute
    it { should validate_presence_of(:email) }

    it { should validate_presence_of(:password) }
end