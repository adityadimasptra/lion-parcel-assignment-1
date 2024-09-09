*** Settings ***
Resource          ../resources/keywords.robot

*** Test Cases ***
Get A Single User With ID
    [Documentation]   Test to GET a single user with ID as a parameter
    [Tags]            API
    Given the API endpoint for getting a user is available
    When When I request a single user with ID user_id    user_id=2
    Then Then the response should contain the user data for user ID user_id    user_id=2
    And the status code should be 200