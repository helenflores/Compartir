class CentroController < ApplicationController
  def index
  end

  def show
  end

  def creat
	@centro = Centro.new("nombre"=> params[:nombre], "sector"=> [:sec], "codigoAdministrador" => params[:admon])
  	if @centro.save
    	redirect_to centro_path @centro
  	else
    	render :action => "new"
  	end
  end

  def edit
  end

  def new
  end

  def update
  end

  def destroy
  end

end
