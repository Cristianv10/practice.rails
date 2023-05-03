class ProductsController < ApplicationController
        def index
          @products = Product.all
          @pagy, @products = pagy(Product.order(created_at: :desc), items: 2)

        end
      
        def show
          @product = Product.find(params[:id])
        end
      end
