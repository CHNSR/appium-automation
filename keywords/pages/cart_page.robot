*** Keywords ***
Tap to open cart
    common.Tap element when ready    ${cart_locator.cart_btn}     ${time.delay_time}

Check items in cart
    ${item_count}=  common.Get text when ready   ${cart_locator.display_amount}
    BuiltIn.should be equal as numbers    ${item_count}    ${test_data_1.product.amount}