contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deploy(address arg1) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[238 len 8186], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[8424 len 11581], address(arg1)
}



}
