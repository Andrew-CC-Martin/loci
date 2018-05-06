require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without an email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end
  
  it "is not valid without a first name" do
    user = User.new(first_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a last name" do
    user = User.new(last_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user = User.new(password: nil)
    expect(user).to_not be_valid
  end

  it "should have a unique email" do
    User.create!(email: 'foo', first_name: 'foo', last_name: 'foo', password: 'foo')
    user = User.new(email: 'foo', first_name: 'foo', last_name: 'foo', password: 'foo')
    expect(user).to_not be_valid
  end
  
  # Test for - password length
end
