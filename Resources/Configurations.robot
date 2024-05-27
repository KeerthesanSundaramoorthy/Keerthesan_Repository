*** Settings ***
Documentation   The Resource contains the elements of the Employment Status of the Admin Page 
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot

*** Variables ***
${configurations}    xpath=(//ul[@data-v-5327b38a]//span)[5]
${email_config}    xpath=(//ul[@class='oxd-dropdown-menu']//a)[1]
${checkbox}    xpath=(//div[@class='oxd-radio-wrapper']//span)[3]
${enable}    xpath=//input[@type='checkbox']/following-sibling::span
${sent_email}    xpath=(//div[@data-v-957b4417]//input)[1]
${test_email}    xpath=(//div[@data-v-957b4417]//input)[5]

*** Keywords ***
Click the Configurations
    Wait Until Element Is Visible    ${configurations}
    Click Element    ${configurations}

Click the Email Configurations
    Wait Until Element Is Visible    ${email_config}
    Click Element    ${email_config}

Enter the Sent Email id
    [Arguments]    ${send_email_id}
    Wait Until Element Is Visible    ${sent_email}
    Input Text    ${sent_email}    ${send_email_id}

Click the Send Mail Checkbox
    Wait Until Element Is Visible    ${checkbox}
    Click Element    ${checkbox}
    
Enable the Send Test Mail
    Wait Until Element Is Visible    ${enable}
    Click Element    ${enable}

Enter the Test Email id
    [Arguments]    ${test_email_id}
    Wait Until Element Is Visible    ${test_email}
    Input Text    ${test_email}    ${test_email_id}