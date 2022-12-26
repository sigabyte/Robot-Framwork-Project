*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py


*** Keywords ***
Create new user
    Maximize Browser Window
    
    ${FLname}    FakerLibrary.Name
    Input Text    ${firstNmeBox}    ${FLname}
    Sleep    1s

    ${FLlastName}    FakerLibrary.Last Name
    Input Text    ${lastNameBox}    ${FLlastName}
    Sleep    1s

    #${FLemail}    FakerLibrary.Email
    Input Text    ${emailBox}    ${userName}
    Sleep    1s
    #${FLpassword}    FakerLibrary.Password
    Input Text    ${passwordBox}    ${pssword}
    Sleep    1s

    Click Button    ${createButton}
    Sleep    3s
Approved registration
    Element Should Be Visible    ${logoutBtn}     