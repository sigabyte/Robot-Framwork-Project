*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py

Resource    ../Keywords/RegisterPage.robot


*** Keywords ***
Click Create User link
    Click Link    ${NewUserCreateLink}

Click Login Link
    Click Link    ${loginLink}

Click Search Button
    Click Button    ${searchButton}
    Sleep    2s
Product search in searchbox
    [Arguments]    ${productName}
    Input Text    ${searchBoxInput}    ${productName}
    Press Keys    ${searchBoxInput}    ENTER
    Sleep    3s

Unavailable product searching
    Input Text    ${searchBoxInput}    cucumber
    Press Keys    ${searchBoxInput}    ENTER
    Sleep    2s

Hower Homeoffice title and click Desk
    Mouse Over    ${homeofficeLocator}
    Click Link    ${deskLocator}

Click the first product of Living Room category in homepage
    Click Element    ${LivingRoomSetFirstProduct}

Go to bottom of the homepage
    Execute Javascript    window.scrollTo(0,10000) 
    Sleep    3s  
Enter email addres
    Input Text    ${newsBulletininput}    ${userName}
    Press Keys    ${newsBulletininput}    ENTER
    Sleep    30s
Validate the subscription  
    ${validationText}    Get Text    ${subscriptionValidate}
    Should Contain    ${validationText}    Thanks
Click the address link
    Click Link    ${addressLink}
    
Check Google Map if it opens
    
    ${resultBool}    Run Keyword And Return Status    Element Should Be Visible    Accept All
    Run Keyword If    ${resultBool}    Click Element    ${googleCookieBtn}
       

    ${googleMap}    Get Location    
    Should Contain    ${googleMap}    google         


      

    