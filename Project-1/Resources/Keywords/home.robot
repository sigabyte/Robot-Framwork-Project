*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py

Resource    ../Keywords/RegisterPage.robot


*** Keywords ***
Click Create User link
    Click Link    ${NewUserCreateLink}  

    