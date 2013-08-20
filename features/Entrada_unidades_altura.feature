#language: en
Feature: Entrada de unidades de altura
	In order to calculate my ideal weight
	As a user 
	I want to input my height unit 


	Scenario: Entrada in
		Given I am on the home page
		When I fill in "altura" with "200"
		And I select "in" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
		
	Scenario: Entrada cm
		Given I am on the home page
		When I fill in "altura" with "200"
		And I select "cm" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
		
	Scenario: Entrada invalida
		Given I am on give an invalid unit via through an url
		Then I should see "La unidad seleccionada debe ser in o cm"
