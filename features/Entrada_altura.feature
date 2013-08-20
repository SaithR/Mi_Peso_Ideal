#language :en
Feature: Entrada de Altura
	In order to calculate my ideal weight
	As a user 
	I want to input my height 

	Scenario: Entrada valida
		Given I am on the home page
		When I fill in "altura" with "200"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
	Scenario: Entrada negativa	
		Given I am on the home page
		When I fill in "altura" with "-20"
		And I click "Calcular peso ideal"
		Then I should see "La altura debe ser un valor mayor a 0"
	Scenario: Entrada no numerica	
		Given I am on the home page
		When I fill in "altura" with "abc"
		And I click "Calcular peso ideal"
		Then I should see "La altura debe ser un valor numerico"		
	Scenario: Sin entrada	
		Given I am on the home page
		When I click "Calcular peso ideal"
		Then I should see "La altura debe ser un valor numerico"
