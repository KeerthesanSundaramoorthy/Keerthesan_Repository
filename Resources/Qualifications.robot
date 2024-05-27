*** Settings ***
Documentation   The Resource contains the elements of the Qualification Page on the My Info
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot

*** Variables ***
${my_info}    xpath=//a[@class='oxd-main-menu-item active']
${qualifications}    xpath=//a[text()='Qualifications']
${company_name}    xpath=(//input[@class='oxd-input oxd-input--active'])[2]
${job_title}    xpath=(//input[@class='oxd-input oxd-input--active'])[3]
${from_date}    xpath=(//input[@placeholder='yyyy-dd-mm'])[1]
${to_date}    xpath=(//input[@placeholder='yyyy-dd-mm'])[2]
${comment}    xpath=//div[@data-v-957b4417]//textarea
${add_but}    xpath=(//button[@type="button"][@class="oxd-button oxd-button--medium oxd-button--text"])[1]

*** Keywords ***
Click the My Info
    Wait Until Element Is Visible    ${my_info}
    Click Element    ${my_info}

Click the Qualifications
    Wait Until Element Is Visible    ${qualifications}
    Click Element    ${qualifications}

Click Add Button
    Wait Until Element Is Visible    ${add_but}
    Click Element    ${add_but}

Enter the Company Name
    [Arguments]    ${com_text}
    Wait Until Element Is Visible    ${add_but}
    Input Text    ${company_name}    ${com_text}

Enter the Job Title
    [Arguments]    ${job_text}
    Wait Until Element Is Visible    ${job_title}
    Input Text    ${job_title}    ${job_text}

Enter the From Date
    [Arguments]    ${from_dat}
    Wait Until Element Is Visible    ${from_date}
    Input Text    ${from_date}    ${from_dat}

Enter the To Date
    [Arguments]    ${to_dat}
    Wait Until Element Is Visible    ${to_date}
    Input Text    ${to_date}    ${to_dat}

Enter the Comment
    [Arguments]    ${comment_text}
    Wait Until Element Is Visible    ${comment}
    Input Text    ${comment}    ${comment_text}