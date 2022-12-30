*** Settings ***
Documentation    GALA Furniture Project
Library    SeleniumLibrary

Variables    ../Resources/Locators/locators.py
Variables    ../Resources/TestData/testdata.py


Resource    ../Resources/Keywords/home.robot
Resource    ../Resources/Keywords/loginPage.robot
Resource    ../Resources/Keywords/searchPage.robot
Resource    ../Resources/Keywords/productPage.robot


Test Setup    Open Browser    ${url}    ${browser}  
Test Teardown    Close All Browsers       


*** Test Cases ***
Craeate User
     Click Create User link
     Create new user
     Sleep    3s
     Approved registration
Positive Login Test
    [Documentation]    Login with an active username and password

    Click Login Link
    Login entry
    Approved registration
    Sleep    1s
Negative Login Test
    [Documentation]    Login test with wrong credentials
     Click Login Link
     Mistaken Login entry    snadega@gmal.com    1453
     #Validate the incorrect entry

Positive Search testing
    Click Search Button
    Searching Room in searchbox
    Validate Seacrh success
    Sort the result's price in ascending
    Lists products prices
    Goto details page of the cheapest product
    #Go to first product's details page
    Validate the product name as Domina Jar

Negative Search Testing
    [Documentation]    Irrelevant searching test
    Click Search Button
    Unavailable product searching
    Validate Irrelavent Product Search  









    