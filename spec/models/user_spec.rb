require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures first name presence' do
      user = User.new(last_name: 'last', email: 'sample@example.com').save
      expect(user).to eq(false)
    end

    it 'ensures last name presence' do
      user = User.new(first_name: 'first', email: 'sample@example.com').save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(last_name: 'last', first_name: 'first', password: '123456').save
      expect(user).to eq(false)
    end

    it 'ensures password presence ' do
      user = User.new(first_name: 'first', last_name: 'last', email: 'sample@example.com').save
      expect(user).to eq(false)
    end

    it 'should save successfully ' do
      user = User.new(first_name: 'first', last_name: 'last', email: 'sample@example.com', password: '123456').save
      expect(user).to eq(true)
    end
  end

end
