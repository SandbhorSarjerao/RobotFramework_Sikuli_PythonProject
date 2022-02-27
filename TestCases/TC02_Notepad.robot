*** Settings ***
Library            SikuliLibrary     mode=NEW
Suite Setup        Start Sikuli Process
Suite Teardown     Stop Remote Server


*** Variables ***


***Test Cases ***
TC01 Start Notepad and Type Text
    Add Image Path      ../Resources/SikuliImages
    Click       Search_Programs_Button.png
    Click       Type_to_search_Textbox.png
    Input Text      Type_to_search_Textbox      Notepad
    Click       Notepad_app.png
    Input Text    notepad_workspace.png    Hello World
    Text Should Exist    Hello World
    Click    close.png
    Click    dont_save.png    

*** Keywords ***