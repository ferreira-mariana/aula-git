class StoresController < ApplicationController
  def new
	@store = Store.new
  end

  def create
	@store = Store.new(store_params)
	if @store.save
		flash[:notice] = "Loja criada com sucesso."
		redirect_to stores_path
	else
		#sempre usar .now antes de render ;)
		flash.now[:alert] = "Algo de errado nao está certo."
		render "new"
	end
  end

  def index
	@stores = Store.all
  end

  def destroy
	@store = Store.find(params[:id])
	@store.destroy
	redirect_to stores_path
  end

  private

  def store_params
	params.require(:store).permit(:address, :telephone)
  end
end
