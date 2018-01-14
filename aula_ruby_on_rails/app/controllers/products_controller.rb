class ProductsController < ApplicationController
  def new
	@product = Product.new
  end


  def create
	@product = Product.new(product_params)
	if @product.save
		flash[:notice] = "Produto adicionado com sucesso!"
		redirect_to products_path
	else
		flash.now[:alert] = "Algo de errado não está certo."
		render "new"
	end
  end


  def index
	@products = Product.all
  end


  def destroy
	@product = Product.find(params[:id])
	@product.destroy
	redirect_to products_path
  end


  def product_params
	params.require(:product).permit(:name, :category, :price)
  end


end
