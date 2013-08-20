#language: en
Feature: Conversion de unidades de altura
	In order to calculate my ideal weight
	As a user 
	I want to transform my height from cm to in and in to cm
	
	Scenario: Entrada en cm
		Given I am on the home page
		When I fill in "altura" with "100"
		And I select "cm" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su altura es:"
		And I should see "100.0"
		And I should see "39.37"

	Scenario: Entrada en in
		Given I am on the home page
		When I fill in "altura" with "100"
		And I select "in" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su altura es:"
		And I should see "254.0"
		And I should see "100.0"
