class AlturaController < ApplicationController
	def recibir_altura
		@altura=params[:altura]
		@unidad=params[:unidad]
		
		begin
			#Convertir a número, si el valor no es numerico lanza error
			@fAlt=Float(@altura)		
			#Si no lanzo error es porque se convirtio a numero correctamente
			#Revisar que el valor dado sea mayor a 0
			if @fAlt<=0
				render "altura/menor_a_cero"
			else			
				render "altura/peso"
			end
		#Capturar el error en caso de entrada no numerica y desplegar el mensaje de error
		rescue ArgumentError
				render "altura/no_numerico"
		end
	end
end
