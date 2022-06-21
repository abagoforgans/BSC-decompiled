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

function selfDestruct(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(arg1)
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

function sub_ffa811f1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
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
    mem[64] = (2 * ceil32(return_data.size)) + 288
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
    call routerAddress.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(return_data.size) + 192]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 224] = address(arg1)
    if 1 >= mem[ceil32(return_data.size) + 192]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 256] = address(ext_call.return_data[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _39 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _40 = mem[_39]
    _41 = mem[64]
    mem[mem[64] + 36] = mem[_39]
    _42 = mem[64]
    mem[mem[64]] = 36
    mem[64] = mem[64] + 68
    mem[_42 + 32 len 4] = 4122065833
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args mem[_42 + 36 len mem[_42] - 4]
    mem[_41 + 68] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[_41 + 72] = _40
    mem[_41 + 104] = 0
    mem[_41 + 136] = 160
    _46 = mem[ceil32(return_data.size) + 192]
    mem[_41 + 232] = mem[ceil32(return_data.size) + 192]
    idx = 0
    s = ceil32(return_data.size) + 224
    t = _41 + 264
    while idx < _46:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_41 + 168] = address(arg2)
    mem[_41 + 200] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _41 + (32 * _46) + -mem[64] + 260]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
