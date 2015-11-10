class PoniesController < ApplicationController

  def index
    @ponies = Pony.all
    render :index
  end

  def show
    @pony = Pony.find(params[:id])
    render :show
  end

  def new
    @pony = Pony.new
    render :new
  end

  def create
    @pony = Pony.new(pony_params)
    if @pony.save
     redirect_to "index"
    else
     render :new
   end
  end

  def edit
    render :edit
  end

  def update
    pony = Pony.find(params[:id])
    if pony.update!(pony_params)
      redirect_to pony
    else
      render :edit
    end
  end

  def destroy
    Pony.find(params[:id]).destroy
    redirect_to "index"
  end

  private

  def pony_params
     params.require(:pony).permit(:name, :cutie_mark, :type, :address, :occupation, :picture)
   end
end
