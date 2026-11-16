*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When counter has nonzero value the button resets the value to zero
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa
