*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  file:///C:/Users/Milan%20Thakkar/Downloads/QE-index.html
*** Keywords ***
StartTest
    Open Browser  ${url}  chrome
    Maximize Browser Window

FinishTest
    Close Browser

ElementonPage
    [arguments]  ${element}
    Page Should Contain Element  ${element}  Element is present

ButtonOnPage
    [arguments]  ${button}
    Page Should Contain Button  ${button}  button is present

TextofElement
    [arguments]  ${element}  ${acttext}
    ${textelement}  Get Text  ${element}
    Should be Equal  ${textelement}  ${acttext}

ElementClick
    [arguments]  ${element}
    Click Element  ${element}

ButtonClick
    [arguments]  ${button}
    Click Button  ${button}

ButtonEnable
    [arguments]  ${button}
    Element Should Be Enabled  ${button}

ButtonDisable
    [arguments]  ${button}
    Element Should Be Disabled  ${button}

ElementWait
    [arguments]  ${element}
    Wait Until Element Is Visible  ${element}  50

Scrolltoelement
    [arguments]  ${element}
    Scroll Element Into View  ${element}



