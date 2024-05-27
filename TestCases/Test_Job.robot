*** Settings ***
Documentation    Verify the User Management feature of the Admin
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close the Browser
Library    DataDriver    file=../TestData/Job_Details.xlsx    sheet_name=Sheet1
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/User.robot
Resource    ../Resources/Job.robot
Test Template    Add a new job

*** Test Cases ***
Add the new job    ${condition}    ${job_Title}    ${job_Des}    ${job_Note}

*** Keywords ***
Add a new job
    [Arguments]    ${condition}    ${job_Title}    ${job_Des}    ${job_Note}
    Fill the Login Form    Admin    admin123
    Click the Admin button
    Click the Job 
    Click the Job Titles
    
    IF    '${condition}'=='Valid'
        Click the Add Button
        Enter the Job Title    ${job_Title}
        Enter the Job Description    ${job_Des}
        Enter the Job Note    ${job_Note}
        Click the Save button
        Verify the job is added

    ELSE IF    '${condition}'=='Cancel'
        Click the Add Button
        Enter the Job Title    ${job_Title}
        Enter the Job Description    ${job_Des}
        Enter the Job Note    ${job_Note}
        Click the Cancel button
        Verify the previous page

    ELSE IF    '${condition}'=='Partial'
        Click the Add Button
        Enter the Job Title    ${job_Title}
        Click the Save button
        Verify the job is added

    ELSE IF    '${condition}'=='Delete'
        Click the Delete Button
        Click the Yes Button
        Verify the Job is deleted
    
    END

    