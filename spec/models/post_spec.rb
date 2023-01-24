require 'rails_helper'

RSpec.describe Post, type: :model do
  let (:post) { build(:post) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(post).to be_valid
    end

    it 'is not valid without content' do
      post.content = nil
      expect(post).to_not be_valid
    end

    it 'is not valid without a user' do
      post.user = nil
      expect(post).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a user' do
      expect(post).to respond_to(:user)
    end

    it 'has many likes' do
      expect(post).to respond_to(:likes)
    end
  end
end
