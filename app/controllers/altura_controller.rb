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
			elsif @unidad=="in"||@unidad=="cm"	
				if @unidad=="cm"
					@cm=@fAlt
					@in=aIn(@cm)
				else					
					@in=@fAlt
					@cm=aCm(@in)
				end
				calcularDevine(@in)
				render "altura/peso"
			else
				render "altura/error_unidades"
			end
		#Capturar el error en caso de entrada no numerica y desplegar el mensaje de error
		rescue ArgumentError
				render "altura/no_numerico"
		end
	end
	
	def aIn(cm)
		return cm/2.54
	end
	
	def aCm(inc)
		return 2.54*inc
	end
		
	def calcularDevine(inc)
		@devineHLb=110+5.06*(inc-60)
		@devineMLb=100.1+5.06*(inc-60)
		@devineHKg=aKg(@devineHLb)
		@devineMKg=aKg(@devineMLb)
	end
	
	def aKg(lb)
		return 0.45359237*lb
	end
	
end
