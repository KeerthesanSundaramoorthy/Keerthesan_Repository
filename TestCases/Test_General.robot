*** Settings ***
Documentation    Verify the General Information feature of the Organization
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close the Browser
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/User.robot
Resource    ../Resources/GenInfo.robot

*** Test Cases ***
Verify the Text Box is enabled    
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the Organization
    Click the General Information
    Click the Edit
    Verify the Text Box is enabled

Edit the Organization Name
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the Organization
    Click the General Information
    Click the Edit
    Enter the Organization Name
    Click Save button
    Verify the success message is displayed
    
