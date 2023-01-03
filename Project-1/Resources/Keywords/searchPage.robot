*** Settings ***
Library    SeleniumLibrary
Library    collections
Library    String

Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py


*** Keywords ***

Validate Seacrh success
    ${SeacrhResult}    Get Text    ${searchResultActual}
    #Should Contain    ${SeacrhResult}    results found for “room”
    ${strArray}    Split String    ${SeacrhResult}
    Should Be True    ${strArray}[0]>0
    

Sort the result's price in ascending
    Select From List By Value    ${priceDropBox}    price-ascending
    Sleep    2s
       
Go to first product's details page
    Click Link    ${firstProductInSearchpage}

Lists products prices into console
    # Liste elemanlarini $ ile veya @ ile tanimlayabilirim
    @{productlists}    Get WebElements    ${productsLinksLocator}
    
    # Liste elemanlarini dongulerde mutlaka @ ile cagirmaliyim
    FOR  ${product}  IN  @{productlists}
        ${productText}    Get Text    ${product}
        Log To Console    ${productText}
    END

Goto details page of the cheapest product 
    @{productsLink}    Get WebElements    ${productsLinksLocator}
    Click Link    ${productsLink}[0]
    Sleep    3

Validate Irrelavent Product Search
    ${SearchResult}    Get Text    ${searchResultActual}
    Should Contain    ${SearchResult}    No results found


    

        