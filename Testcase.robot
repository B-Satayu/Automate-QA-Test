*** Settings ***

Documentation
...    This is an automate test script for Jr.QA Position 
...    ## Made by Satayu Settakit 
...    
Resource  Source.resource

*** Test Cases ***
Test Website
    Enter to the Website
    Navigate How to Use
    Back to homepage
    Sleep  3s
    [Teardown]