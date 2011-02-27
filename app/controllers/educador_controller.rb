class EducadorController < ApplicationController
  def index
  end

  def show
  end

  def create
  @educador = Educador.new("codigo"=> params[:code], "nombre" => params[:nombre], "apellido"=> params[:apellidos])
  end

  def update
  end

  def destroy
  end

  def new
  end

  def edit
  end

end
