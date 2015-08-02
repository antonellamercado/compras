class BooksController < ApplicationController
before_action :get_current_provider
  def index
         @books=Book.all
  end
  def show

  end
  def new
   current_provider=Provider.find(params[:provider_id])
   @book=current_provider.books.new
  
#	@book = Book.new
  end


  def create
   #  @book=current_provider.books.build(book_params)
   current_provider=Provider.find(params[:provider_id])
    @book = current_provider.books.build(book_params)
    @book.provider_id = @provider_id
    @book.save
      redirect_to root_path , notice: "Libro agregado"
      
  end

  private
 def get_current_provider
  @provider=Provider.find(params[:provider_id])
 end
  def book_params
    params.require(:book).permit(:name,:price, :stock)
  end
end
