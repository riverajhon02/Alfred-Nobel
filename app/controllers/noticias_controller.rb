class NoticiasController < ApplicationController
  before_action :set_noticia, only: [:show, :edit, :update, :destroy]


    def index
      @noticias=Noticia.all
    end


    def show
    end

    def new
      @noticia=Noticia.new
    end

    def create
      @noticia = Noticia.new(noticia_params)
      if @noticia.save
        redirect_to noticias_path
        flash[:success] = 'Noticia creada'
      else
        render :new
      end

    end

    def update
      if @noticia.update(noticia_params)
        redirect_to noticias_path
        flash[:notice]="Noticia editada"
      else
        render :edit
      end
    end

    def destroy
      @noticia.destroy
      redirect_to noticias_path
      flash[:alert] ="Noticia eliminada"
    end

    def edit
    end

    def set_noticia
      @noticia = Noticia.find(params[:id])
    end

    def noticia_params
      params.require(:noticia).permit(:titulo,:descripcion,:informacion,:fecha)
    end
end
