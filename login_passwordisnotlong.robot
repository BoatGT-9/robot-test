*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Browser}      edge
${URL}          http://www.warering.online/home
${Delay}        2s


*** Test Cases ***
open Web warering
    [Documentation]    password is not long
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    ${DELAY}
    Click Element    id=toggle-big-login-landing-drawer-btn
    Sleep    ${DELAY}
    Input Text    id=username    user3
    Sleep    ${DELAY}
    Input Text    id=password    ksksk
    Sleep    ${DELAY}
    Click Element    id=setup-user-drawer-submit
    Sleep    ${DELAY}
    Capture page screenshot

