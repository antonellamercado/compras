class ProvidersController < ApplicationController
  def index
         @providers=Provider.all
  end
  def show
         @provider= Provider.find(params[:id])
         @book = @provider.books.new
  end
  def new
    @provider=Provider.new
  end
  def create
    @provider=Provider.new(provider_params)
    if @provider.save
      redirect_to providers_path , notice: "Proveedor agregado"
    else
      render :new
    end   
  end

  protected
  def provider_params
    params.require(:provider).permit(:name,:address)
  end
end
