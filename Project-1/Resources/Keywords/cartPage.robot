*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py


*** Keywords ***

Remove the product from the cart
    Click Link    ${removeLink}

Validate the cart is empty
    ${emptyCartText}    Get Text    ${emptyCart}
    Should Contain    ${emptyCartText}    Your cart is empty
