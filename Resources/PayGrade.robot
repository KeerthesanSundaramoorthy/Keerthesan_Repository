*** Settings ***
Documentation   The Resource contains the elements of the Pay Grade feature for the of the Admin Page 
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/Job.robot

*** Variables ***
${pay_grade}    xpath=(//ul[@class='oxd-dropdown-menu']//li)[2]
${name_textbox}    xpath=//div[@class='oxd-input-group__label-wrapper']/following-sibling::div//input
${assert}    css:.orangehrm-card-container>h6

*** Keywords ***
Click the Pay Grade
    Wait Until Element Is Visible    ${pay_grade}
    Click Element    ${pay_grade}

Enter the Pay Grade    
    [Arguments]    ${Pay_Grade_text}
    Input Text    ${name_textbox}    ${Pay_Grade_text}

Verify the Pay Grade is added
    Element Text Should Be    ${assert}    Add Pay Grade


