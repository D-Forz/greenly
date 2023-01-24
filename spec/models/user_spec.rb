require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { build(:user) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a username' do
      user.username = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without an email' do
      user.email = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a first name' do
      user.first_name = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a last name' do
      user.last_name = nil
      expect(user).to_not be_valid
    end
  end
end
