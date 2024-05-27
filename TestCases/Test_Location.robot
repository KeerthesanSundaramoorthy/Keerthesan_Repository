*** Settings ***
Documentation    Verify the Search feature of the Organization
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close the Browser
Library    DataDriver    file=../TestData/Pay_Grade.xlsx    sheet_name=Sheet3
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/User.robot
Resource    ../Resources/Location.robot
Resource    ../Resources/GenInfo.robot
Test Template   Search a Organization

*** Test Cases ***
Search a Organization based on the Location    ${Name}   ${City}   

*** Keywords ***
Search a Organization
    [Arguments]    ${Name}    ${City}  
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the Organization
    Click the Location
    Fill the Form    ${Name}    ${City}
    Click the search button
    Verify the Search result