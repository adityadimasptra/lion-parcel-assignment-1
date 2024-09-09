
*** Settings ***
Library           RequestsLibrary
Library    ../libraries/api_request.py

*** Variables ***
${BASE_URL}       https://reqres.in/api/
${USERS_URL}    users/
${response}

*** Keywords ***
Given the API endpoint for creating a user is available
    Create Session   reqres   ${BASE_URL}${USERS_URL}

When I create a user with name ${name} and job ${job}
    [Arguments]   ${name}   ${job}
    ${res}=    Create User    name=${name}    job=${job}
    Set Suite Variable  ${response}    ${res}

Then the response should return the created user data for ${name} and job ${job}
    [Arguments]   ${name}   ${job}
    Should Be True   ${response.status_code} == 201
    Should Be Equal  ${response.json()['name']}  ${name}
    Should Be Equal  ${response.json()['job']}  ${job}

And the status code should be 201
    Should Be Equal As Integers   ${response.status_code}   201

Given the API endpoint for getting a user is available
    Create Session   reqres   ${BASE_URL}${USERS_URL}

When I request a single user with ID ${user_id}
    [Arguments]    ${user_id}
    ${res}=    Get User    user_id=${user_id}
    Set Test Variable    ${response}   ${res}

Then the response should contain the user data for user ID ${user_id}
    [Arguments]    ${user_id}
    Should Be True   ${response.status_code} == 200
    Should Be Equal As Integers  ${response.json()['data']['id']}  ${user_id}

And the status code should be 200
    Should Be Equal As Integers   ${response.status_code}   200