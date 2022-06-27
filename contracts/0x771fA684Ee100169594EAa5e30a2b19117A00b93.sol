contract main {




// =====================  Runtime code  =====================


#
#  - sub_412b12f6(?)
#
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 _decimals;
array of uint256 _symbol;
array of uint256 _name;
address stor7;
address stor8;
address stor9;

function name() payable {
    return _name[0 len _name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _name() payable {
    return _name[0 len _name.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_03c10420(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xa4385646517d9b34ada4ac393a64ea120d08408c)
    staticcall 0xa4385646517d9b34ada4ac393a64ea120d08408c.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x23f07a1c03e7c6d0c88e0e05e79b6e3511073fd5, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa4385646517d9b34ada4ac393a64ea120d08408c, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (50 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(0xa4385646517d9b34ada4ac393a64ea120d08408c)
    call 0xa4385646517d9b34ada4ac393a64ea120d08408c.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 1, 1, address(this.address), block.timestamp + (50 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor7)
    staticcall stor7.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if 1 > ext_call.return_data[32] / 2:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[224] = 2
    mem[256] = 0x23f07a1c03e7c6d0c88e0e05e79b6e3511073fd5
    require ext_code.size(stor7)
    staticcall stor7.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = ext_call.return_data[12 len 20]
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = (ext_call.return_data[32] / 2) - 1
    mem[356] = 64
    mem[388] = 2
    mem[420 len 0] = None
    require ext_code.size(stor7)
    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args (ext_call.return_data[32] / 2) - 1, Array(len=2, data=mem[420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _227 = mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
    require mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 320]
    _230 = mem[_227 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_227 + 320])] = mem[_227 + 352 len floor32(mem[_227 + 320])]
    mem[(32 * _230) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _230) + ceil32(return_data.size) + 356] = (ext_call.return_data[32] / 2) - 1
    mem[(32 * _230) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _230) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _230) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor8)
    staticcall stor8.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args (ext_call.return_data[32] / 2) - 1, Array(len=2, data=mem[(32 * _230) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _230) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _230) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _526 = mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
    require mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
    require mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _230) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _230) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _230) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _230) + ceil32(return_data.size) + 352]
    _529 = mem[_526 + (32 * _230) + ceil32(return_data.size) + 352]
    mem[(32 * _230) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_526 + (32 * _230) + ceil32(return_data.size) + 352])] = mem[_526 + (32 * _230) + ceil32(return_data.size) + 384 len floor32(mem[_526 + (32 * _230) + ceil32(return_data.size) + 352])]
    if block.timestamp + (50 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require 1 < mem[ceil32(return_data.size) + 320]
    _669 = mem[ceil32(return_data.size) + 384]
    if not mem[ceil32(return_data.size) + 384]:
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 384] = 26
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[32] / 2) - 1
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 484] = 0
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 548] = owner
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 516] = 160
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 612] = 2
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (ext_call.return_data[32] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _808 = mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        _813 = mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])] = mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])]
        require 1 < mem[(32 * _230) + (2 * ceil32(return_data.size)) + 352]
        if not mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]:
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 0
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]
        else:
            require mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]
            if 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] != 9500:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 581 len 31]
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480] = 26
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _813) + (32 * _529) + (32 * _230) + (6 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        require mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
    else:
        require mem[ceil32(return_data.size) + 384]
        if 9500 * mem[ceil32(return_data.size) + 384] / mem[ceil32(return_data.size) + 384] != 9500:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 485 len 31]
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 384] = 26
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[32] / 2) - 1
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 484] = 9500 * _669 / 10000
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 548] = owner
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 516] = 160
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 612] = 2
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (ext_call.return_data[32] / 2) - 1, 9500 * _669 / 10000, Array(len=2, data=mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 64]), owner, block.timestamp + (50 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _806 = mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        _812 = mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])] = mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])]
        require 1 < mem[(32 * _230) + (2 * ceil32(return_data.size)) + 352]
        if not mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]:
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 0
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]
        else:
            require mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]
            if 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] != 9500:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 581 len 31]
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480] = 26
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _812) + (32 * _529) + (32 * _230) + (6 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        require mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function sub_e8117d8c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x23f07a1c03e7c6d0c88e0e05e79b6e3511073fd5, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (50 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 1, 1, address(this.address), block.timestamp + (50 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor7)
    staticcall stor7.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if 1 > ext_call.return_data[32] / 2:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[224] = 2
    mem[256] = 0x23f07a1c03e7c6d0c88e0e05e79b6e3511073fd5
    require ext_code.size(stor7)
    staticcall stor7.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = ext_call.return_data[12 len 20]
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = (ext_call.return_data[32] / 2) - 1
    mem[356] = 64
    mem[388] = 2
    mem[420 len 0] = None
    require ext_code.size(stor7)
    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args (ext_call.return_data[32] / 2) - 1, Array(len=2, data=mem[420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _227 = mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
    require mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 320]
    _230 = mem[_227 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_227 + 320])] = mem[_227 + 352 len floor32(mem[_227 + 320])]
    mem[(32 * _230) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _230) + ceil32(return_data.size) + 356] = (ext_call.return_data[32] / 2) - 1
    mem[(32 * _230) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _230) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _230) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor8)
    staticcall stor8.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args (ext_call.return_data[32] / 2) - 1, Array(len=2, data=mem[(32 * _230) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _230) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _230) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _526 = mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
    require mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
    require mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _230) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _230) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _230) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _230) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _230) + ceil32(return_data.size) + 352]
    _529 = mem[_526 + (32 * _230) + ceil32(return_data.size) + 352]
    mem[(32 * _230) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_526 + (32 * _230) + ceil32(return_data.size) + 352])] = mem[_526 + (32 * _230) + ceil32(return_data.size) + 384 len floor32(mem[_526 + (32 * _230) + ceil32(return_data.size) + 352])]
    if block.timestamp + (50 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require 1 < mem[ceil32(return_data.size) + 320]
    _669 = mem[ceil32(return_data.size) + 384]
    if not mem[ceil32(return_data.size) + 384]:
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 384] = 26
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[32] / 2) - 1
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 484] = 0
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 548] = owner
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 516] = 160
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 612] = 2
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (ext_call.return_data[32] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _808 = mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        _813 = mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])] = mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_808 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])]
        require 1 < mem[(32 * _230) + (2 * ceil32(return_data.size)) + 352]
        if not mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]:
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 0
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]
        else:
            require mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]
            if 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] != 9500:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 581 len 31]
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480] = 26
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _813) + (32 * _529) + (32 * _230) + (6 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        require mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _813) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
    else:
        require mem[ceil32(return_data.size) + 384]
        if 9500 * mem[ceil32(return_data.size) + 384] / mem[ceil32(return_data.size) + 384] != 9500:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 485 len 31]
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 384] = 26
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[32] / 2) - 1
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 484] = 9500 * _669 / 10000
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 548] = owner
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 516] = 160
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 612] = 2
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (ext_call.return_data[32] / 2) - 1, 9500 * _669 / 10000, Array(len=2, data=mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 644 len 64]), owner, block.timestamp + (50 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _806 = mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        _812 = mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448]
        mem[(32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])] = mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_806 + (32 * _529) + (32 * _230) + (2 * ceil32(return_data.size)) + 448])]
        require 1 < mem[(32 * _230) + (2 * ceil32(return_data.size)) + 352]
        if not mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]:
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 0
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]
        else:
            require mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416]
            if 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] != 9500:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 581 len 31]
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 480] = 26
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[32] / 2) - 1
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 644] = owner
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] / 2) - 1, 9500 * mem[(32 * _230) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _812) + (32 * _529) + (32 * _230) + (6 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        require mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[32] / 2) - 1) >> 32 + (32 * _812) + (32 * _529) + (32 * _230) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function stakeTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if 1 > ext_call.return_data[0] / 2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (ext_call.return_data[0] / 2) - 1:
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224] = 2
        mem[256] = 0x23f07a1c03e7c6d0c88e0e05e79b6e3511073fd5
        require ext_code.size(stor7)
        staticcall stor7.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = ext_call.return_data[12 len 20]
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = (ext_call.return_data[0] / 2) - 1
        mem[356] = 64
        mem[388] = 2
        mem[420 len 0] = None
        require ext_code.size(stor7)
        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2) - 1, Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _362 = mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
        require mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 320]
        _367 = mem[_362 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_362 + 320])] = mem[_362 + 352 len floor32(mem[_362 + 320])]
        mem[(32 * _367) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _367) + ceil32(return_data.size) + 356] = (ext_call.return_data[0] / 2) - 1
        mem[(32 * _367) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _367) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _367) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor8)
        staticcall stor8.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2) - 1, Array(len=2, data=mem[(32 * _367) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _367) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _367) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _960 = mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
        require mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _367) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _367) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _367) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _367) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _367) + ceil32(return_data.size) + 352]
        _965 = mem[_960 + (32 * _367) + ceil32(return_data.size) + 352]
        mem[(32 * _367) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_960 + (32 * _367) + ceil32(return_data.size) + 352])] = mem[_960 + (32 * _367) + ceil32(return_data.size) + 384 len floor32(mem[_960 + (32 * _367) + ceil32(return_data.size) + 352])]
        if block.timestamp + (50 * 3600) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < mem[ceil32(return_data.size) + 320]
        _1245 = mem[ceil32(return_data.size) + 384]
        if not mem[ceil32(return_data.size) + 384]:
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 384] = 26
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[0] / 2) - 1
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 484] = 0
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 548] = owner
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 516] = 160
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 612] = 2
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 644 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _1524 = mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
            require mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
            mem[(32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448]
            _1533 = mem[_1524 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448]
            mem[(32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_1524 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448])] = mem[_1524 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_1524 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448])]
            require 1 < mem[(32 * _367) + (2 * ceil32(return_data.size)) + 352]
            if not mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416]:
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 580] = 0
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 64]
            else:
                require mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416]
                if 9500 * mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] != 9500:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 581 len 31]
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 480] = 26
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] / 10000
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 9500 * mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1533) + (32 * _965) + (32 * _367) + (6 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            require mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1533) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
        else:
            require mem[ceil32(return_data.size) + 384]
            if 9500 * mem[ceil32(return_data.size) + 384] / mem[ceil32(return_data.size) + 384] != 9500:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 485 len 31]
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 384] = 26
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[0] / 2) - 1
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 484] = 9500 * _1245 / 10000
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 548] = owner
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 516] = 160
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 612] = 2
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 644 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] / 2) - 1, 9500 * _1245 / 10000, Array(len=2, data=mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 644 len 64]), owner, block.timestamp + (50 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _1522 = mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
            require mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
            mem[(32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448]
            _1532 = mem[_1522 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448]
            mem[(32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_1522 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448])] = mem[_1522 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_1522 + (32 * _965) + (32 * _367) + (2 * ceil32(return_data.size)) + 448])]
            require 1 < mem[(32 * _367) + (2 * ceil32(return_data.size)) + 352]
            if not mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416]:
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 580] = 0
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 64]
            else:
                require mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416]
                if 9500 * mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] != 9500:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 581 len 31]
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 480] = 26
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] / 10000
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 9500 * mem[(32 * _367) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1532) + (32 * _965) + (32 * _367) + (6 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            require mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1532) + (32 * _965) + (32 * _367) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
    else:
        require (ext_call.return_data[0] / 2) - 1
        if 2 * (ext_call.return_data[0] / 2) - 1 / (ext_call.return_data[0] / 2) - 1 != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 2 * (ext_call.return_data[0] / 2) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224] = 2
        mem[256] = 0x23f07a1c03e7c6d0c88e0e05e79b6e3511073fd5
        require ext_code.size(stor7)
        staticcall stor7.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = ext_call.return_data[12 len 20]
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = (ext_call.return_data[0] / 2) - 1
        mem[356] = 64
        mem[388] = 2
        mem[420 len 0] = None
        require ext_code.size(stor7)
        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2) - 1, Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _360 = mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
        require mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 320]
        _366 = mem[_360 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_360 + 320])] = mem[_360 + 352 len floor32(mem[_360 + 320])]
        mem[(32 * _366) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _366) + ceil32(return_data.size) + 356] = (ext_call.return_data[0] / 2) - 1
        mem[(32 * _366) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _366) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _366) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor8)
        staticcall stor8.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] / 2) - 1, Array(len=2, data=mem[(32 * _366) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _366) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _366) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _958 = mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
        require mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
        require mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _366) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _366) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _366) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _366) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _366) + ceil32(return_data.size) + 352]
        _964 = mem[_958 + (32 * _366) + ceil32(return_data.size) + 352]
        mem[(32 * _366) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_958 + (32 * _366) + ceil32(return_data.size) + 352])] = mem[_958 + (32 * _366) + ceil32(return_data.size) + 384 len floor32(mem[_958 + (32 * _366) + ceil32(return_data.size) + 352])]
        if block.timestamp + (50 * 3600) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < mem[ceil32(return_data.size) + 320]
        _1244 = mem[ceil32(return_data.size) + 384]
        if not mem[ceil32(return_data.size) + 384]:
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 384] = 26
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[0] / 2) - 1
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 484] = 0
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 548] = owner
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 516] = 160
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 612] = 2
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 644 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _1520 = mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
            require mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
            mem[(32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448]
            _1531 = mem[_1520 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448]
            mem[(32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_1520 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448])] = mem[_1520 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_1520 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448])]
            require 1 < mem[(32 * _366) + (2 * ceil32(return_data.size)) + 352]
            if not mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416]:
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 580] = 0
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 64]
            else:
                require mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416]
                if 9500 * mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] != 9500:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 581 len 31]
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 480] = 26
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] / 10000
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 9500 * mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1531) + (32 * _964) + (32 * _366) + (6 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            require mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1531) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
        else:
            require mem[ceil32(return_data.size) + 384]
            if 9500 * mem[ceil32(return_data.size) + 384] / mem[ceil32(return_data.size) + 384] != 9500:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 485 len 31]
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 384] = 26
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 416] = 'SafeMath: division by zero'
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 452] = (ext_call.return_data[0] / 2) - 1
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 484] = 9500 * _1244 / 10000
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 548] = owner
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + (50 * 3600)
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 516] = 160
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 612] = 2
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 644 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] / 2) - 1, 9500 * _1244 / 10000, Array(len=2, data=mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 644 len 64]), owner, block.timestamp + (50 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _1518 = mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32
            require mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
            mem[(32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448]
            _1530 = mem[_1518 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448]
            mem[(32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_1518 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448])] = mem[_1518 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_1518 + (32 * _964) + (32 * _366) + (2 * ceil32(return_data.size)) + 448])]
            require 1 < mem[(32 * _366) + (2 * ceil32(return_data.size)) + 352]
            if not mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416]:
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 580] = 0
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 0, 160, owner, block.timestamp + (50 * 3600), 2, mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 64]
            else:
                require mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416]
                if 9500 * mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] / mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] != 9500:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 581 len 31]
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 480] = 26
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 512] = 'SafeMath: division by zero'
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 548] = (ext_call.return_data[0] / 2) - 1
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 580] = 9500 * mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] / 10000
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 644] = owner
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 676] = block.timestamp + (50 * 3600)
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 612] = 160
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 708] = 2
                mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 0] = None
                require ext_code.size(stor8)
                call stor8.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2) - 1, 9500 * mem[(32 * _366) + (2 * ceil32(return_data.size)) + 416] / 10000, Array(len=2, data=mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 740 len 64]), owner, block.timestamp + (50 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1530) + (32 * _964) + (32 * _366) + (6 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            require mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 <= 4294967296
            require mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544] <= 4294967296 and mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * mem[mem[(32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (ext_call.return_data[0] / 2) - 1) >> 32 + (32 * _1530) + (32 * _964) + (32 * _366) + (4 * ceil32(return_data.size)) + 544]) + 32 <= return_data.size
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}



}
