*** Settings ***

Documentation      Prova técnica Kmee
...                Utilizando de seus conhecimentos sobre testes automatizados, crie uma automação para que seja
...                possível testar as seguintes funcionalidades do sistema de ponto de vendas do Odoo versão 14.0:
...                - Fazer uma venda sem desconto e pagar em dinheiro
...                - Fazer uma venda com o cliente “Azure Interior”


Resource                  ../resources/resources.robot
Resource                  ../resources/helpers.robot
Test Setup                Abrir Navegador
Test Teardown             Fechar Navegador


*** Test Case ***
Cenário 01: Fazer uma venda sem desconto e pagar em dinheiro
    Given the user runs an active instance
    And login successfully
    When the user accesses the Point of Sale menu 
    And access the session of Shop
    Then the user must make a cash purchase without discount

Cenário 01: Fazer uma venda com o cliente “Azure Interior”
    Given the user runs an active instance
    And login successfully
    When the user accesses the Point of Sale menu 
    And access the session of Shop
    Then the user must make a sale with the client “Azure Interior”



*** Keywords ***
the user runs an active instance
    Access the Odoo repository
    Launch an instance of Odoo

login successfully
    Login to Odoo

the user accesses the Point of Sale menu
    Access the dropdown Menu
    Access The Point of Sale page

access the session of Shop
    Create/Resume a session

the user must make a cash purchase without discount
    Select a product
    Finalize the sale

the user must make a sale with the client “Azure Interior”
    Select a product
    Select a Customer
    Finalize the sale