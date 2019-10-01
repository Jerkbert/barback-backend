class Api::V1::ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
    end

    def create
        product = Product.create(product_params)
        if product.save
            render json: product
        else
            render json: { message: 'Product failed to save' }
        end
    end

    def show
        product = Product.find(params[:id])
        render json: product
    end

    def update
        product = Proudct.find(params[:id])
        product.update(product_params)
        render json: product
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy
    end

    private

    def product_params
        params.require(:product).permit(:name, :size, :price, :type)
    end

end
