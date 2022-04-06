contract main {




// =====================  Runtime code  =====================


#
#  - sub_6e6e9a7f(?)
#
address _governanceAddress;
mapping of uint8 stor1;
mapping of struct sub_fc5ac096;
mapping of address _ruleProxys;
mapping of uint8 stor4;
uint256 sub_305ed753;
uint256 sub_5a0c7efb;
uint8 _isUserStart; offset 160
uint128 stor7; offset 160
address sub_83f8a084Address;

function sub_05027a23(?) payable {
    require calldata.size - 4 >= 32
    if sub_fc5ac096[arg1].field_0 <= 0:
        revert with 0, 'cocosNFT not exist'
    return sub_fc5ac096[arg1].field_0, 
           sub_fc5ac096[arg1].field_256,
           sub_fc5ac096[arg1].field_512,
           sub_fc5ac096[arg1].field_768,
           sub_fc5ac096[arg1].field_1024,
           sub_fc5ac096[arg1].field_1280,
           sub_fc5ac096[arg1].field_1536,
           sub_fc5ac096[arg1].field_1792,
           sub_fc5ac096[arg1].field_2048,
           sub_fc5ac096[arg1].field_2304,
           sub_fc5ac096[arg1].field_2560,
           sub_fc5ac096[arg1].field_2816
}

function _governance() payable {
    return _governanceAddress
}

function _ruleProxys(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _ruleProxys[arg1]
}

function sub_305ed753(?) payable {
    return sub_305ed753
}

function sub_3545e706(?) payable {
    require calldata.size - 4 >= 32
    return sub_fc5ac096[arg1].field_0, 
           sub_fc5ac096[arg1].field_256,
           sub_fc5ac096[arg1].field_512,
           sub_fc5ac096[arg1].field_768,
           sub_fc5ac096[arg1].field_1024,
           sub_fc5ac096[arg1].field_1280,
           sub_fc5ac096[arg1].field_1536,
           sub_fc5ac096[arg1].field_1792,
           sub_fc5ac096[arg1].field_2048,
           sub_fc5ac096[arg1].field_2304,
           sub_fc5ac096[arg1].field_2560,
           sub_fc5ac096[arg1].field_2816
}

function _minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _isUserStart() payable {
    return bool(_isUserStart)
}

function _ruleProxyFlags(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function isRulerProxyContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_5a0c7efb(?) payable {
    return sub_5a0c7efb
}

function sub_83f8a084(?) payable {
    return sub_83f8a084Address
}

function sub_fc5ac096(?) payable {
    require calldata.size - 4 >= 32
    if sub_fc5ac096[arg1].field_0 <= 0:
        revert with 0, 'cocosNFT not exist'
    return sub_fc5ac096[arg1].field_256, 
           sub_fc5ac096[arg1].field_512,
           sub_fc5ac096[arg1].field_768,
           sub_fc5ac096[arg1].field_1024,
           sub_fc5ac096[arg1].field_1280,
           sub_fc5ac096[arg1].field_1536,
           sub_fc5ac096[arg1].field_1792,
           sub_fc5ac096[arg1].field_2048,
           sub_fc5ac096[arg1].field_2304,
           sub_fc5ac096[arg1].field_2560,
           sub_fc5ac096[arg1].field_2816
}

function _fallback() payable {
    revert
}

function sub_41d713ea(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_5a0c7efb = arg1
}

function sub_52d2ec7d(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_83f8a084Address = arg1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor1[address(arg1)] = 1
}

function setUserStart(bool arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor7 = Mask(96, 0, arg1)
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor1[address(arg1)] = 0
}

function sub_64a2f2b4(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if _ruleProxys[arg1]:
        revert with 0, 'must null'
    _ruleProxys[arg1] = arg2
    stor4[address(arg2)] = 1
}

function setBaseResId(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if sub_fc5ac096[arg1].field_0 <= 0:
        revert with 0, 'cocosNFT not exist'
    sub_fc5ac096[arg1].field_1024 = arg2
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg4.length) + 192] = arg3
        mem[ceil32(arg4.length) + 224] = 128
        mem[ceil32(arg4.length) + 256] = arg4.length
        emit NFTReceived(address rg1, address rg2, uint256 rg3, bytes rg4):
                         Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                         mem[arg4.length + 160 len (2 * ceil32(arg4.length)) + -arg4.length + 128],
        mem[ceil32(arg4.length) + 128] = 'onERC721Received(address,address'
        mem[ceil32(arg4.length) + 160] = ',uint256,bytes)'
        mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 15]))
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_fc5ac096[arg1].field_0 <= 0:
        revert with 0, 'not exist'
    require ext_code.size(sub_83f8a084Address)
    call sub_83f8a084Address.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_83f8a084Address)
    call sub_83f8a084Address.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd740c3bf: sub_fc5ac096[arg1].field_768, sub_fc5ac096[arg1].field_2304, sub_fc5ac096[arg1].field_0
    require ext_code.size(_ruleProxys[stor2[arg1].field_1792])
    call _ruleProxys[stor2[arg1].field_1792].0xd118dd43 with:
         gas gas_remaining wei
        args msg.sender, sub_fc5ac096[arg1].field_0, sub_fc5ac096[arg1].field_256, sub_fc5ac096[arg1].field_512, sub_fc5ac096[arg1].field_768, sub_fc5ac096[arg1].field_1024, sub_fc5ac096[arg1].field_1280, sub_fc5ac096[arg1].field_1536, sub_fc5ac096[arg1].field_1792, sub_fc5ac096[arg1].field_2048, sub_fc5ac096[arg1].field_2304, sub_fc5ac096[arg1].field_2560, sub_fc5ac096[arg1].field_2816
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_fc5ac096[arg1].field_0 = 0
    return 1
}

function seize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 25
    mem[ceil32(return_data.size) + 128] = 'transfer(address,uint256)'
    mem[ceil32(return_data.size) + 260 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg2) << 64, 0, ext_call.return_data[0], mem[ceil32(return_data.size) + 260 len 28]
    call arg1.mem[ceil32(return_data.size) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 264 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
}

function gmMint(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require calldata.size - 4 >= 160
    require calldata.size - 164 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, 'can't mint'
    require ext_code.size(_ruleProxys[arg3])
    call _ruleProxys[arg3].0x8f019157 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg4, 0, 0, 0, 0, 0, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg6:
        sub_5a0c7efb++
        sub_fc5ac096[stor6].field_0 = sub_5a0c7efb
        sub_fc5ac096[stor6].field_256 = arg7
        sub_fc5ac096[stor6].field_512 = arg8
        sub_fc5ac096[stor6].field_768 = ext_call.return_data[0]
        sub_fc5ac096[stor6].field_1024 = arg2
        sub_fc5ac096[stor6].field_1280 = arg5
        sub_fc5ac096[stor6].field_1536 = arg4
        sub_fc5ac096[stor6].field_1792 = arg3
        sub_fc5ac096[stor6].field_2048 = arg9
        sub_fc5ac096[stor6].field_2304 = address(ext_call.return_data[32])
        sub_fc5ac096[stor6].field_2560 = block.timestamp
        sub_fc5ac096[stor6].field_2816 = block.number
        require ext_code.size(sub_83f8a084Address)
        call sub_83f8a084Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg9), sub_5a0c7efb
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb8e21fa9: arg7, arg8, ext_call.return_data[0], arg2, arg5, arg4, arg3, address(arg9), address(ext_call.return_data[32]), block.timestamp, block.number, sub_5a0c7efb
    else:
        if arg6 > sub_5a0c7efb:
            sub_5a0c7efb = arg6
        sub_fc5ac096[arg6].field_0 = arg6
        sub_fc5ac096[arg6].field_256 = arg7
        sub_fc5ac096[arg6].field_512 = arg8
        sub_fc5ac096[arg6].field_768 = ext_call.return_data[0]
        sub_fc5ac096[arg6].field_1024 = arg2
        sub_fc5ac096[arg6].field_1280 = arg5
        sub_fc5ac096[arg6].field_1536 = arg4
        sub_fc5ac096[arg6].field_1792 = arg3
        sub_fc5ac096[arg6].field_2048 = arg9
        sub_fc5ac096[arg6].field_2304 = address(ext_call.return_data[32])
        sub_fc5ac096[arg6].field_2560 = block.timestamp
        sub_fc5ac096[arg6].field_2816 = block.number
        require ext_code.size(sub_83f8a084Address)
        call sub_83f8a084Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg9), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb8e21fa9: arg7, arg8, ext_call.return_data[0], arg2, arg5, arg4, arg3, address(arg9), address(ext_call.return_data[32]), block.timestamp, block.number, arg6
}



}
