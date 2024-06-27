*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Browser}      edge
${URL}          http://www.warering.online/home
${Delay}        2s


*** Test Cases ***
open Web warering
    [Documentation]    Open the Warering web page and log in with given credentials
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    ${DELAY}
    Click Element    id=toggle-big-login-landing-drawer-btn
    Sleep    ${DELAY}
    Input Text    id=username    username
    Sleep    ${DELAY}
    Input Text    id=password    12345678User
    Sleep    ${DELAY}
    Click Element    id=setup-user-drawer-submit
    Sleep    ${DELAY}
    Capture page screenshot

