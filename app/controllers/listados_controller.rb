class ListadosController < ApplicationController
	def index
		@educador = Educador.all
	end

	def busqueda
		@imprime = params[:educ]
	end
end
