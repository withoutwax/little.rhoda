class ShoppingCartController < ApplicationController
  def shopping_cart_submit
    session[:value] = params[:value]
    redirect_to form_2
  end
end
