*** Settings ***
Documentation   The Resource contains the elements of the General information about the Organization 
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot

*** Variables ***
${nationalities}    xpath=//li[@class='oxd-topbar-body-nav-tab']/a
${nation_textbox}    xpath=(//input[@class='oxd-input oxd-input--active'])[2]
${existing}    xpath=//span[text()='Already exists']

*** Keywords ***
Click the Nationalities
    Wait Until Element Is Visible    ${nationalities}
    Click Element    ${nationalities}

Enter the Nation Name
    [Arguments]    ${nation_name}
    Wait Until Element Is Visible    ${nation_textbox}
    Input Text    ${nation_textbox}    ${nation_name}

Verify the existing message
    Element Text Should Be    ${existing}    Already exists
    