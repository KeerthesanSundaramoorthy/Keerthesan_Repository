*** Settings ***
Documentation    Verify the User Management feature of the Admin
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close the Browser
Library    DataDriver    file=../TestData/UserDetails.xlsx    sheet_name=Sheet1
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/User.robot
Test Template    Fill all the fields and click Search button



*** Test Cases ***
Search the Users    ${Condition}    ${user}    ${emp_name}

*** Keywords ***
Fill all the fields and click Search button
    [Arguments]    ${Condition}    ${user}    ${emp_name}
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the user management
    Click the users
    IF  '${Condition}'=='Valid'
        Enter the username    ${user}
        Select the ESS user role
        Enter employee name    ${emp_name}
        Select the Status 
        Click the search button
        Verify the Valid Search

    ELSE IF   '${Condition}'=='Partial'
        Enter the username    ${user}
        Select the Status
        Click the search button
        Verify the Valid Search
    
    ELSE IF   '${Condition}'=='Invalid'
        Enter the username    ${user}
        Select the Admin user role
        Click the search button
        Verify the Invalid Search

    END
    
    



