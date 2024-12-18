class ProdutosController < ApplicationController
  before_action :set_product, only: %i[show update destroy]
  
  def index
    @products = Produto.all
    
    render json: @products
  end  

  def show
    render json: @product
  end

  def create
    @product = Produto.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
  end

  private

  def set_product
    @product = Produto.find(params[:id])
  end

  def product_params
    params.require(:produto).permit(:nome, :tipo, :peso)
  end
end
