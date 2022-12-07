*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${URL}              https://www.bookdepository.com/
${VALID_EMAIL}      farma.yudhi.prasetyo@gmail.com
${VALID_PASSWORD}   Password1!
${KEYWORD}          Harry Potter
${FILTER}           price_low_high
${KEYWORD1}         Harry Potter and the Chamber of Secrets
${KEYWORD2}         Harry potter and the prisoner of azkaban
${ADD_QTY}          5
${REDUCE_QTY}       3
${WISHLIST_NAME}    My Wishlist

*** Keywords ***
Navigate to Home
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window