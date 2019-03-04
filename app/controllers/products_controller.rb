class ProductsController < ApplicationController

  def create
    @product = Product.create(product_params)
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :inventory, :description)
    end
end
