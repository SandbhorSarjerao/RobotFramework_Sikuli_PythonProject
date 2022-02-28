*** Settings ***
Library            SikuliLibrary     mode=NEW
Library            SeleniumLibrary
Suite Setup        Start Sikuli Process
Suite Teardown     Stop Remote Server

*** Variables ***

***Test Cases ***
TC01 Start Browser on Windows
    Add Image Path      ../Resources/Images
    Click       Windows_Start_Button.png
    Click       Google_Chrome.png
    Sleep       5
    SikuliLibrary.Input Text      google_url_addressbar.png       https://www.google.com/
    Sleep       5
    Press Special Key       ENTER
#    Press Keys      button      ENTER
    Sleep       10
    Text Should Exist       Google
    Click       chrome_close_button.png



*** Keywords ***
