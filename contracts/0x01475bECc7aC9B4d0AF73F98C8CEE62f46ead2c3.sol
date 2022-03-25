contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deploy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    create contract with 0 wei
                    code: code.data[287 len 16175], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
