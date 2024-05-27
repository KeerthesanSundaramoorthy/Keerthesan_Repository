#generic resources
*** Settings ***
Documentation    Resource file with reusable keywords and variables
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${admin}    css:a[href="/web/index.php/admin/viewAdminModule"]
${user_management}    xpath=//span[text()='User Management ']
${save_button}    xpath=(//p[@class='oxd-text oxd-text--p orangehrm-form-hint']//following-sibling::button)[2]
${add_button}    xpath=//button[@type="button"][@class="oxd-button oxd-button--medium oxd-button--secondary"]
${success_saved}    xpath=(//div[@class='oxd-toast-content oxd-toast-content--success']//p)[1]


*** Keywords ***
Open the Browser with URL
    Create Webdriver    Chrome
    #Open Browser    ${url}    
    Go To    ${url}
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Close the Browser
    Close Browser

Click the Admin button
    Click Element    ${admin}

Click the Save button    
    Wait Until Element Is Enabled    ${save_button}
    Click Button    ${save_button}

Click the Add Button
    Wait Until Element Is Visible    ${add_button}
    Click Button    ${add_button}

Verify the success message is displayed
    Element Text Should Be    ${success_saved}    Success