#language: en
Feature: Calculo por Devine
	In order to calculate my ideal weight
	As a user 
	I want to use the Devine formula

	Scenario: Calculo por Devine
		Given I am on the home page
		When I fill in "altura" with "170"
		And I select "cm" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
		And I should see "Devine"
		And I should see "145.06"
		And I should see "135.16"
		And I should see "65.8"
		And I should see "61.31"
	
