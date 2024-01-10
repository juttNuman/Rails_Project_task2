class ArthursController < ApplicationController
  


  def index
    @arthurs=Arthur.all
  end

  def show
    @arthur= Arthur.find(params[:id])
  end

  def new
  @arthur=Arthur.new
  end
  
  def create
   @arthur=Arthur.new(arthur_params)
   if @arthur.save 
    redirect_to @arthur
  end

end



private
def arthur_params
  params.require(:arthur).permit(:name)
end



end
