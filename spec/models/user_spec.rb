require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'should have a matching passwords ' do
      @user = User.new(name: 'foo', password:'bar', password_confirmation: 'bar')
      # @user.password = 'ok'
      expect(@user.password).to eq(@user.password_confirmation)
    end

    it 'should fail when passwords dont match' do
      @user = User.new(name: 'foo', password:'bar', password_confirmation: 'bar5')
      # @user.password = 'ok'
      expect(@user.password).to eq(@user.password_confirmation)
    end

    it 'should fail if emails are in different cases' do
      @user = User.new(name: 'foo', password:'bar', password_confirmation: 'bar5')
      # @user.password = 'ok'
      expect(@user.password).to eq(@user.password_confirmation)
    end





  end

end
