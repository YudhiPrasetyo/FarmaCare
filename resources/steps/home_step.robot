*** Settings ***
Library         SeleniumLibrary
Resource        ../pages/home_page.robot

*** Keywords ***

User already in home page
    Brand Logo Displayed

User click Sign in link
    Click Link SignIn

User input email "${email}" and password "${password}"
    Input Email    ${email}
    Input valid Password    ${password}
    Click Button SignIn

User is successfully login
    Welcome Message is Displayed
    Hello Message is Displayed

User search "${keyword}"
    Input Search Keyword   ${keyword}
    Click Button Search

User select filter "${filter}"
    Select Filter is Displayed      ${filter}

User see the item filtered by price low to high
    Get Label Selected

User click the first item to the basket
    Click Button Add to Cart

User go to basket/checkout page
    Click Button Basket/Checkout

User add more qty to "${filter_add_qty}"
    Select Add Quantity     ${filter_add_qty}

User reduce qty to "${filter_reduce_qty}"
    Select Add Quantity     ${filter_reduce_qty}

User see the item is correct after adjust qty
    Get Label Qty Cart
    Click Button Remove

user click the item to the detail item page
    Click First Item

user click button add to wishlist
    Click Button Add to Wishlist

user input wishlist name "${wishlistName}"
    Input Wishlist Name    ${wishlistName}
    Click Button Add Modal
    Close Modal Wishlist

user see the item is already in wishlist page
    Click Link Wishlist
    Get Item Wishlist Name
    Clik Edit Wishlist
    Click Delete Wishlist