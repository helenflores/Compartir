class Apadrina < ActiveRecord::Base
	 set_primary_keys :codigoNino,:codigoPadrino
	 validates_presence_of :codigoNino,:codigoPadrino
end
