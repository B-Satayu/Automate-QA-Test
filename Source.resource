*** Settings ***
Documentation   This file has included all components for every test case
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome
${Homepage}     https://xn--m3ca1athe9asc7b2b6iqe.com/
${How-To-Use}  https://xn--m3ca1athe9asc7b2b6iqe.com/how-to-use

*** Keywords ***
Enter to the Website
    Open Browser  ${Homepage}   ${Browser}
    Maximize Browser Window

Navigate How to Use
    Wait Until Element Is Visible    xpath = //*[@id="__next"]/main/div/div[3]/div/div/button[7]
    Click Button   xpath = //*[@id="__next"]/main/div/div[3]/div/div/button[7]
    Element Should Be Visible  xpath = //*[@id="__next"]/main/div/div[1]/div[1]
    Wait Until Element Is Visible    xpath = //*[@id="__next"]/main/div/div[1]/div[2]/div[2]/div/button[7]
    Click Element    xpath = //*[@id="__next"]/main/div/div[1]/div[2]/div[2]/div/button[7]

Back to homepage
    Click Button    xpath = //*[@id="__next"]/nav/button
    ${url} =  Get Location
    Should Be Equal    ${url}    ${Homepage}
