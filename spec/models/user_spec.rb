require 'rails_helper'

RSpec.describe User, type: :model do
  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  context "validations" do

    context "presence" do
      it { should have_valid(:first_name).when("John") }
      it { should have_valid(:last_name).when("Smith") }
      it { should have_valid(:email).when("john@smith.com") }
      it { should have_valid(:encrypted_password).when("123456") }
      it { should have_valid(:avatar).when("", nil) }
    end

    context "invalid presence" do
      it { should_not have_valid(:first_name).when(nil, '') }
      it { should_not have_valid(:last_name).when(nil, '') }
      it { should_not have_valid(:email).when(nil, '', 'suzy') }
      it { should_not have_valid(:encrypted_password).when(nil, '', '12345') }
    end

      it { should have_many(:reviews) }
  end

  describe "#admin?" do
    it "is not an admin if the role is not admin" do
      user = FactoryBot.create(:user, role: "member")
      expect(user.admin?).to eq(false)
    end

    it "is an admin if the role is admin" do
      user = FactoryBot.create(:user, role: "admin")
      expect(user.admin?).to eq(true)
    end
  end
end
