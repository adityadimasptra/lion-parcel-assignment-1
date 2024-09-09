*** Settings ***
Resource          ../resources/keywords.robot

*** Test Cases ***
Create A New User With Parameters
    [Documentation]   Test to POST and create a new user with parameters
    [Tags]            API
    Given the API endpoint for creating a user is available
    When I create a user with name name and job job   name=John    job=Developer
    Then the response should return the created user data for name and job job    name=John    job=Developer
    And the status code should be 201