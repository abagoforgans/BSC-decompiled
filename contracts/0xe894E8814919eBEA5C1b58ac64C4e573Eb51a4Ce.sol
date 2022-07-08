contract main {




// =====================  Runtime code  =====================


address owner;
address cakeAddress;
address BUSDAddress;
address routerAddress;
uint256 sub_6f727a5e;
uint256 sub_684c599f;
address sub_cfb46341Address;
address sub_7847c8f4Address;

function BUSD() payable {
    return BUSDAddress
}

function Cake() payable {
    return cakeAddress
}

function sub_684c599f(?) payable {
    return sub_684c599f
}

function sub_6f727a5e(?) payable {
    return sub_6f727a5e
}

function sub_7847c8f4(?) payable {
    return sub_7847c8f4Address
}

function owner() payable {
    return owner
}

function sub_cfb46341(?) payable {
    return sub_cfb46341Address
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function updateCakeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Recharge :: zero address dected'
    cakeAddress = arg1
}

function sub_83b6f93f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Recharge :: zero address dected'
    BUSDAddress = address(arg1)
}

function setSupportWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Recharge :: zero address dected'
    sub_7847c8f4Address = arg1
    emit 0x8db8c38b: arg1, msg.sender
}

function setBusinessWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Recharge :: zero address dected'
    sub_cfb46341Address = arg1
    emit 0x36b8df36: arg1, msg.sender
}

function sub_a9c87589(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 != 1000:
        revert with 0, 'Invalid '
    sub_6f727a5e = arg1
    sub_684c599f = arg2
    emit 0x3bf495d2: arg1, arg2, msg.sender
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function failSafe(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FailSafe(address(arg2), eth.balance(this.address), this.address);
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit FailSafe(address(arg2), arg3, arg1);
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Recharge :: Deposit number of tokens'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(BUSDAddress)
    call BUSDAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = BUSDAddress
    mem[ceil32(return_data.size) + 160] = cakeAddress
    mem[ceil32(return_data.size) + 196] = routerAddress
    mem[ceil32(return_data.size) + 228] = arg1
    require ext_code.size(BUSDAddress)
    call BUSDAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(cakeAddress)
    staticcall cakeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _36 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _37 = mem[_36]
    if mem[_36] and sub_684c599f > -1 / mem[_36]:
        revert with 0, 17
    if mem[_36] < mem[_36] * sub_684c599f / 1000:
        revert with 0, 17
    mem[mem[64] + 4] = sub_cfb46341Address
    mem[mem[64] + 36] = _37 - (_37 * sub_684c599f / 1000)
    require ext_code.size(cakeAddress)
    call cakeAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_cfb46341Address, _37 - (_37 * sub_684c599f / 1000)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _40 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_40] == bool(mem[_40])
    mem[mem[64] + 4] = sub_7847c8f4Address
    mem[mem[64] + 36] = _37 * sub_684c599f / 1000
    require ext_code.size(cakeAddress)
    call cakeAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_7847c8f4Address, _37 * sub_684c599f / 1000
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_44] == bool(mem[_44])
    emit 0x1325f824: _37, msg.sender
}



}
