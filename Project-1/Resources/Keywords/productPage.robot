*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py


*** Keywords ***
Validate the product name as Domina Jar
    ${productTitleText}    Get Text    ${productTitle}
    Should Contain    ${productTitleText}    Domina Jar
