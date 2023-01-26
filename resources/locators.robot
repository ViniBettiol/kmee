*** Settings ***
Library                    SeleniumLibrary
Resource                   resources.robot
Resource                   helpers.robot

*** Variables ***
${BROWSER}                         chrome
${URL}                             https://runbot.odoo.com/runbot/bundle/14-0-65200
#${BUTTON_ODOO}                     //a[@class='fa fa-sign-in btn btn-info']//..//span[contains(text(), 'odoo')][1]
#${BUTTON_RUN_ODOO}                 //a[@class='btn btn-info']
${BUTTON_ODOO}                     //a[@class='fa fa-sign-in btn btn-info'][1]
${BUTTON_SIGIN}                    //*[@id="top_menu"]/li[11]/a                    
${FIELD_EMAIL}                     //*[@id="login"]
${FIELD_PASSWORD}                  //*[@id="password"]
${BUTTON_LOGIN}                    //*[@id="wrapwrap"]/main/div/form/div[3]/button
${BUTTON_MENU}                     xpath:/html/body/header/nav/ul[1]/li/a
${BUTTON_MENU_POINT_SALE}          xpath:/html/body/header/nav/ul[1]/li/div/a[9]
${BUTTON_NEW_SESSION_PS}           xpath:/html/body/div[2]/div/div[2]/div/div[1]/div[2]/div[1]/div[1]/button
${BUTTON_HOME_SALE}                xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div/div/div[2]/div/div[1]/div/div/span[1]/span/i
${PRODUCT}                         //*[@id="article_product_23"]
${BUTTON_PAYMENT}                  xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div/div/div[1]/div[2]/div[2]/div[1]/button[2]
${BUTTON_CASH}                     xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div/div/div[2]/div[1]/div/div[2]/div[1]/div
${BUTTON_VALIDATE}                 xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div/div/div[1]/div[3]/span
${BUTTON_NEW_ORDER}                xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div/div/div[1]/div[2]
${BUTTON_CUSTOMER}                 xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div/div/div[1]/div[2]/div[2]/div[1]/button[1]
${BUTTON_SEARCH_CUSTOMERS}         xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div[2]/div/div/div[3]/input
${CLIENT_LINE}                     xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div[2]/div/section/div/section[2]/div/div/table/tbody/tr
${BUTTON_SET_CUSTOMER}             xpath:/html/body/div[2]/div/div[3]/div/div/div/div/div[2]/div/div/div[1]