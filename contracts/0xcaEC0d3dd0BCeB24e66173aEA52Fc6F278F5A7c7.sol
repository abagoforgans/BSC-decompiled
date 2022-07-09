contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;

function setKey(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor2 = arg1
}

function sub_d267bd4d(?) {
    require calldata.size - 4 >= 32
    require sha3(arg1 xor stor2) == stor1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xc3d2c355(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require msg.sender == stor0
            stor2 = arg1
        else:
            require unknown_0xd267bd4d(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require sha3(arg1 xor stor2) == stor1
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            require ext_call.success
}



}
