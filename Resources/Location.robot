*** Settings ***
Documentation   The Resource contains the elements of the General information about the Organization 
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot

*** Variables ***
${location}    xpath=(//ul[@class='oxd-dropdown-menu']//a)[2]
${loc_name}    xpath=(//input[@class='oxd-input oxd-input--active'])[2]
${city_loc}    xpath=(//div[@data-v-957b4417]//input)[2]
${country_loc}    xpath=(//div[@class='oxd-select-text oxd-select-text--active'][normalize-space()='-- Select --'])[1]
${country}    xpath=//span[text()='United States']
${verify}    xpath=//span[text()='(1) Record Found']


*** Keywords ***
Click the Location
    Wait Until Element Is Visible    ${location}
    Click Element    ${location}

Fill the Form    
    [Arguments]    ${Name}    ${City}
    Input Text    ${loc_name}    ${Name}
    Input Text    ${city_loc}    ${City}
    Click Element    ${country_loc}
    Wait Until Element Is Visible    ${country}   10s
    Wait Until Element Is Enabled    ${country}    10s
    Click Element    ${country} 

Verify the Search result
    Element Text Should Be    ${verify}    (1) Record Found