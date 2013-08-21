#language: en
Feature: Calculo por Miller
	In order to calculate my ideal weight
	As a user 
	I want to use the Miller formula

	Scenario: Calculo por Miller
		Given I am on the home page
		When I fill in "altura" with "170"
		And I select "cm" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
		And I should see "Miller"
		And I should see "145.12"
		And I should see "137.54"
		And I should see "65.83"
		And I should see "62.39"
