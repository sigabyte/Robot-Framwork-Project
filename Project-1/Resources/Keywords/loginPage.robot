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
    Sleep    2s

Mistaken Login entry
    [Arguments]    ${mailAdresi}    ${sifre}
    Input Text    ${emailboxLogin}    ${mailAdresi}
    Sleep    2s
    Input Password    ${passwordBoxLogin}    ${sifre}
    Sleep    2s
    Click Button    ${signinButton}
    Sleep    2s
Validate the incorrect entry
    ${errortext}    Get Text    ${error}
    Should Contain    ${errortext}    ${error}  

