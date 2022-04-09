contract main {




// =====================  Runtime code  =====================


address sub_aae16a70Address;

function sub_aae16a70(?) payable {
    return sub_aae16a70Address
}

function _fallback() payable {
    revert
}

function sub_41f1786e(?) payable {
    create contract with 0 wei
                    code: code.data[306 len 1224]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_aae16a70Address = address(create.new_address)
}



}
