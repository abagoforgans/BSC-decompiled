contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 168
uint128 stor0; offset 168
address addrAdmin; offset 8
address addrFinance;
uint256 stor2;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;

function sub_699d51ae(?) {
    return bool(stor4[arg1])
}

function isOperator(address arg1) {
    return bool(stor5[address(arg1)])
}

function addrFinance() {
    return addrFinance
}

function isPaused() {
    return bool(uint8(stor0.field_0))
}

function addrAdmin() {
    return addrAdmin
}

function sub_eda33b90(?) {
    return bool(uint8(stor0.field_168))
}

function _fallback() payable {
  stop
}

function sub_a3b7fd99(?) {
    return stor2, stor3
}

function setFinance(address arg1) {
    require msg.sender == addrFinance
    addrFinance = arg1
}

function setPause(bool arg1) {
    require msg.sender == addrAdmin
    uint8(stor0.field_0) = uint8(arg1)
}

function setAdmin(address arg1) {
    require msg.sender == addrAdmin
    require arg1
    addrAdmin = arg1
}

function sub_6ac41e57(?) {
    require msg.sender == addrAdmin
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == addrAdmin
    require arg1
    stor5[address(arg1)] = uint8(arg2)
}

function sub_aca1e1d3(?) {
    require msg.sender == addrAdmin
    require arg1 > 0
    require arg1 <= arg2
    stor2 = arg1
    stor3 = arg2
}

function sub_94a7db90(?) payable {
    require not uint8(stor0.field_0)
    require arg1 > 0
    emit 0x1191cb53: msg.sender, msg.value, arg1, arg2, arg3
}

function withdrawProfit(uint256 arg1) {
    require msg.sender == addrAdmin
    require arg1 <= eth.balance(this.address)
    call addrFinance with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateVersion(address arg1) {
    require msg.sender == addrAdmin
    require addrFinance == arg1
    call addrFinance with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f56f58ec(?) {
    require not uint8(stor0.field_168)
    require 1 == bool(stor5[msg.sender])
    require arg1
    require arg2 >= stor2
    require arg2 <= stor3
    require not stor4[arg4]
    require arg2 <= eth.balance(this.address)
    require eth.balance(this.address) - arg2 >= 0
    stor4[arg4] = 1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fcfa34a: arg4, address(arg1), arg2, arg3
}



}
