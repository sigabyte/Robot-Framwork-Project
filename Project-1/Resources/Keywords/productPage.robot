*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py


*** Keywords ***
Validate the product name as same with parameter
    [Arguments]    ${cheapestProduct}
    ${productTitleText}    Get Text    ${productTitle}
    Should Contain    ${productTitleText}    ${cheapestProduct}
