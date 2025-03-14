*** Settings ***
Library           AppiumLibrary
Library    XML


Resource   ../resources/variables.robot

	

*** Keywords ***
Open Calculator
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}    




I click addition 
    sleep    3
    Click Element    id=com.google.android.calculator:id/digit_9 
    Click Element    id=com.google.android.calculator:id/op_add	
    Click Element    id=com.google.android.calculator:id/digit_1
    



I have resultat
    ${resultat} =   Get Text   id=com.google.android.calculator:id/result_preview
    Should Be Equal   ${resultat}   10
