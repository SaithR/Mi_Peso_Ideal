#language: en
Feature: Calculo por Robinson
	In order to calculate my ideal weight
	As a user 
	I want to use the Robinson formula

	Scenario: Calculo por Robinson
		Given I am on the home page
		When I fill in "altura" with "170"
		And I select "cm" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
		And I should see "Robinson"
		And I should see "143.36"
		And I should see "133.71"
		And I should see "65.03"
		And I should see "60.65"
