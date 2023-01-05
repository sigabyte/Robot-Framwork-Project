*** Settings ***
Documentation    GALA Furniture Project
Library    SeleniumLibrary
Library    ../Library/myLibrary.py

Variables    ../Resources/Locators/locators.py
Variables    ../Resources/TestData/testdata.py


Resource    ../Resources/Keywords/home.robot
Resource    ../Resources/Keywords/loginPage.robot
Resource    ../Resources/Keywords/searchPage.robot
Resource    ../Resources/Keywords/productPage.robot
Resource    ../Resources/Keywords/categoryPage.robot
Resource    ../Resources/Keywords/cartPage.robot


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
     Sleep    20s
     Validate the incorrect entry

Positive Search testing
    Click Search Button
    Product search in searchbox    room
    Validate Seacrh success
    Sort the result's price in ascending
    Lists products prices into console
    Goto details page of the cheapest product
    #Go to first product's details page
    Validate the product name as same with parameter    Domina Jar    

Negative Search Testing
    [Documentation]    Irrelevant searching test
    Click Search Button
    Unavailable product searching
    Validate Irrelavent Product Search  
    
List products below 400$
    Hower Homeoffice title and click Desk
    Validate the matching of the page and the title
    Use Price Filter with parameter
    Print out the list of products on console

Add product to the cart and remove product from cart
    Click the first product of Living Room category in homepage
    Click to add to cart button
    Click view my cart button
    Remove the product from the cart
    Validate the cart is empty

Subscribe to New Bulletin
    Go to bottom of the homepage
    Enter email addres
    Validate the subscription

Validate the address if it opens in Google Map
    Go to bottom of the homepage
    Click the address link
    Check Google Map if it opens

    















    