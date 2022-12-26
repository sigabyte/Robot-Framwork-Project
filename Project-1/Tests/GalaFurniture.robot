*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/Locators/locators.py
Variables    ../Resources/TestData/testdata.py


Resource    ../Resources/Keywords/home.robot


Test Setup    Open Browser    ${url}    ${browser}   
Test Teardown    Close All Browsers       


*** Test Cases ***
Craeate User
     Click Create User link
     Create new user
     Approved registration



    