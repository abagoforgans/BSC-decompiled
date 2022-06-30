contract main {




// =====================  Runtime code  =====================


address owner;
address uniswapV2RouterAddress;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function buyTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.value:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        mem[224] = 2
        mem[256] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[288] = arg1
        mem[320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[324] = 0
        mem[356] = 128
        mem[452] = 2
        idx = 0
        s = 256
        t = 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[388] = arg2
        mem[420] = block.timestamp
        call uniswapV2RouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(arg2), block.timestamp, 2, mem[484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _54 = mem[320 len 4], 0
        require mem[320 len 4], 0 <= test266151307()
        require mem[320 len 4], 0 + 351 < return_data.size + 320
        _56 = mem[mem[320 len 4], 0 + 320]
        if mem[mem[320 len 4], 0 + 320] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[320 len 4], 0 + 320]) + 321 > test266151307() or floor32(mem[mem[320 len 4], 0 + 320]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[320 len 4], 0 + 320]) + 321
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 0 + 320]
        require _54 + (32 * _56) + 32 <= return_data.size
        idx = _54 + 352
        s = ceil32(return_data.size) + 352
        while idx < _54 + (32 * _56) + 352:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if msg.value and 7 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if 7 * msg.value / msg.value != 7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 7 * msg.value / 1000 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 7 * msg.value / 1000:
            revert with 'NH{q', 17
        mem[224] = 2
        mem[256] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[288] = arg1
        mem[320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[324] = 0
        mem[356] = 128
        mem[452] = 2
        idx = 0
        s = 256
        t = 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[388] = arg2
        mem[420] = block.timestamp
        call uniswapV2RouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (7 * msg.value / 1000) wei
             gas gas_remaining wei
            args 0, 128, address(arg2), block.timestamp, 2, mem[484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _53 = mem[320 len 4], 0
        require mem[320 len 4], 0 <= test266151307()
        require mem[320 len 4], 0 + 351 < return_data.size + 320
        _55 = mem[mem[320 len 4], 0 + 320]
        if mem[mem[320 len 4], 0 + 320] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[320 len 4], 0 + 320]) + 321 > test266151307() or floor32(mem[mem[320 len 4], 0 + 320]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[320 len 4], 0 + 320]) + 321
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 0 + 320]
        require _53 + (32 * _55) + 32 <= return_data.size
        idx = _53 + 352
        s = ceil32(return_data.size) + 352
        while idx < _53 + (32 * _55) + 352:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}



}
