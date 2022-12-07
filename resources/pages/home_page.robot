*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${BRAND_LOGO}       class:brand-link
${LINK_SIGNIN}      link:Sign in/Join
${INPUT_EMAIL}      ap_email
${INPUT_PASSWORD}   ap_password
${BUTTON_SIGNIN}    signInSubmit
${WELCOME_MESSAGE}  class:message-success>strong
${HELLO_MESSAGE}    class:desktop-only>span
${INPUT_SEARCH}     name:searchTerm
${BUTTON_SEARCH}    class:header-search-btn
${SELECT_FILTER}    name:searchSortBy
${SELECT_ATC_FIRST_ITEM}    class:book-item:first-of-type>div.item-actions>div>a
${BUTTON_BASKET}    class:basket-info>a:last-of-type
${SELECT_QTY}       Qty_0
${BUTTON_REMOVE_CART}       class:btn.remove-btn
${SELECT_FIRST_ITEM}        class:book-item:first-of-type>div.item-img
${BUTTON_ADD_TO_WISHLIST}   link:Add to wishlist
${BUTTON_DIRECT_WISHLIST}   class:clearfix>a
${INPUT_WISHLIST_NAME}      name:wishlistLabel
${BTN_ADD_WISHLIST_MODAL}   class:btn.btn-primary.pull-right
${CLOSE_MODAL_WISHLIST}     class:close>span
${LINK_WISHLIST}            link:Wishlist
${ITEM_WISHLIST}            class:item-title>a
${LINK_EDIT_WISHLIST}       class:btn-edit-text
${LINK_DELETE_WISHLIST}     link:Delete wishlist

*** Keywords ***

Brand Logo Displayed
    Wait Until Element Is Visible       ${BRAND_LOGO}
    Element Should Be Visible           ${BRAND_LOGO}

Click Link SignIn
    Click Link    ${LINK_SIGNIN}

Input Email
    [Arguments]     ${email}
    Select Frame    class:signin-iframe
    Input Text      ${INPUT_EMAIL}      ${email}

Input valid Password
    [Arguments]         ${password}
    Input Password      ${INPUT_PASSWORD}   ${password}
    
Click Button SignIn
    Click Button    ${BUTTON_SIGNIN}
    Unselect Frame
    
Welcome Message is Displayed
    Wait Until Element Is Visible   ${WELCOME_MESSAGE}
    Element Should Be Visible       ${WELCOME_MESSAGE}
    Element Text Should Be          ${WELCOME_MESSAGE}     Welcome back
    
Hello Message is Displayed
    Wait Until Element Is Visible   ${WELCOME_MESSAGE}
    Element Should Be Visible       ${HELLO_MESSAGE}
    Element Text Should Be          ${HELLO_MESSAGE}     Hello Yudhi Prasetyo

Input Search Keyword
    [Arguments]     ${keyword}
    Input Text      ${INPUT_SEARCH}    ${keyword}

Click Button Search
    Click Button    ${BUTTON_SEARCH}

Select Filter is Displayed
    [Arguments]                                     ${filter}
    Select From List By Value                       ${SELECT_FILTER}   ${filter}

Get Label Selected
    Wait Until Page Contains    Price, low to high

Click Button Add to Cart
    Click Link    ${SELECT_ATC_FIRST_ITEM}
    Sleep    5s

Click Button Basket/Checkout
    Click Link    ${BUTTON_BASKET}

Select Add Quantity
    [Arguments]                     ${filter_adjust_qty}
    Select From List By Value       ${SELECT_QTY}      ${filter_adjust_qty}
    Wait Until Page Contains    5

Get Label Qty Cart
    Wait Until Page Contains    3

Click Button Remove
    Click Button        ${BUTTON_REMOVE_CART}

Click First Item
    Click Element       ${SELECT_FIRST_ITEM}

Click Button Add to Wishlist
    Click Link    ${BUTTON_ADD_TO_WISHLIST}
    Sleep    3s
    
Click Button Wishlist
    Click Link    ${BUTTON_DIRECT_WISHLIST}
    
Input Wishlist Name
    [Arguments]     ${wishlistName}
    Input Text      ${INPUT_WISHLIST_NAME}    ${wishlistName}

Close Modal Wishlist
    Click Element    ${CLOSE_MODAL_WISHLIST}
    
Click Button Add Modal     
    Click Button    ${BTN_ADD_WISHLIST_MODAL}

Click Link Wishlist
    Click Link    ${LINK_WISHLIST}

Get Item Wishlist Name
    Element Text Should Be    ${ITEM_WISHLIST}    Harry Potter and the Prisoner of Azkaban

Clik Edit Wishlist
    Click Element    ${LINK_EDIT_WISHLIST}
    Sleep    5s

Click Delete Wishlist
    Click Link      ${LINK_DELETE_WISHLIST}
    Sleep    3s
    Handle Alert    ACCEPT
    

