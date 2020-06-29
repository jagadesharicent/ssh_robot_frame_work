*** Settings ***
Documentation          demonstrates executing commands on a remote machine

Library                SSHLibrary
Suite Setup            Open Connection And Log In
Suite Teardown         Close All Connections

*** Variables ***
${HOST}                192.168.43.226
${USERNAME}            slave
${PASSWORD}            Slave123

*** Test Cases ***
Execute Command And Verify Output
    ${output}=         Execute Command    hostname
    Log    ${output}

*** Keywords ***
Open Connection And Log In
   Open Connection     ${HOST}
   Login               ${USERNAME}        ${PASSWORD}
