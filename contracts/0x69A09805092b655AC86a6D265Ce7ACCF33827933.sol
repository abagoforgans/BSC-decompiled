contract main {




// =====================  Runtime code  =====================


#
#  - check(address arg1, uint256 arg2, uint256 arg3)
#
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address implementationAddress;
mapping of uint8 stor4;

function implementation() {
    return implementationAddress
}

function getOwner() {
    return owner
}

function seed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < 1:
        revert with 'NH{q', 17
    return sha3(block.hash(block.number - 1), arg1)
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_bb30a974(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    implementationAddress = address(arg1)
    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(arg2))
}

function sub_f4e4d998(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    call address(arg1) with:
         gas gas_remaining wei
        args arg2[all]
}

function addAccounts(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'implementation must not 0  address'
    if not uint8(stor1.field_160):
        call implementationAddress with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        delegate implementationAddress with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
