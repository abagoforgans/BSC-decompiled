contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function deposit() payable {
    stor0 += msg.value
    return stor0
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    stor0 -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return stor0
}



}
