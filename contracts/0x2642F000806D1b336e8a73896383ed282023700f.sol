contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address addrAdmin; offset 8
address operatorAddress;
address stor2;
mapping of uint8 stor3;

function safeBetContracts(address arg1) {
    return bool(stor3[arg1])
}

function operator() {
    return operatorAddress
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function _fallback() payable {
    revert
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor0 = uint8(arg1)
}

function sub_bdb0137b(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    stor2 = arg1
}

function setSafeContract(address arg1, bool arg2) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    stor3[address(arg1)] = uint8(arg2)
}

function setAdmin(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_newAdmin can't be address 0'
    addrAdmin = arg1
}

function setOperator(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_addr can't be address 0'
    operatorAddress = arg1
}

function sub_19efa3b9(?) {
    if not stor3[address(msg.sender)]:
        require msg.sender == addrAdmin
    require ext_code.size(stor2)
    call stor2.0x67c18aa1 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
