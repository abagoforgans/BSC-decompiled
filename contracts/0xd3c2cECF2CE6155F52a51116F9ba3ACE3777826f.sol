contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address sub_39239f72Address; offset 8
uint32 stor1;
address _WETH_Address;
uint256 stor1;

function _WETH_() {
    return address(_WETH_Address)
}

function sub_39239f72(?) {
    return sub_39239f72Address
}

function _fallback() payable {
    if address(_WETH_Address) != msg.sender:
        revert with 0, 'WE_SAVED_YOUR_ETH_:)'
}

function depositEthAsBase(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    if arg1 != msg.value:
        revert with 0, 'ETH_AMOUNT_NOT_MATCH'
    require ext_code.size(sub_39239f72Address)
    staticcall sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(_WETH_Address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaa06ce9b with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x39666a73: arg1, msg.sender, address(ext_call.return_data[0])
    stor0 = 0
}

function depositEthAsQuote(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    if arg1 != msg.value:
        revert with 0, 'ETH_AMOUNT_NOT_MATCH'
    require ext_code.size(sub_39239f72Address)
    staticcall sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(arg2), address(_WETH_Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5f179f64 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1a5e8be0: arg1, msg.sender, address(ext_call.return_data[0])
    stor0 = 0
}

function withdrawAllEthAsBase(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    require ext_code.size(0 or sub_39239f72Address)
    staticcall 0 or sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(_WETH_Address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd689107c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd47eaa37 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    staticcall address(_WETH_Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    emit 0xa3c769d2: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0])
    stor0 = 0
    return ext_call.return_data[0]
}

function withdrawAllEthAsQuote(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    require ext_code.size(0 or sub_39239f72Address)
    staticcall 0 or sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(arg1), address(_WETH_Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xac1fbc98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc59203af with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    staticcall address(_WETH_Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    emit 0x895ba7c2: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0])
    stor0 = 0
    return ext_call.return_data[0]
}

function sellEthToToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    if arg2 != msg.value:
        revert with 0, 'ETH_AMOUNT_NOT_MATCH'
    require ext_code.size(sub_39239f72Address)
    staticcall sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(_WETH_Address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).deposit() with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8dae7333 with:
         gas gas_remaining wei
        args arg2, arg3, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 196 len 28]
    call arg1.mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor1), address(arg1) << 64 == bool(uint32(stor1), address(arg1) << 64)
            if not uint32(stor1), address(arg1) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
            if not mem[(4 * ceil32(return_data.size)) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x24389fd2: arg2, ext_call.return_data[0], msg.sender, arg1
    stor0 = 0
    return ext_call.return_data[0]
}

function withdrawEthAsBase(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    require ext_code.size(0 or sub_39239f72Address)
    staticcall 0 or sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(_WETH_Address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd689107c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf98bea15 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(_WETH_Address))
    staticcall address(_WETH_Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    emit 0xa3c769d2: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0])
    stor0 = 0
    return ext_call.return_data[0]
}

function withdrawEthAsQuote(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    require ext_code.size(0 or sub_39239f72Address)
    staticcall 0 or sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(arg2), address(_WETH_Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xac1fbc98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc0a5f6ff with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(_WETH_Address))
    staticcall address(_WETH_Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    emit 0x895ba7c2: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0])
    stor0 = 0
    return ext_call.return_data[0]
}

function buyTokenWithEth(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    if arg3 != msg.value:
        revert with 0, 'ETH_AMOUNT_NOT_MATCH'
    require ext_code.size(sub_39239f72Address)
    staticcall sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(arg1), address(_WETH_Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18c0bbe4 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).deposit() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 196] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe67ce706 with:
         gas gas_remaining wei
        args arg2, arg3, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, mem[(6 * ceil32(return_data.size)) + 196 len 28]
    call arg1.mem[(6 * ceil32(return_data.size)) + 196 len 4] with:
         gas gas_remaining wei
        args mem[(6 * ceil32(return_data.size)) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
            if not 0, Mask(224, 0, stor1):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 228] == bool(mem[(6 * ceil32(return_data.size)) + 228])
            if not mem[(6 * ceil32(return_data.size)) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if ext_call.return_data[0] > arg3:
        revert with 0, 'SUB_ERROR'
    if arg3 - ext_call.return_data[0]:
        call msg.sender with:
           value arg3 - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x26073ab2: arg2, ext_call.return_data[0], msg.sender, arg1
    stor0 = 0
    return ext_call.return_data[0]
}

function buyEthWithToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    require ext_code.size(0 or sub_39239f72Address)
    staticcall 0 or sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(_WETH_Address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18c0bbe4 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 228 len 28]
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1.mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor1), address(arg1) << 64 == bool(uint32(stor1), address(arg1) << 64)
            if not uint32(stor1), address(arg1) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 328 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0], 0
            call arg1 with:
               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor1), address(arg1) << 64 == bool(uint32(stor1), address(arg1) << 64)
                    if not uint32(stor1), address(arg1) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 360] == bool(mem[(2 * ceil32(return_data.size)) + 360])
                    if not mem[(2 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(4 * ceil32(return_data.size)) + 328 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 328 len 28]
            call arg1.mem[(4 * ceil32(return_data.size)) + 328 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 332 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor1), address(arg1) << 64 == bool(uint32(stor1), address(arg1) << 64)
                    if not uint32(stor1), address(arg1) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 360] == bool(mem[(4 * ceil32(return_data.size)) + 360])
                    if not mem[(4 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 28]
            call arg1.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor1), address(arg1) << 64 == bool(uint32(stor1), address(arg1) << 64)
                    if not uint32(stor1), address(arg1) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 28]
            call arg1.mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor1), address(arg1) << 64 == bool(uint32(stor1), address(arg1) << 64)
                    if not uint32(stor1), address(arg1) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361])
                    if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe67ce706 with:
         gas gas_remaining wei
        args arg2, arg3, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    emit 0x4a1f3fcb: arg2, ext_call.return_data[0], msg.sender, arg1
    stor0 = 0
    return ext_call.return_data[0]
}

function sellTokenToEth(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0:
        revert with 0, 'REENTRANT'
    stor0 = 1
    require ext_code.size(0 or sub_39239f72Address)
    staticcall 0 or sub_39239f72Address.0x1273b0c6 with:
            gas gas_remaining wei
           args address(arg1), address(_WETH_Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'DODO_NOT_EXIST'
    if not arg2:
        mem[ceil32(return_data.size) + 196 len 96] = 0, ext_call.return_data[12 len 20], arg2, mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
                if not 0, Mask(224, 0, stor1):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 328 len 128] = 0, msg.sender, address(this.address), arg2, mem[ceil32(return_data.size) + 328 len 28]
            call arg1.mem[ceil32(return_data.size) + 328 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 332 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
                    if not 0, Mask(224, 0, stor1):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 360] == bool(mem[ceil32(return_data.size) + 360])
                    if not mem[ceil32(return_data.size) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len 128] = 0, msg.sender, address(this.address), arg2, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28]
            call arg1.mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + ceil32(return_data.size) + 333 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
                    if not 0, Mask(224, 0, stor1):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 361])
                    if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, arg2, mem[(2 * ceil32(return_data.size)) + 196 len 28]
        call arg1.mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
                if not 0, Mask(224, 0, stor1):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 328 len 128] = 0, msg.sender, address(this.address), arg2, mem[(2 * ceil32(return_data.size)) + 328 len 28]
            call arg1.mem[(2 * ceil32(return_data.size)) + 328 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 332 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
                    if not 0, Mask(224, 0, stor1):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 360] == bool(mem[(2 * ceil32(return_data.size)) + 360])
                    if not mem[(2 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                if not mem[(2 * ceil32(return_data.size)) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 128] = 0, msg.sender, address(this.address), arg2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 28]
            call arg1.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor1) == bool(0, Mask(224, 0, stor1))
                    if not 0, Mask(224, 0, stor1):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8dae7333 with:
         gas gas_remaining wei
        args arg2, arg3, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_WETH_Address))
    call address(_WETH_Address).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    emit 0x9f16cd72: arg2, ext_call.return_data[0], msg.sender, arg1
    stor0 = 0
    return ext_call.return_data[0]
}



}
