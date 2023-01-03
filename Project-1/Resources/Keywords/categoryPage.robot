*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py


*** Keywords ***
Validate the page accuracy with title
    ${actualTitle}    Get Text    ${productTitle}
    Should Contain    ${actualTitle}    Desk

Use Price Filter with parameter
    Click Element    ${priceSekmesi}
    Input Text    ${maxFiyatInput}    400
    Sleep    5s



