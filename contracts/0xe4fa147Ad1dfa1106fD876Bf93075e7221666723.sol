contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_148dca67;
uint256 sub_a8e94f54;
uint8 stor4;
uint8 stor4; offset 8
address sub_0af4c22cAddress; offset 16
uint256 stor4; offset 8
address sub_b60b0e97Address;
mapping of uint8 stor6;
address uniswapV2RouterAddress;
address stor8;
address stor9;

function sub_0af4c22c(?) payable {
    return sub_0af4c22cAddress
}

function sub_148dca67(?) payable {
    return sub_148dca67
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function sub_62e8a4dc(?) payable {
    return bool(uint8(stor4.field_0))
}

function sub_763def5d(?) payable {
    return bool(uint8(stor4.field_8))
}

function owner() payable {
    return owner
}

function sub_a8e94f54(?) payable {
    return sub_a8e94f54
}

function sub_b60b0e97(?) payable {
    return sub_b60b0e97Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function set_rate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a8e94f54 = arg1
}

function sub_11bb76cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor4.field_8) = Mask(248, 0, bool(arg1))
}

function setIsBlackListed(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
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

function sub_9390119a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0af4c22cAddress = address(arg1)
    sub_b60b0e97Address = address(arg2)
    sub_148dca67 = arg4
    uniswapV2RouterAddress = address(arg3)
    uint8(stor4.field_0) = 1
}

function check_tradeIn(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_0af4c22cAddress)
    staticcall sub_0af4c22cAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function check_tradeOut(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_b60b0e97Address)
    staticcall sub_b60b0e97Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_b3e2e202(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor4.field_0):
        revert with 0, 'Contract not initialize'
    sub_0af4c22cAddress = address(arg1)
    sub_b60b0e97Address = address(arg2)
    sub_148dca67 = arg4
    uniswapV2RouterAddress = address(arg3)
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_b60b0e97Address)
    call sub_b60b0e97Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function check_multipliedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_0af4c22cAddress)
    staticcall sub_0af4c22cAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'There is no enough tokens in the account for buy back'
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_a8e94f54:
        revert with 'NH{q', 18
    if 100 > -sub_148dca67 - 1:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9 and sub_148dca67 + 100 > -1 / 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9:
        revert with 'NH{q', 17
    if (100 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) + (sub_148dca67 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) / 100 and 10 > -1 / (100 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) + (sub_148dca67 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) / 100:
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9,
           10 * (100 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) + (sub_148dca67 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) / 100
}

function WBNBtoBUSD() payable {
    mem[96] = 2
    mem[128] = stor8
    mem[160] = stor9
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^9
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^9, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = _20 + 224
    t = ceil32(return_data.size) + 224
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len 32 * _21] = mem[ceil32(return_data.size) + 224 len 32 * _21]
    return Array(len=_21, data=mem[mem[64] + 64 len 32 * _21])
}

function WBNBtoTT() payable {
    mem[96] = 2
    mem[128] = stor8
    mem[160] = sub_0af4c22cAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^9
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^9, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = _20 + 224
    t = ceil32(return_data.size) + 224
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len 32 * _21] = mem[ceil32(return_data.size) + 224 len 32 * _21]
    return Array(len=_21, data=mem[mem[64] + 64 len 32 * _21])
}

function buyBack() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor4.field_8):
        revert with 0, 'It is not activated'
    if stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address is not allowed to perform hyperFlate'
    require ext_code.size(sub_0af4c22cAddress)
    staticcall sub_0af4c22cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'There is no enough tokens in the account for buy back'
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_a8e94f54:
        revert with 'NH{q', 18
    if 100 > -sub_148dca67 - 1:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9 and sub_148dca67 + 100 > -1 / 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9:
        revert with 'NH{q', 17
    if (100 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) + (sub_148dca67 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) / 100 and 10 > -1 / (100 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) + (sub_148dca67 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) / 100:
        revert with 'NH{q', 17
    require ext_code.size(sub_0af4c22cAddress)
    call sub_0af4c22cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_b60b0e97Address)
    call sub_b60b0e97Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10 * (100 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) + (sub_148dca67 * 10^18 * ext_call.return_data[0] / sub_a8e94f54 / 10^9) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function TTperBUSD() payable {
    mem[96] = 2
    mem[128] = stor8
    mem[160] = stor9
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^9
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^9, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _34 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _35 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = _34 + 224
    t = ceil32(return_data.size) + 224
    while idx < _35:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _35:
        revert with 'NH{q', 50
    _58 = mem[ceil32(return_data.size) + 256]
    _59 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_59]:
        revert with 'NH{q', 50
    mem[_59 + 32] = stor8
    if 1 >= mem[_59]:
        revert with 'NH{q', 50
    mem[_59 + 64] = sub_0af4c22cAddress
    mem[_59 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_59 + 100] = 10^9
    mem[_59 + 132] = 64
    mem[_59 + 164] = mem[_59]
    idx = 0
    s = _59 + 32
    t = _59 + 196
    while idx < mem[_59]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _59 + (32 * mem[_59]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _78 = mem[_77]
    require mem[_77] <= test266151307()
    require _77 + mem[_77] + 31 < _77 + return_data.size
    _79 = mem[_77 + mem[_77]]
    if mem[_77 + mem[_77]] > test266151307():
        revert with 'NH{q', 65
    if _77 + ceil32(return_data.size) + floor32(mem[_77 + mem[_77]]) + 1 > test266151307() or floor32(mem[_77 + mem[_77]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _77 + ceil32(return_data.size) + floor32(mem[_77 + mem[_77]]) + 1
    mem[_77 + ceil32(return_data.size)] = _79
    require _78 + (32 * _79) + 32 <= return_data.size
    idx = 0
    s = _77 + _78 + 32
    t = _77 + ceil32(return_data.size) + 32
    while idx < _79:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _79:
        revert with 'NH{q', 50
    if mem[_77 + ceil32(return_data.size) + 64] and 10^9 > -1 / mem[_77 + ceil32(return_data.size) + 64]:
        revert with 'NH{q', 17
    if not _58:
        revert with 'NH{q', 18
    mem[mem[64]] = 10^9 * mem[_77 + ceil32(return_data.size) + 64] / _58
    return memory
      from mem[64]
       len 32
}



}
