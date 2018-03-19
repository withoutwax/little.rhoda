class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def create
    @product = Product.new(product_params)

    @product.save
    redirect_to @product
  end

  private
    def product_params
      params.require(:product).permit(:title, :description, :price)
    end
end
