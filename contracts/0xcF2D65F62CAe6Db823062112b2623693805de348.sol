contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address operatorAddress;
uint256 stor0;
address tokenManagerAddress;
address tokenAddress;
uint256 cliff;
uint256 duration;
array of struct sub_c7e3fbae;
mapping of uint256 sub_5d6987b7;
mapping of uint256 released;
mapping of uint8 stor8;

function duration() payable {
    return duration
}

function cliff() payable {
    return cliff
}

function tokenManager() payable {
    return tokenManagerAddress
}

function operator() payable {
    return address(operatorAddress)
}

function sub_5d6987b7(?) payable {
    require calldata.size - 4 >= 32
    return sub_5d6987b7[arg1]
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    return released[arg1]
}

function sub_c7e3fbae(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_c7e3fbae[arg1].field_0
    return sub_c7e3fbae[arg1][arg2].field_0, sub_c7e3fbae[arg1][arg2].field_256
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setCliff(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    cliff = arg1
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    duration = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    tokenAddress = arg1
}

function sub_9c8f2eb4(?) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    stor8[address(arg1)] = uint8(arg2)
}

function updateTokenManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    tokenManagerAddress = arg1
}

function updateOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    address(operatorAddress) = arg1
}

function sub_1cea5dab(?) payable {
    require calldata.size - 4 >= 64
    if tokenManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x774f6e6c7920746f6b656e4d616e6167657220636f6e74726163742063616e2063616c6c20746869732066756e6374696f6e,
                    mem[214 len 14]
    require arg1
    require arg2 > 0
    sub_c7e3fbae[address(arg1)].field_0++
    sub_c7e3fbae[address(arg1)][sub_c7e3fbae[address(arg1)].field_0].field_0 = arg2
    sub_c7e3fbae[address(arg1)][sub_c7e3fbae[address(arg1)].field_0].field_256 = block.timestamp
    if sub_5d6987b7[address(arg1)] + 1 < sub_5d6987b7[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_5d6987b7[address(arg1)]++
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if not stor8[address(arg1)]:
        revert with 0, 'This account is not revokable'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    released[address(arg1)] += ext_call.return_data[0]
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit Revoked(address(arg1), ext_call.return_data[0], block.timestamp);
}

function sub_8ce8634d(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = sub_5d6987b7[address(arg1)]
    if sub_5d6987b7[address(arg1)]:
        mem[128 len 32 * sub_5d6987b7[address(arg1)]] = code.data[5082 len 32 * sub_5d6987b7[address(arg1)]]
    mem[(32 * sub_5d6987b7[address(arg1)]) + 128] = sub_5d6987b7[address(arg1)]
    mem[64] = (64 * sub_5d6987b7[address(arg1)]) + 160
    if sub_5d6987b7[address(arg1)]:
        mem[(32 * sub_5d6987b7[address(arg1)]) + 160 len 32 * sub_5d6987b7[address(arg1)]] = code.data[5082 len 32 * sub_5d6987b7[address(arg1)]]
    idx = 0
    while idx < sub_c7e3fbae[address(arg1)].field_0:
        require idx < sub_c7e3fbae[address(arg1)].field_0
        require idx < sub_5d6987b7[address(arg1)]
        mem[(32 * idx) + 128] = sub_c7e3fbae[address(arg1)][idx].field_0
        require idx < sub_c7e3fbae[address(arg1)].field_0
        require idx < mem[(32 * sub_5d6987b7[address(arg1)]) + 128]
        mem[(32 * idx) + (32 * sub_5d6987b7[address(arg1)]) + 160] = sub_c7e3fbae[address(arg1)][idx].field_256
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        continue 
    mem[(64 * sub_5d6987b7[address(arg1)]) + 160] = 64
    mem[(64 * sub_5d6987b7[address(arg1)]) + 224] = sub_5d6987b7[address(arg1)]
    s = 0
    while sub_c7e3fbae[address(arg1)].field_0 < 32 * sub_5d6987b7[address(arg1)]:
        mem[sub_c7e3fbae[address(arg1)].field_0 + mem[64] + 96] = mem[sub_c7e3fbae[address(arg1)].field_0 + 128]
        s = sub_c7e3fbae[address(arg1)].field_0 + 32
        continue 
    mem[(64 * sub_5d6987b7[address(arg1)]) + 192] = (32 * sub_5d6987b7[address(arg1)]) + 96
    mem[(98 * sub_5d6987b7[address(arg1)]) + 256] = mem[(32 * sub_5d6987b7[address(arg1)]) + 128]
    mem[(98 * sub_5d6987b7[address(arg1)]) + 288 len floor32(mem[(32 * sub_5d6987b7[address(arg1)]) + 128])] = mem[(32 * sub_5d6987b7[address(arg1)]) + 160 len floor32(mem[(32 * sub_5d6987b7[address(arg1)]) + 128])]
    return memory
      from mem[64]
       len (32 * mem[(32 * sub_5d6987b7[address(arg1)]) + 128]) + (98 * sub_5d6987b7[address(arg1)]) + -mem[64] + 288
}

function vestedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * sub_c7e3fbae[address(arg1)].field_0) + 128
    mem[96] = sub_c7e3fbae[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_c7e3fbae[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _40 = mem[64]
        mem[64] = mem[64] + 64
        mem[_40] = sub_c7e3fbae[address(arg1)][idx].field_0
        mem[_40 + 32] = sub_c7e3fbae[address(arg1)][idx].field_256
        mem[s] = _40
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        if cliff + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= cliff + mem[mem[(32 * idx) + 128] + 32]:
            require idx < mem[96]
            if duration + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            if block.timestamp >= duration + mem[mem[(32 * idx) + 128] + 32]:
                if mem[mem[(32 * idx) + 128]] < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if cliff + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if cliff + mem[mem[(32 * idx) + 128] + 32] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[96]
                if duration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require duration
                if mem[mem[(32 * idx) + 128]] / duration:
                    if (block.timestamp * mem[mem[(32 * idx) + 128]] / duration) - (cliff * mem[mem[(32 * idx) + 128]] / duration) - (mem[mem[(32 * idx) + 128] + 32] * mem[mem[(32 * idx) + 128]] / duration) / mem[mem[(32 * idx) + 128]] / duration != block.timestamp - cliff - mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (block.timestamp * mem[mem[(32 * idx) + 128]] / duration) - (cliff * mem[mem[(32 * idx) + 128]] / duration) - (mem[mem[(32 * idx) + 128] + 32] * mem[mem[(32 * idx) + 128]] / duration) < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function releasableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * sub_c7e3fbae[address(arg1)].field_0) + 128
    mem[96] = sub_c7e3fbae[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_c7e3fbae[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _43 = mem[64]
        mem[64] = mem[64] + 64
        mem[_43] = sub_c7e3fbae[address(arg1)][idx].field_0
        mem[_43 + 32] = sub_c7e3fbae[address(arg1)][idx].field_256
        mem[s] = _43
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        if cliff + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= cliff + mem[mem[(32 * idx) + 128] + 32]:
            require idx < mem[96]
            if duration + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            if block.timestamp >= duration + mem[mem[(32 * idx) + 128] + 32]:
                if mem[mem[(32 * idx) + 128]] < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if cliff + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if cliff + mem[mem[(32 * idx) + 128] + 32] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[96]
                if duration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require duration
                if mem[mem[(32 * idx) + 128]] / duration:
                    if (block.timestamp * mem[mem[(32 * idx) + 128]] / duration) - (cliff * mem[mem[(32 * idx) + 128]] / duration) - (mem[mem[(32 * idx) + 128] + 32] * mem[mem[(32 * idx) + 128]] / duration) / mem[mem[(32 * idx) + 128]] / duration != block.timestamp - cliff - mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (block.timestamp * mem[mem[(32 * idx) + 128]] / duration) - (cliff * mem[mem[(32 * idx) + 128]] / duration) - (mem[mem[(32 * idx) + 128] + 32] * mem[mem[(32 * idx) + 128]] / duration) < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if released[address(arg1)] > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    return -released[address(arg1)]
}

function release() payable {
    if stor8[msg.sender]:
        revert with 0, 'This account is revoked'
    mem[0] = msg.sender
    mem[32] = 5
    mem[64] = (32 * sub_c7e3fbae[address(msg.sender)].field_0) + 128
    mem[96] = sub_c7e3fbae[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < sub_c7e3fbae[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 5)
        _88 = mem[64]
        mem[64] = mem[64] + 64
        mem[_88] = sub_c7e3fbae[address(msg.sender)][idx].field_0
        mem[_88 + 32] = sub_c7e3fbae[address(msg.sender)][idx].field_256
        mem[s] = _88
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        if cliff + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= cliff + mem[mem[(32 * idx) + 128] + 32]:
            require idx < mem[96]
            if duration + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            if block.timestamp >= duration + mem[mem[(32 * idx) + 128] + 32]:
                if mem[mem[(32 * idx) + 128]] < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if cliff + mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                if cliff + mem[mem[(32 * idx) + 128] + 32] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[96]
                if duration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require duration
                if mem[mem[(32 * idx) + 128]] / duration:
                    if (block.timestamp * mem[mem[(32 * idx) + 128]] / duration) - (cliff * mem[mem[(32 * idx) + 128]] / duration) - (mem[mem[(32 * idx) + 128] + 32] * mem[mem[(32 * idx) + 128]] / duration) / mem[mem[(32 * idx) + 128]] / duration != block.timestamp - cliff - mem[mem[(32 * idx) + 128] + 32]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (block.timestamp * mem[mem[(32 * idx) + 128]] / duration) - (cliff * mem[mem[(32 * idx) + 128]] / duration) - (mem[mem[(32 * idx) + 128] + 32] * mem[mem[(32 * idx) + 128]] / duration) < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if released[address(msg.sender)] > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    if -released[address(msg.sender)] <= 0:
        revert with 0, 'unreleased can not be zero'
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < -released[address(msg.sender)]:
        revert with 0, 'Balance not enough'
    if 0 < released[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    mem[0] = msg.sender
    mem[32] = 7
    released[address(msg.sender)] = 0
    _202 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = -released[address(msg.sender)]
    _203 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_203 + 32 len 4] = unknown_0xa9059cbb(?????)
    _206 = mem[_203]
    mem[mem[64] len floor32(mem[_203])] = mem[_203 + 32 len floor32(mem[_203])]
    mem[mem[64] + floor32(mem[_203]) + -(mem[_203] % 32) + 32 len mem[_203] % 32] = mem[_203 + floor32(mem[_203]) + -(mem[_203] % 32) + 64 len mem[_203] % 32]
    call tokenAddress with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _206 + _202 + -mem[64] + 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        _249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[_249 + 32]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit Released(msg.sender, -released[address(msg.sender)], block.timestamp);
}



}
