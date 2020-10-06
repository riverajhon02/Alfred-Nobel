class MateriasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    authorize Materia
    @materias = Materia.all
  end

  def show
    authorize @materia
  end

  def new
    @materia = Materia.new
    authorize @materia
  end

  def create
    @materia= Materia.new(materia_params)
    if @materia.save
      redirect_to materias_path
      flash.notice= 'Materia creado'
    else
      render :new
    end
  end

  def edit
    authorize @materia
  end

  def update
    if @materia.update(materia_params)
      redirect_to materias_path
      flash.notice= 'Materia actualizado'
    else
      render :edit
    end
  end

  def destroy
    @materia.destroy
    redirect_to materias_path
    flash.alert= 'Materia eliminado'
  end

  private

  def set_meteria
    @materia =Materia.find(params[:id])
  end

  def materia_params
    params.require(:materia).permit(:codigo, :nombre, user_ids: [])
  end
end
