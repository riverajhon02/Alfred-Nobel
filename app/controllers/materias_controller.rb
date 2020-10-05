class MateriasController < ApplicationController

  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    @materias = Materia.all
  end

  def show
  end

  def new
    @materia = Materia.new
  end

  def create
    @materia = Materia.new(materia_params)
    if @materia.save
      flash[:success] = "Materia creada"
      redirect_to materia_path(@materia)
    else
      render :new
    end
  end
  

  def edit
  end

  def update
    if @materia.update(materia_params)
      flash[:notice]="Materia Actualizada"
      redirect_to  materias_path(@materia)
    else
      render :edit
    end
  end

  def destroy
    @materia.destroy
    flash[:alert]="Materia Eliminada"
    redirect_to materias_path(@materia)
  end
  
  

  private

  def set_materia
    @materia = Materia.find(params[:id])
  end

  def materia_params
    params.require(:materia).permit(:codigo,:nombre)
  end
end
