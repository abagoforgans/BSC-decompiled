contract main {




// =====================  Runtime code  =====================


#
#  - oracleRequest(address arg1, uint256 arg2, bytes32 arg3, address arg4, bytes4 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#  - fulfillOracleRequest(bytes32 arg1, uint256 arg2, address arg3, bytes4 arg4, uint256 arg5, bytes32 arg6)
#  - cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4)
#
const EXPIRY_TIME = 300


address owner;
address stor1;
mapping of uint8 stor3;
uint256 stor4;

function owner() {
    return owner
}

function getAuthorizationStatus(address arg1) {
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function withdrawable() {
    require msg.sender == owner
    require 1 <= stor4
    return (stor4 - 1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setFulfillmentPermission(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + 1 >= arg2
    if stor4 < arg2 + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Amount requested is greater than withdrawable balance'
    require arg2 <= stor4
    stor4 -= arg2
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if stor1 != msg.sender:
        revert with 0, 'Must use LINK token'
    if arg3.length < 68:
        revert with 0, 'Invalid request length'
    if Mask(32, 224, mem[128]) != 0x4042994600000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Must use whitelisted functions'
    mem[132] = arg1
    mem[164] = arg2
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        delegate this.address.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        delegate this.address.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    if not delegate.return_code:
        revert with 0, 'Unable to create request'
}



}
