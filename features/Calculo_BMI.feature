#language: en
Feature: Calculo por BMI
	In order to calculate my ideal weight
	As a user 
	I want to use the BMI formula

	Scenario: Calculo por BMI
		Given I am on the home page
		When I fill in "altura" with "170"
		And I select "cm" in "unidad"
		And I click "Calcular peso ideal"
		Then I should see "Su peso ideal es:"
		And I should see "BMI"
		And I should see "127.44"
		And I should see "127.44"
		And I should see "57.81"
		And I should see "57.81"
