require 'rails_helper'

RSpec.describe Product, type: :model do

  #cat1 = Catgeory.find(1)

  describe 'Validations' do
    it 'should not exist for new records' do
      @product = Product.new
      @product.name='Mike'
      @product.price=10
      @product.category_id=1
      @product.quantity=2
      @product.save
      expect(@product.id).to be_present
    end

    it 'should not exist for new records' do
      @product = Product.new
      @product.price=10
      @product.category_id=1
      @product.quantity=2
      expect(@product.name).to be_present
    end

    it 'should not exist for new records' do
      @product = Product.new
      @product.name='Mike'
      @product.category_id=1
      @product.quantity=2
      expect(@product.price).to be_present
    end

    it 'should not exist for new records' do
      @product = Product.new
      @product.name='Mike'
      @product.price=10
      @product.category_id=1
      expect(@product.quantity).to be_present
    end

    it 'should not exist for new records' do
      @product = Product.new
      @product.name='Mike'
      @product.price=10
      @product.quantity=2
      expect(@product.category).to be_present
    end
  end
end
