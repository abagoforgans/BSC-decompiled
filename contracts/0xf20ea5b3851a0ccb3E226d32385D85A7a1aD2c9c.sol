contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
uint256 stor2;

function owner() {
    return owner
}

function router() {
    return routerAddress
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

function sub_47ff938e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = routerAddress
    mem[132] = stor2
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224 len 64] = call.data[calldata.size len 64]
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = 0
    mem[(2 * ceil32(return_data.size)) + 324] = 128
    mem[(2 * ceil32(return_data.size)) + 420] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 452
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 356] = this.address
    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(return_data.size) + 192]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 224] = address(arg1)
    if 1 >= mem[ceil32(return_data.size) + 192]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 256] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 324] = 0
    mem[(4 * ceil32(return_data.size)) + 356] = 160
    _38 = mem[ceil32(return_data.size) + 192]
    mem[(4 * ceil32(return_data.size)) + 452] = mem[ceil32(return_data.size) + 192]
    idx = 0
    s = ceil32(return_data.size) + 224
    t = (4 * ceil32(return_data.size)) + 484
    while idx < _38:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[(4 * ceil32(return_data.size)) + 452 len (32 * _38) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
