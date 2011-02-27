class NinoController < ApplicationController
protect_from_forgery :only => [:create, :update, :destroy]
	def index
		@ninos = Nino.all
		respond_to do |format|
		        format.html
		        format.xls { send_data @ninos.to_xls_data, :filename => 'ninos.xls' }
					  format.db  { send_data system "mysqldump -u compartir -pdatos AsocCompartir_development"}
		end
	end
	

	def show
    
  	end

  	def create
	@nino = Nino.new("codigo" => params[:code], "nombre"=> params[:nombre], "apellido" => params[:apellido], "estadoPadrinazgo" => params[:padrinazgo], "fechaNac" => params[:fecha], "sexo" => params[:sexo], "habitaCon" => params[:habita], "nombreCentro"=> params[:centro], "nombreSector" => [:sector], "codigoEducador" => params[:codigo])
  	if @nino.save
    	redirect_to nino_path @nino 
  	else
    	render :action => "new"
  	end
	end

 	 def edit
  	end

  	def update
 	end

 	def destroy
  	end

  	def new
	
  	end

end
