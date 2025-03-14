*** Settings ***
Library           AppiumLibrary
Library    XML

Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Test   Given Open Calculator
    [Documentation]    Ouvrir l'application calculatrice
    Open Calculator

    When I click addition
    Then I have resultat
        

     

                               

    