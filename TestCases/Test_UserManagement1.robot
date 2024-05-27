*** Settings ***
Documentation    Verify the User Management feature of the Admin
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close the Browser
Library    DataDriver    file=../TestData/Name.csv    encoding=utf_8    dialect=unix
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/AdminResource.robot
Test Template    Fill Partially the fields and click Search button


*** Test Cases ***
Search the Users    ${Username}

*** Keywords ***
Fill Partially the fields and click Search button
    [Arguments]    ${Username}
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the user management
    Click the users
    Enter the username    ${Username}
    Select the Status
    Click the search button