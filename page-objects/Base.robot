*** Settings ***
Library          SeleniumLibrary    timeout=2000
*** Variables ***
${url}            https://www.automationpractice.pl/index.php
${navegador}      Chrome

*** Keywords ***
Dado que o navegador pagina inicial esteja aberto
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    #Call Method   ${options}    add_argument    --headless
    ${webdriver}=    Create Webdriver   ${navegador}   options=${options}
    Set Selenium Timeout   80s
    Set Selenium Speed     0.05
    Go To    ${url}
    Maximize Browser Window
