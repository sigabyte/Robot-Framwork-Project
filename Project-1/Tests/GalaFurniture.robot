*** Settings ***
Documentation    GALA Furniture Project
Library    SeleniumLibrary

Variables    ../Resources/Locators/locators.py
Variables    ../Resources/TestData/testdata.py


Resource    ../Resources/Keywords/home.robot
Resource    ../Resources/Keywords/loginPage.robot


Test Setup    Open Browser    ${url}    ${browser}   
Test Teardown    Close All Browsers       


*** Test Cases ***
Craeate User
     Click Create User link
     Create new user
     Sleep    3s
     Approved registration
Login Test
    [Documentation]    Login with an active username and password

    Click Login Link
    Login entry
    Approved registration




    