class SituacionAcademicaController < ApplicationController
  def new
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  @academina = Situacion_academica.new("codigoNino" => params[:code], "anio"=> params[:anio], "grado" => params[:grado], "indice" => params[:indice], "observacion"=> params[:observacion],"centro" => params[:centro])
  	if @academica.save
    	redirect_to nino_path @academica 
  	else
    	render :action => "new"
  	end
  end

end
