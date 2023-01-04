*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py


*** Keywords ***
Validate the matching of the page and the title
    ${actualTitle}    Get Text    ${productTitle}
    Should Contain    ${actualTitle}    Desk

Use Price Filter with parameter
    Click Element    ${priceTag}
    Input Text    ${maxPriceInput}    400
    Sleep    5s
Print out the list of products on console
    ${products}    Get WebElements    ${ProductsTitles}
    FOR  ${prd}  IN  @{products}
    ${prdValue}    Get Text    ${prd}
    Log To Console    ${prdValue}    
    END
        
    
        



