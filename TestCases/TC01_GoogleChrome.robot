*** Settings ***
Library            SikuliLibrary     mode=NEW
Suite Setup        Start Sikuli Process
Suite Teardown     Stop Remote Server

*** Variables ***

***Test Cases ***
TC01 Start Browser on Windows
    Add Image Path      "../Resources/SikuliImages/"
    Click       Windows_Start_Button.png
    Click       Google_Chrome.png



*** Keywords ***
