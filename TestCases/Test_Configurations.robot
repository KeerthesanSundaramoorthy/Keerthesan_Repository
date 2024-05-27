*** Settings ***
Documentation   Configuration of the Email by the Admin
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close the Browser
Library    DataDriver    file=../TestData/Pay_Grade.xlsx    sheet_name=Sheet5
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/User.robot
Resource    ../Resources/Configurations.robot
Test Template   Configuration of the Email

*** Test Cases ***
Configuring the email      ${send_email_id}    ${test_email_id}

*** Keywords ***
Configuration of the Email
    [Arguments]    ${send_email_id}    ${test_email_id}
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the Configurations
    Click the Email Configurations
    Enter the Sent Email id    ${send_email_id}
    Click the Send Mail Checkbox
    Enable the Send Test Mail
    Enter the Test Email id    ${test_email_id}
    Click the Save button
    Verify the success message is displayed