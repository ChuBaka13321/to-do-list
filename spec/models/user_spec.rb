require "rails_helper"


describe User do

    it "has an email" do
      expect(user.email).to_not be_nil  
    end

    it "has a password" do
      expect(user.password).to_not be_nil
    end

end