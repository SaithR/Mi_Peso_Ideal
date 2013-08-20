#language: es
Característica: Entrada de Altura
	Como usuario 
	Quiero proporcionar mi altura 
	Para obtener el calculo de mi peso ideal

	Escenario: Entrada valida
		Dado que un usuario quiere ingresar su altura
		Cuando es positiva 
		Entonces el sistema la acepta.
	Escenario: Entrada invalida
		Dado que un usuario quiere ingresar su altura 
		Cuando es negativa 
		Entonces el sistema no la acepta 
		Y despliega un mensaje de error.
	Escenario: Entrada invalida
		Dado que un usuario quiere ingresar su altura 
		Cuando no es numerica 
		Entonces el sistema no la acepta 
		Y despliega un mensaje de error. 
