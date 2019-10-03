class Api::V1::ProductsController < ApplicationController
    before_action :authorized

    def index
        products = current_user.products
        render json: products
    end

    def create
        product = current_user.products.create(product_params)
        if product.save
            render json: product
        else
            render json: { message: 'Product failed to save' }
        end
    end

    def update
        product = Product.find(params[:id])
        product.update(product_params)
        render json: product
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy
    end

    private

    def product_params
        params.require(:product).permit(:name, :size, :price, :product_type)
    end

end
