*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py


*** Keywords ***
Validate the product name as same with parameter
    [Arguments]    ${cheapestProduct}
    ${productTitleText}    Get Text    ${productTitle}
    Should Contain    ${productTitleText}    ${cheapestProduct}

Click to add to cart button
    Click Button    ${addProductToCart}
    Sleep    2s

Click view my cart button
    Click Button    ${cartLink}
    


