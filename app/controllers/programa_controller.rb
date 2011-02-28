class ProgramaController < ApplicationController
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
  @programa= Programa.new("tipo"  => params[:tipo], "componente"=>params[:componente])
  if @programa.save
    	redirect_to nino_path @programa 
  	else
    	render :action => "new"
  	end
  end

end
