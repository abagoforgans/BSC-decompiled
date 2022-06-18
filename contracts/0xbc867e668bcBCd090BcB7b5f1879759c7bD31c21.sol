contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;

function getOwner() payable {
    return owner
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not governance'
    require arg1
    owner = arg1
}

function withdrawOwner() payable {
    if owner != msg.sender:
        revert with 0, 'not governance'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2e9f411e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 >= 100
    if arg1 != 90:
        if arg1 != 180:
            if arg1 != 360:
                revert with 0, 'Wrong Staking type'
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 == 90:
        if block.timestamp + 90 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        balance[address(msg.sender)].field_0++
        balance[address(msg.sender)].field_256 += arg2
        balance[address(msg.sender)].field_512++
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_0 = balance[address(msg.sender)].field_0
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = msg.sender
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 = arg1
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 = arg2
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 = block.timestamp
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280 = block.timestamp + 90
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = arg2
        stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 0
        emit 0xaaa6a81d: block.timestamp, block.timestamp + 90, 0, msg.sender, arg2
    else:
        if arg1 != 180:
            if block.timestamp + 360 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            balance[address(msg.sender)].field_0++
            balance[address(msg.sender)].field_256 += arg2
            balance[address(msg.sender)].field_512++
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_0 = balance[address(msg.sender)].field_0
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = msg.sender
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 = arg1
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 = arg2
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 = block.timestamp
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280 = block.timestamp + 360
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = arg2
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 0
            emit 0xaaa6a81d: block.timestamp, block.timestamp + 360, 0, msg.sender, arg2
        else:
            if block.timestamp + 180 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            balance[address(msg.sender)].field_0++
            balance[address(msg.sender)].field_256 += arg2
            balance[address(msg.sender)].field_512++
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_0 = balance[address(msg.sender)].field_0
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = msg.sender
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 = arg1
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 = arg2
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 = block.timestamp
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280 = block.timestamp + 180
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = arg2
            stor[(8 * balance[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 0
            emit 0xaaa6a81d: block.timestamp, block.timestamp + 180, 0, msg.sender, arg2
    return 0
}

function getWithdrawAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < balance[address(msg.sender)].field_512
    if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256:
        revert with 0, 'stream does not exist'
    require arg1 < balance[address(msg.sender)].field_512
    if bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792) == 1:
        return 0
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 == 90:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if 20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        return (stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600))
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 == 180:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if 40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        return (stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600))
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 != 360:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 > stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                if 0 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    if 60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    return (stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600))
}

function sub_eb6a5bf5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[0] = address(arg1)
    mem[32] = 1
    mem[192] = balance[address(arg1)].field_0
    mem[224] = balance[address(arg1)].field_256
    mem[64] = (32 * balance[address(arg1)].field_512) + 320
    mem[288] = balance[address(arg1)].field_512
    s = 320
    idx = 0
    while idx < balance[address(arg1)].field_512:
        mem[0] = sha3(address(arg1), 1) + 2
        _69 = mem[64]
        mem[64] = mem[64] + 256
        mem[_69] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_0
        mem[_69 + 32] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_256
        mem[_69 + 64] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_512
        mem[_69 + 96] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_768
        mem[_69 + 128] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_1024
        mem[_69 + 160] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_1280
        mem[_69 + 192] = stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_1536
        mem[_69 + 224] = bool(stor[(8 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balance', 1)))].field_1792)
        mem[s] = _69
        s = s + 32
        idx = idx + 1
        continue 
    mem[256] = 288
    _131 = mem[192]
    idx = 0
    while idx < _131:
        _134 = mem[64]
        mem[64] = mem[64] + 256
        mem[_134] = 0
        mem[_134 + 32] = 0
        mem[_134 + 64] = 0
        mem[_134 + 96] = 0
        mem[_134 + 128] = 0
        mem[_134 + 160] = 0
        mem[_134 + 192] = 0
        mem[_134 + 224] = 0
        require idx < mem[mem[256]]
        _137 = mem[(32 * idx) + mem[256] + 32]
        _138 = mem[mem[(32 * idx) + mem[256] + 32] + 64]
        _139 = mem[mem[(32 * idx) + mem[256] + 32] + 96]
        if mem[mem[(32 * idx) + mem[256] + 32] + 64] == 90:
            if block.timestamp - mem[mem[(32 * idx) + mem[256] + 32] + 128] <= mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                mem[mem[(32 * idx) + mem[256] + 32] + 192] = mem[mem[(32 * idx) + mem[256] + 32] + 96]
            else:
                if not mem[mem[(32 * idx) + mem[256] + 32] + 96]:
                    _150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_150] = 26
                    mem[_150 + 32] = 'SafeMath: division by zero'
                    mem[_137 + 192] = _139
                else:
                    require mem[mem[(32 * idx) + mem[256] + 32] + 96]
                    if 20 * mem[mem[(32 * idx) + mem[256] + 32] + 96] * mem[mem[(32 * idx) + mem[256] + 32] + 64] / mem[mem[(32 * idx) + mem[256] + 32] + 96] != 20 * mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_158] = 26
                    mem[_158 + 32] = 'SafeMath: division by zero'
                    mem[_137 + 192] = _139 + (20 * _139 * _138 / 10 * 3600)
        else:
            if mem[mem[(32 * idx) + mem[256] + 32] + 64] == 180:
                if block.timestamp - mem[mem[(32 * idx) + mem[256] + 32] + 128] <= mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                    mem[mem[(32 * idx) + mem[256] + 32] + 192] = mem[mem[(32 * idx) + mem[256] + 32] + 96]
                else:
                    if not mem[mem[(32 * idx) + mem[256] + 32] + 96]:
                        _157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_157] = 26
                        mem[_157 + 32] = 'SafeMath: division by zero'
                        mem[_137 + 192] = _139
                    else:
                        require mem[mem[(32 * idx) + mem[256] + 32] + 96]
                        if 40 * mem[mem[(32 * idx) + mem[256] + 32] + 96] * mem[mem[(32 * idx) + mem[256] + 32] + 64] / mem[mem[(32 * idx) + mem[256] + 32] + 96] != 40 * mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_162] = 26
                        mem[_162 + 32] = 'SafeMath: division by zero'
                        mem[_137 + 192] = _139 + (40 * _139 * _138 / 10 * 3600)
            else:
                if mem[mem[(32 * idx) + mem[256] + 32] + 64] != 360:
                    if block.timestamp - mem[mem[(32 * idx) + mem[256] + 32] + 128] <= mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                        mem[mem[(32 * idx) + mem[256] + 32] + 192] = mem[mem[(32 * idx) + mem[256] + 32] + 96]
                    else:
                        if not mem[mem[(32 * idx) + mem[256] + 32] + 96]:
                            _159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_159] = 26
                            mem[_159 + 32] = 'SafeMath: division by zero'
                        else:
                            require mem[mem[(32 * idx) + mem[256] + 32] + 96]
                            if 0 / mem[mem[(32 * idx) + mem[256] + 32] + 96]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_164] = 26
                            mem[_164 + 32] = 'SafeMath: division by zero'
                        mem[_137 + 192] = _139
                else:
                    if block.timestamp - mem[mem[(32 * idx) + mem[256] + 32] + 128] <= mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                        mem[mem[(32 * idx) + mem[256] + 32] + 192] = mem[mem[(32 * idx) + mem[256] + 32] + 96]
                    else:
                        if not mem[mem[(32 * idx) + mem[256] + 32] + 96]:
                            _161 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_161] = 26
                            mem[_161 + 32] = 'SafeMath: division by zero'
                            mem[_137 + 192] = _139
                        else:
                            require mem[mem[(32 * idx) + mem[256] + 32] + 96]
                            if 60 * mem[mem[(32 * idx) + mem[256] + 32] + 96] * mem[mem[(32 * idx) + mem[256] + 32] + 64] / mem[mem[(32 * idx) + mem[256] + 32] + 96] != 60 * mem[mem[(32 * idx) + mem[256] + 32] + 64]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _166 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_166] = 26
                            mem[_166 + 32] = 'SafeMath: division by zero'
                            mem[_137 + 192] = _139 + (60 * _139 * _138 / 10 * 3600)
        require idx < mem[mem[256]]
        mem[(32 * idx) + mem[256] + 32] = _137
        _131 = mem[192]
        idx = idx + 1
        continue 
    _132 = mem[256]
    _133 = mem[64]
    mem[mem[64]] = 32
    _141 = mem[_132]
    mem[mem[64] + 32] = mem[_132]
    idx = 0
    s = _132 + 32
    t = mem[64] + 64
    while idx < _141:
        _192 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_192 + 44 len 20]
        mem[t + 64] = mem[_192 + 64]
        mem[t + 96] = mem[_192 + 96]
        mem[t + 128] = mem[_192 + 128]
        mem[t + 160] = mem[_192 + 160]
        mem[t + 192] = mem[_192 + 192]
        mem[t + 224] = bool(mem[_192 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _133 + (256 * _141) + -mem[64] + 64
}

function getStream(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < balance[address(msg.sender)].field_512
    if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256:
        revert with 0, 'stream does not exist'
    require arg1 < balance[address(msg.sender)].field_512
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 == 90:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
                   bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
                   bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if 20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
               bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600)
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 == 180:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
                   bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
            return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
                   bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
                   stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
        if 40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
               bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600)
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 != 360:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 > stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                if 0 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                    revert with 0, 'SafeMath: multiplication overflow'
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
               bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
               bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
        return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
               bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
               stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
    if 60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    return stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, 
           stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512,
           stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768,
           stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024,
           stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1280,
           bool(stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792),
           stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < balance[address(msg.sender)].field_512
    if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256:
        revert with 0, 'stream does not exist'
    require arg1 < balance[address(msg.sender)].field_512
    require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 == msg.sender
    require not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792
    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 == 90:
        if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
            balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
            require arg1 < balance[address(msg.sender)].field_512
            stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
            stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
            stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
            emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
        else:
            if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                require arg1 < balance[address(msg.sender)].field_512
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
            else:
                require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                if 20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                require arg1 < balance[address(msg.sender)].field_512
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (20 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600));
    else:
        if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 == 180:
            if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                require arg1 < balance[address(msg.sender)].field_512
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
            else:
                if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    require arg1 < balance[address(msg.sender)].field_512
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                    emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
                else:
                    require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    if 40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    require arg1 < balance[address(msg.sender)].field_512
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                    emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (40 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600));
        else:
            if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 != 360:
                if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 > stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
                    if stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                        require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        if 0 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                            revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                require arg1 < balance[address(msg.sender)].field_512
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
            else:
                if block.timestamp - stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1024 <= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                    require arg1 < balance[address(msg.sender)].field_512
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                    stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                    emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
                else:
                    if not stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        require arg1 < balance[address(msg.sender)].field_512
                        stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                        stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                        stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                        emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768);
                    else:
                        require stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        if 60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 != 60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require balance[address(msg.sender)].field_256 >= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        balance[address(msg.sender)].field_256 -= stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768
                        require arg1 < balance[address(msg.sender)].field_512
                        stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256 = stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_256
                        stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1536 = 0
                        stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_1792 = 1
                        emit Withdraw(block.timestamp, arg1, msg.sender, stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 + (60 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_768 * stor[(8 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balance', 1)))].field_512 / 10 * 3600));
}



}
