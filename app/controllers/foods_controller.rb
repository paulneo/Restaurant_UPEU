class FoodsController < ApplicationController
  def index
    @comidas = Food.all
  end

  def new
    @comida = Food.new
  end

  def create
    @comida = Food.new comida_parametros
    if @comida.save
      redirect_to foods_path
    else
      render new_food_path
    end
  end

  def edit
    @comida = Food.find(params[:id])
  end

  def update
    @comida = Food.find(params[:id])

    if @comida.update comida_parametros
      redirect_to foods_path
    else
      render edit_food_path
    end
  end
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private

  def comida_parametros
    params.require(:food).permit(:nombre,:precio,:imagen)
  end

end
