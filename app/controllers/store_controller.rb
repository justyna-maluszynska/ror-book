# frozen_string_literal: true

class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @current_time = Time.now
  end
end
