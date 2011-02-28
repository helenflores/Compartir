class FamiliarController < ApplicationController
  def new
  end

  def show
  end

  def index
  end

  def update
  end

  def destroy
  end

  def create
  @familiar = Familiar.new("nombre" => params[:nombre], "apellido"=> params[:apellido], ocupacion=>params[:ocupacion] , salud=> params[:salud], salario=> params[:salario], fechaNac=> params[:fecha], fechaAct=> DateTime.now , estadoCivil=> params[:ec], parentesco=> params[:parentesco], lugarTrabajo=>params[:lugarT])
  	if @familiar.save
    	redirect_to familiar_path @familiar
  	else
    	render :action => "new"
  	end
  end

  def edit
  end

end
