*** Settings ***
Library         SeleniumLibrary
Resource        ../base/base_setup.robot
Resource        ../steps/home_step.robot
Test Setup      Navigate to Home
Test Teardown   Close All Browsers

*** Test Cases ***
Scenario: Verify user able to search item and do filter price low to high
    Given user already in home page
    When user click Sign in link
    And user input email "${VALID_EMAIL}" and password "${VALID_PASSWORD}"
    Then user is successfully login
    When user search "${KEYWORD}"
    And user select filter "${FILTER}"
    Then user see the item filtered by price low to high

Scenario: Verify user able to add more items by click plus icon in add to cart page
    Given user already in home page
    When user click Sign in link
    And user input email "${VALID_EMAIL}" and password "${VALID_PASSWORD}"
    Then user is successfully login
    When user search "${KEYWORD1}"
    And user click the first item to the basket
    And user go to basket/checkout page
    And user add more qty to "${ADD_QTY}"
    And user reduce qty to "${REDUCE_QTY}"
    Then user see the item is correct after adjust qty

Scenario: Verify user able to save item by click Add to Wishlist button
    Given user already in home page
    When user click Sign in link
    And user input email "${VALID_EMAIL}" and password "${VALID_PASSWORD}"
    Then user is successfully login
    When user search "${KEYWORD2}"
    And user click the item to the detail item page
    And user click button add to wishlist
    And user input wishlist name "${WISHLIST_NAME}"
    Then user see the item is already in wishlist page
