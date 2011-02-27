class PadrinoController < ApplicationController
  def create
  @padrino= Padrino.new ("codigo" => params[:code], "nombre" => params[:nombre], "nacionalidad" => params[:nac]);
  if @padrino.save
    	redirect_to padrino_path @padrino 
  	else
    	render :action => "new"
  	end
  end

  def edit
  end

  def show
  end

  def index
  end

  def update
  end

  def destroy
  end

  def new
  end

end
