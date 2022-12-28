*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py

Resource    ../Keywords/home.robot

*** Keywords ***
Login entry
    Input Text    ${emailboxLogin}    ${userName}
    Sleep    2s
    Input Password    ${passwordBoxLogin}    ${pssword}
    Sleep    2s
    Click Button    ${signinButton}
