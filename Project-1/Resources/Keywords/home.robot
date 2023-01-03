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


      

    