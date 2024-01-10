class BooksController < ApplicationController


  def create
    @arthur = Arthur.find(params[:arthur_id])
    @book = @arthur.books.create(book_params)
    redirect_to arthur_path(@arthur)
  end

  def index
 @books=Book.all
  end

  def search
  @buk= Book.where("title LIKE ?","%"+params[:q]+"%")
  end




  private
    def book_params
      params.require(:book).permit(:title, :description)
    end

end

