*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${TEST_PAGE}      https://elenastepuro.github.io/test_env/index.html
${BROWSER}        Firefox
${PROXY_URL}      http://localhost:8085

*** Keywords ***
Open Remote Chrome Browser
    Open Browser    ${TEST_PAGE}  ${BROWSER}  remote_url=${PROXY_URL}

Close Browser
    Close All Browsers

Find Element by XPath
    [Arguments]    ${xpath}
    Element Should Be Visible   xpath:${xpath}

Find Element by ID
    [Arguments]    ${id}
    click element   id=${id}
