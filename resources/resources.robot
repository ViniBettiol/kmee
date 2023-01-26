*** Settings ***
Resource                   locators.robot
Resource                   helpers.robot
Library                    SeleniumLibrary

*** Variables ***

*** Keywords ***
#### Setup e Teardown
Abrir Navegador
    Open Browser                                      about:blank           ${BROWSER}        
    Maximize Browser Window

Fechar Navegador
    Close Browser

#### Passo-a-Passo
Access the Odoo repository
    Go to                                             ${URL}
    Sleep                                             2
    Log to console                                    ***Screen 1
    Capture Page Screenshot

Launch an instance of Odoo
    Click Element                                    ${BUTTON_ODOO}
    Wait Until Page Contains Element                 ${BUTTON_SIGIN}  
    Log to console                                    ***Screen 2
    Capture Page Screenshot

Login to Odoo
    Click Element                                     ${BUTTON_SIGIN}
    Wait Until Page Contains Element                  ${FIELD_EMAIL}
    Input Text                                        ${FIELD_EMAIL}       ${USER}
    Input Text                                        ${FIELD_PASSWORD}    ${PASSWORD}
    Log to console                                    ***Screen 3
    Capture Page Screenshot
    ClickElement                                      ${BUTTON_LOGIN}
    #Sleep                                             2
    Wait Until Page Contains Element                  ${BUTTON_MENU}
    Log to console                                    ***Screen 4
    Capture Page Screenshot

Access the dropdown Menu
    Click Element                                     ${BUTTON_MENU}
    Log to console                                    ***Screen 5
    Capture Page Screenshot

Access The Point of Sale page
    Click Element                                     ${BUTTON_MENU_POINT_SALE}
    Wait Until Page Contains Element                  ${BUTTON_NEW_SESSION_PS}
    Log to console                                    ***Screen 6
    Capture Page Screenshot

Create/Resume a session
    Click Element                                     ${BUTTON_NEW_SESSION_PS}
    Sleep                                             3
    Log to console                                    ***Screen 7
    Capture Page Screenshot

Select a product
    Sleep                                             10
    Click Element                                     ${BUTTON_HOME_SALE}
    Sleep                                             1
    Click Element                                     ${PRODUCT} 
    Sleep                                             2
    Log to console                                    ***Screen 8
    Capture Page Screenshot

Finalize the sale
    Click Element                                     ${BUTTON_PAYMENT}
    Log to console                                    ***Screen 9
    Capture Page Screenshot     
    Sleep                                             2
    Click Element                                     ${BUTTON_CASH}
    Log to console                                    ***Screen 10
    Capture Page Screenshot
    Sleep                                             2
    Click Element                                     ${BUTTON_VALIDATE}
    Log to console                                    ***Screen 11
    Capture Page Screenshot 
    Sleep                                             2
    Click Element                                     ${BUTTON_NEW_ORDER}
    Log to console                                    ***Screen 12
    Capture Page Screenshot 

Select a Customer
    Click Element                                     ${BUTTON_CUSTOMER}
    Log to console                                    ***Screen 13
    Capture Page Screenshot     
    Sleep                                             2
    Input Text                                        ${BUTTON_SEARCH_CUSTOMERS}        ${CUSTOMER_NAME}
    Log to console                                    ***Screen 14
    Capture Page Screenshot
    Sleep                                             2
    Click Element                                     ${CLIENT_LINE}
    Log to console                                    ***Screen 15
    Capture Page Screenshot 
    Sleep                                             2
    Click Element                                     ${BUTTON_SET_CUSTOMER}
    Log to console                                    ***Screen 16
    Capture Page Screenshot 
    Sleep                                             2

