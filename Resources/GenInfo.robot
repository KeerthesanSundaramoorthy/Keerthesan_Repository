*** Settings ***
Documentation   The Resource contains the elements of the General information about the Organization 
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot

*** Variables ***
${organization}    xpath=(//i[@class='oxd-icon bi-chevron-down']/ancestor::span)[3]
${gen_Info}    xpath=(//ul[@class='oxd-dropdown-menu']//a)[1]
${edit}    xpath=//input[@type='checkbox']/following-sibling::span
${org_name}    xpath=(//input[@class='oxd-input oxd-input--active'])[2]
${save_but}    xpath=(//p[@class='oxd-text oxd-text--p orangehrm-form-hint']//following-sibling::button)

*** Keywords ***
Click the Organization
    Wait Until Element Is Visible    ${organization}
    Click Element    ${organization}

Click the General Information
    Wait Until Element Is Visible    ${gen_Info}
    Click Element    ${gen_Info}

Click the Edit
    Wait Until Element Is Visible    ${edit}
    Click Element    ${edit}

Verify the Text Box is enabled
    Element Should Be Enabled    ${org_name}

Enter the Organization Name
    Wait Until Element Is Visible    ${org_name}
    Clear Element Text    ${org_name}    
    Input Text    ${org_name}    SmartCliff

Click Save Button
    Wait Until Element Is Visible    ${save_but}
    Click Button    ${save_but}




