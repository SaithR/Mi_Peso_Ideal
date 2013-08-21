class AlturaController < ApplicationController
	def recibir_altura
		@altura=params[:altura]
		@unidad=params[:unidad]
		
		begin
			#Convertir a número, si el valor no es numerico lanza error
			@fAltura=Float(@altura)		
			#Si no lanzo error es porque se convirtio a numero correctamente
			#Revisar que el valor dado sea mayor a 0
			if @fAltura<=0
				render "altura/menor_a_cero"
			elsif @unidad=="in"||@unidad=="cm"	
				if @unidad=="cm"
					@cms=@fAltura
					@inches=toInches(@fAltura)
				else					
					@inches=@fAltura
					@cms=toCms(@fAltura)
				end
				calcularBMI(@inches)
				calcularDevine(@inches)
				calcularRobinson(@inches)
				calcularMiller(@inches)
				render "altura/peso"
			else
				render "altura/error_unidades"
			end
		#Capturar el error en caso de entrada no numerica y desplegar el mensaje de error
		rescue ArgumentError
				render "altura/no_numerico"
		end
	end
	
	def toInches(cms)
		return cms/2.54
	end
	
	def toCms(inches)
		return 2.54*inches
	end
	
	def calcularBMI(inches)
		@BMILb=20*(inches*inches)/703
		@BMIKg=toKgs(@BMILb)
	end

	def calcularDevine(inches)
		@devineHLb=110+5.06*(inches-60)
		@devineMLb=100.1+5.06*(inches-60)
		@devineHKg=toKgs(@devineHLb)
		@devineMKg=toKgs(@devineMLb)
	end

	def calcularRobinson(inches)
		@robinsonHLb=114.4+4.18*(inches-60)
		@robinsonMLb=107.8+3.74*(inches-60)
		@robinsonHKg=toKgs(@robinsonHLb)
		@robinsonMKg=toKgs(@robinsonMLb)
	end

	def calcularMiller(inches)
		@millerHLb=123.64+3.10*(inches-60)
		@millerMLb=116.82+2.99*(inches-60)
		@millerHKg=toKgs(@millerHLb)
		@millerMKg=toKgs(@millerMLb)
	end
	
	def toKgs(lb)
		return 0.45359237*lb
	end
	
end
