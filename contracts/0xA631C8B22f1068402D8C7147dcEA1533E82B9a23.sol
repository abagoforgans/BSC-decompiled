contract main {




// =====================  Runtime code  =====================


const sub_392d98aa(?) = 15


address owner;
uint256 stor1;
uint8 stor2;
uint256 sub_e4385fa0;
array of uint256 sub_955952eb;
address mainAddress;
address openBoxAddress;
uint256 period;
mapping of struct periods;

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function sub_955952eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 15
    return sub_955952eb[arg1]
}

function openBox() payable {
    return openBoxAddress
}

function main() payable {
    return mainAddress
}

function sub_e4385fa0(?) payable {
    return sub_e4385fa0
}

function periods(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return periods[arg1].field_0, periods[arg1].field_256
}

function sub_edc15b6b(?) payable {
    require calldata.size - 4 >= 32
    return sub_edc15b6b[arg1].field_0, sub_edc15b6b[arg1].field_256
}

function period() payable {
    return period
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_fabc8bf6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    openBoxAddress = arg1
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        if not stor2:
            revert with 0, 'Pausable: not paused'
        stor2 = 0
        emit Unpaused(msg.sender);
    else:
        if stor2:
            revert with 0, 'Pausable: paused'
        stor2 = 1
        emit Paused(msg.sender);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getInfo() payable {
    require ext_code.size(mainAddress)
    staticcall mainAddress.0x9a4da761 with:
            gas gas_remaining wei
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
    mem[384 len 0] = None
    return Array(len=6, data=mem[384 len 192])
}

function update() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_e4385fa0 + periods[stor21].field_0 < periods[stor21].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if block.number >= sub_e4385fa0 + periods[stor21].field_0:
        require ext_code.size(mainAddress)
        staticcall mainAddress.0x9a4da761 with:
                gas gas_remaining wei
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
        periods[stor21].field_256 = ext_call.return_data[0] / 2
        periods[stor21].field_511 = 0
        period++
        periods[stor21 + 1].field_0 = block.number
        sub_edc15b6b[stor21].field_0 = 15
        emit NewPeriod(block.number, period);
}

function sub_bea2dc14(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 23
    require sub_edc15b6b[arg1].field_512 <= test266151307()
    mem[96] = sub_edc15b6b[arg1].field_512
    mem[64] = (32 * sub_edc15b6b[arg1].field_512) + 128
    if not sub_edc15b6b[arg1].field_512:
        idx = 0
        while idx < sub_edc15b6b[arg1].field_512:
            mem[0] = sub_edc15b6b[arg1][idx + 2].field_0
            mem[32] = sha3(arg1, 23) + 4
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = sub_edc15b6b[arg1][4][sub_edc15b6b[arg1][idx + 2].field_0].field_0
            mem[_27 + 32] = sub_edc15b6b[arg1][4][sub_edc15b6b[arg1][idx + 2].field_0].field_256
            if 0 == idx:
                require idx < mem[96]
                mem[(32 * idx) + 128] = _27
            else:
                if var20001 < 0:
                    require var20001 + 1 < mem[96]
                    mem[(32 * var20001 + 1) + 128] = _27
                else:
                    require var22002 < mem[96]
                    s = var22002
                    t = mem[_27 + 32]
                    t = var22002
                    while s:
                        require var24002 < mem[96]
                        require var24002 + 1 < mem[96]
                        mem[(32 * var24002 + 1) + 128] = mem[(32 * var24002) + 128]
                        if var24002 - 1 >= 0:
                            require var24002 - 1 < mem[96]
                            s = var24002 - 1
                            t = mem[_27 + 32]
                            t = var24002 - 1
                            continue 
                        require var24002 < mem[96]
                        mem[(32 * var24002) + 128] = _27
                        idx = idx + 1
                        continue 
                    require var24002 + 1 < mem[96]
                    mem[(32 * var24002 + 1) + 128] = _27
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _30 = mem[96]
        s = mem[64] + 64
        idx = 0
        while idx < _30:
            _78 = mem[(32 * idx) + 128]
            t = 0
            while t < 64:
                mem[2 * t] = mem[t + _78]
                t = t + 32
                continue 
            t = 128
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * sub_edc15b6b[arg1].field_512) + 192
        mem[(32 * sub_edc15b6b[arg1].field_512) + 128 len 64] = call.data[calldata.size len 64]
        mem[var10001] = (32 * sub_edc15b6b[arg1].field_512) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_edc15b6b[arg1].field_512) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * sub_edc15b6b[arg1].field_512) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_edc15b6b[arg1].field_512:
            mem[0] = sub_edc15b6b[arg1][idx + 2].field_0
            mem[32] = sha3(arg1, 23) + 4
            _83 = mem[64]
            mem[64] = mem[64] + 64
            mem[_83] = sub_edc15b6b[arg1][4][sub_edc15b6b[arg1][idx + 2].field_0].field_0
            mem[_83 + 32] = sub_edc15b6b[arg1][4][sub_edc15b6b[arg1][idx + 2].field_0].field_256
            if 0 == idx:
                require idx < mem[96]
                mem[(32 * idx) + 128] = _83
            else:
                if var27001 < 0:
                    require var27001 + 1 < mem[96]
                    mem[(32 * var27001 + 1) + 128] = _83
                else:
                    require var29002 < mem[96]
                    s = var29002
                    t = mem[_83 + 32]
                    t = var29002
                    while s:
                        require var31002 < mem[96]
                        require var31002 + 1 < mem[96]
                        mem[(32 * var31002 + 1) + 128] = mem[(32 * var31002) + 128]
                        if var31002 - 1 >= 0:
                            require var31002 - 1 < mem[96]
                            s = var31002 - 1
                            t = mem[_83 + 32]
                            t = var31002 - 1
                            continue 
                        require var31002 < mem[96]
                        mem[(32 * var31002) + 128] = _83
                        idx = idx + 1
                        continue 
                    require var31002 + 1 < mem[96]
                    mem[(32 * var31002 + 1) + 128] = _83
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _87 = mem[96]
        s = mem[64] + 64
        idx = 0
        while idx < _87:
            _131 = mem[(32 * idx) + 128]
            t = 0
            while t < 64:
                mem[2 * t] = mem[t + _131]
                t = t + 32
                continue 
            t = 128
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function open(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if openBoxAddress != msg.sender:
        revert with 0, 'Caller is not the box'
    require ext_code.size(mainAddress)
    staticcall mainAddress.getUser(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        revert with 0, 'Address not registed'
    if sub_e4385fa0 + periods[stor21].field_0 < periods[stor21].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if block.number >= sub_e4385fa0 + periods[stor21].field_0:
        require ext_code.size(mainAddress)
        staticcall mainAddress.0x9a4da761 with:
                gas gas_remaining wei
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
        periods[stor21].field_256 = ext_call.return_data[0] / 2
        periods[stor21].field_511 = 0
        period++
        periods[stor21 + 1].field_0 = block.number
        sub_edc15b6b[stor21].field_0 = 15
        emit NewPeriod(block.number, period);
    if arg2 + periods[stor21][2][ext_call.return_data[32]].field_0 < periods[stor21][2][ext_call.return_data[32]].field_0:
        revert with 0, 'SafeMath: addition overflow'
    periods[stor21][2][ext_call.return_data[32]].field_0 += arg2
    if arg2 + periods[stor21][3][ext_call.return_data[0]].field_0 < periods[stor21][3][ext_call.return_data[0]].field_0:
        revert with 0, 'SafeMath: addition overflow'
    periods[stor21][3][ext_call.return_data[0]].field_0 += arg2
    if not sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_0:
        sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_0 = ext_call.return_data[0]
        sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_256 = arg2
        if arg2 <= sub_edc15b6b[stor21].field_256:
            sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512 = sub_edc15b6b[stor21].field_768
            sub_edc15b6b[stor21].field_768++
            stor[('array', 3, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21].field_768].field_0 = ext_call.return_data[0]
        else:
            if sub_edc15b6b[stor21].field_512 < sub_edc15b6b[stor21].field_0:
                sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512 = sub_edc15b6b[stor21].field_512
                sub_edc15b6b[stor21].field_512++
                stor[sub_edc15b6b[stor21].field_512 + ('array', 2, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23)))].field_0 = ext_call.return_data[0]
                if sub_edc15b6b[stor21].field_256:
                    sub_edc15b6b[stor21].field_256 = 0
            else:
                idx = 0
                s = 0x8000000000000000000000000000000000000000000000000000000000000000
                t = 0
                while idx < sub_edc15b6b[stor21].field_512:
                    mem[0] = sub_edc15b6b[stor21][idx + 2].field_0
                    mem[32] = sha3(period, 23) + 4
                    if sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256 <= s:
                        idx = idx + 1
                        s = sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256
                        t = sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_0
                        continue 
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require sub_edc15b6b[stor21][4][t].field_512 < sub_edc15b6b[stor21].field_512
                stor[sub_edc15b6b[stor21][4][t].field_512 + ('array', 2, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23)))].field_0 = ext_call.return_data[0]
                sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512 = sub_edc15b6b[stor21][4][t].field_512
                sub_edc15b6b[stor21][4][t].field_512 = sub_edc15b6b[stor21].field_768
                sub_edc15b6b[stor21].field_768++
                stor[('array', 3, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21].field_768].field_0 = sub_edc15b6b[stor21][4][t].field_0
                if sub_edc15b6b[stor21].field_256 != 0x8000000000000000000000000000000000000000000000000000000000000000:
                    sub_edc15b6b[stor21].field_256 = 0x8000000000000000000000000000000000000000000000000000000000000000
    else:
        if arg2 + sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_256 < sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_256 += arg2
        if sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512 >= sub_edc15b6b[stor21].field_768:
            if sub_edc15b6b[stor21].field_512 < sub_edc15b6b[stor21].field_0:
                if sub_edc15b6b[stor21].field_256:
                    sub_edc15b6b[stor21].field_256 = 0
            else:
                idx = 0
                s = 0x8000000000000000000000000000000000000000000000000000000000000000
                while idx < sub_edc15b6b[stor21].field_512:
                    mem[0] = sub_edc15b6b[stor21][idx + 2].field_0
                    mem[32] = sha3(period, 23) + 4
                    if sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256 >= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256
                    continue 
                if sub_edc15b6b[stor21].field_256 != s:
                    sub_edc15b6b[stor21].field_256 = s
        else:
            if stor[('array', 3, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512].field_0 != sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_0:
                if sub_edc15b6b[stor21].field_512 < sub_edc15b6b[stor21].field_0:
                    if sub_edc15b6b[stor21].field_256:
                        sub_edc15b6b[stor21].field_256 = 0
                else:
                    idx = 0
                    s = 0x8000000000000000000000000000000000000000000000000000000000000000
                    while idx < sub_edc15b6b[stor21].field_512:
                        mem[0] = sub_edc15b6b[stor21][idx + 2].field_0
                        mem[32] = sha3(period, 23) + 4
                        if sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256 >= s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256
                        continue 
                    if sub_edc15b6b[stor21].field_256 != s:
                        sub_edc15b6b[stor21].field_256 = s
            else:
                if arg2 + sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_256 > sub_edc15b6b[stor21].field_256:
                    idx = 0
                    s = 0x8000000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while idx < sub_edc15b6b[stor21].field_512:
                        mem[0] = sub_edc15b6b[stor21][idx + 2].field_0
                        mem[32] = sha3(period, 23) + 4
                        if sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256 <= s:
                            idx = idx + 1
                            s = sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_256
                            t = sub_edc15b6b[stor21][4][sub_edc15b6b[stor21][idx + 2].field_0].field_0
                            continue 
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require sub_edc15b6b[stor21][4][t].field_512 < sub_edc15b6b[stor21].field_512
                    stor[('array', 2, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21][4][t].field_512].field_0 = ext_call.return_data[0]
                    require sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512 < sub_edc15b6b[stor21].field_768
                    stor[('array', 3, ('map', ('stor', ('name', 'stor21', 21)), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512].field_0 = t
                    sub_edc15b6b[stor21][4][t].field_512 = sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512
                    sub_edc15b6b[stor21][4][ext_call.return_data[0]].field_512 = sub_edc15b6b[stor21][4][t].field_512
                    if sub_edc15b6b[stor21].field_256 != 0x8000000000000000000000000000000000000000000000000000000000000000:
                        sub_edc15b6b[stor21].field_256 = 0x8000000000000000000000000000000000000000000000000000000000000000
    emit Open(arg2, arg1, ext_call.return_data[32]);
}

function sub_80b5780e(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(mainAddress)
    staticcall mainAddress.0xf9aa6042 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 5
    mem[128 len 160] = call.data[calldata.size len 160]
    mem[128] = ext_call.return_data[0]
    mem[160] = periods[arg2][3][ext_call.return_data[0]].field_0
    mem[192] = periods[arg2][2][arg1].field_0
    if not periods[arg2][3][ext_call.return_data[0]].field_0:
        mem[352 len 0] = None
        return Array(len=5, data=mem[352 len 160])
    if not sub_edc15b6b[arg2][4][ext_call.return_data[0]].field_0:
        mem[352 len 0] = None
        return Array(len=5, data=mem[352 len 160])
    if sub_edc15b6b[arg2][4][ext_call.return_data[0]].field_512 >= sub_edc15b6b[arg2].field_512:
        mem[352 len 0] = None
        return Array(len=5, data=mem[352 len 160])
    if stor[('array', 2, ('map', ('param', 'arg2'), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[arg2][4][ext_call.return_data[0]].field_512].field_0 != sub_edc15b6b[arg2][4][ext_call.return_data[0]].field_0:
        mem[352 len 0] = None
        return Array(len=5, data=mem[352 len 160])
    if periods[arg2][4][arg1].field_0:
        mem[352 len 0] = None
        return Array(len=5, data=mem[352 len 160])
    mem[0] = arg2
    mem[32] = 23
    require sub_edc15b6b[arg2].field_512 <= test266151307()
    mem[288] = sub_edc15b6b[arg2].field_512
    mem[64] = (32 * sub_edc15b6b[arg2].field_512) + 320
    if not sub_edc15b6b[arg2].field_512:
        idx = 0
        while idx < sub_edc15b6b[arg2].field_512:
            mem[0] = sub_edc15b6b[arg2][idx + 2].field_0
            mem[32] = sha3(arg2, 23) + 4
            _433 = mem[64]
            mem[64] = mem[64] + 64
            mem[_433] = sub_edc15b6b[arg2][4][sub_edc15b6b[arg2][idx + 2].field_0].field_0
            mem[_433 + 32] = sub_edc15b6b[arg2][4][sub_edc15b6b[arg2][idx + 2].field_0].field_256
            if 0 == idx:
                require idx < mem[288]
                mem[(32 * idx) + 320] = _433
            else:
                if var37001 < 0:
                    require var37001 + 1 < mem[288]
                    mem[(32 * var37001 + 1) + 320] = _433
                else:
                    require var39002 < mem[288]
                    s = var39002
                    t = mem[_433 + 32]
                    t = var39002
                    while s:
                        require var41002 < mem[288]
                        require var41002 + 1 < mem[288]
                        mem[(32 * var41002 + 1) + 320] = mem[(32 * var41002) + 320]
                        if var41002 - 1 >= 0:
                            require var41002 - 1 < mem[288]
                            s = var41002 - 1
                            t = mem[_433 + 32]
                            t = var41002 - 1
                            continue 
                        require var41002 < mem[288]
                        mem[(32 * var41002) + 320] = _433
                        idx = idx + 1
                        continue 
                    require var41002 + 1 < mem[288]
                    mem[(32 * var41002 + 1) + 320] = _433
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[288]:
            require idx < mem[288]
            if mem[mem[(32 * idx) + 320]] != ext_call.return_data[0]:
                idx = idx + 1
                continue 
            require idx < 15
            if not periods[arg2].field_256:
                _788 = mem[64]
                mem[64] = mem[64] + 64
                mem[_788] = 26
                mem[_788 + 32] = 'SafeMath: division by zero'
                mem[0] = arg1
                mem[32] = sha3(arg2, 22) + 2
                _827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_827] = 26
                mem[_827 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    _838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _838 + 68] = mem[idx + _827 + 32]
                        idx = idx + 32
                        continue 
                    mem[_838 + 68] = mem[_838 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _838 + -mem[64] + 100
                require 3 < mem[96]
                mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
                mem[0] = arg1
                require 4 < mem[96]
                if periods[arg2][4][arg1].field_0:
                    mem[256] = 1
                    _969 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _971 = mem[96]
                    idx = 0
                    while idx < 32 * _971:
                        mem[idx + _969 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from mem[64]
                       len (32 * _971) + _969 + -mem[64] + 64
                mem[256] = 0
                _972 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _974 = mem[96]
                idx = 0
                while idx < 32 * _974:
                    mem[idx + _972 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _974) + _972 + -mem[64] + 64
            if sub_955952eb[idx] * periods[arg2].field_256 / periods[arg2].field_256 != sub_955952eb[idx]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _791 = mem[64]
            mem[64] = mem[64] + 64
            mem[_791] = 26
            mem[_791 + 32] = 'SafeMath: division by zero'
            mem[0] = arg1
            mem[32] = sha3(arg2, 22) + 2
            if not sub_955952eb[idx] * periods[arg2].field_256 / 10000:
                _831 = mem[64]
                mem[64] = mem[64] + 64
                mem[_831] = 26
                mem[_831 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    _847 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _847 + 68] = mem[idx + _831 + 32]
                        idx = idx + 32
                        continue 
                    mem[_847 + 68] = mem[_847 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _847 + -mem[64] + 100
                require 3 < mem[96]
                mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
                mem[0] = arg1
                require 4 < mem[96]
                if periods[arg2][4][arg1].field_0:
                    mem[256] = 1
                    _983 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _985 = mem[96]
                    idx = 0
                    while idx < 32 * _985:
                        mem[idx + _983 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from mem[64]
                       len (32 * _985) + _983 + -mem[64] + 64
                mem[256] = 0
                _986 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _988 = mem[96]
                idx = 0
                while idx < 32 * _988:
                    mem[idx + _986 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _988) + _986 + -mem[64] + 64
            if periods[arg2][2][arg1].field_0 * sub_955952eb[idx] * periods[arg2].field_256 / 10000 / sub_955952eb[idx] * periods[arg2].field_256 / 10000 != periods[arg2][2][arg1].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _837 = mem[64]
            mem[64] = mem[64] + 64
            mem[_837] = 26
            mem[_837 + 32] = 'SafeMath: division by zero'
            if not periods[arg2][3][ext_call.return_data[0]].field_0:
                _858 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _858 + 68] = mem[idx + _837 + 32]
                    idx = idx + 32
                    continue 
                mem[_858 + 68] = mem[_858 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _858 + -mem[64] + 100
            require 3 < mem[96]
            mem[224] = periods[arg2][2][arg1].field_0 * sub_955952eb[idx] * periods[arg2].field_256 / 10000 / periods[arg2][3][ext_call.return_data[0]].field_0
            mem[0] = arg1
            require 4 < mem[96]
            if periods[arg2][4][arg1].field_0:
                mem[256] = 1
                _995 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _997 = mem[96]
                idx = 0
                while idx < 32 * _997:
                    mem[idx + _995 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _997) + _995 + -mem[64] + 64
            mem[256] = 0
            _998 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _1000 = mem[96]
            idx = 0
            while idx < 32 * _1000:
                mem[idx + _998 + 64] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * _1000) + _998 + -mem[64] + 64
        if not periods[arg2].field_256:
            _779 = mem[64]
            mem[64] = mem[64] + 64
            mem[_779] = 26
            mem[_779 + 32] = 'SafeMath: division by zero'
            mem[0] = arg1
            mem[32] = sha3(arg2, 22) + 2
            _802 = mem[64]
            mem[64] = mem[64] + 64
            mem[_802] = 26
            mem[_802 + 32] = 'SafeMath: division by zero'
            if not periods[arg2][3][ext_call.return_data[0]].field_0:
                revert with 0, 'SafeMath: division by zero'
            require 3 < mem[96]
            mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
        else:
            if sub_955952eb.length * periods[arg2].field_256 / periods[arg2].field_256 != sub_955952eb.length:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _782 = mem[64]
            mem[64] = mem[64] + 64
            mem[_782] = 26
            mem[_782 + 32] = 'SafeMath: division by zero'
            mem[0] = arg1
            mem[32] = sha3(arg2, 22) + 2
            if not sub_955952eb.length * periods[arg2].field_256 / 10000:
                _807 = mem[64]
                mem[64] = mem[64] + 64
                mem[_807] = 26
                mem[_807 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                require 3 < mem[96]
                mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
            else:
                if periods[arg2][2][arg1].field_0 * sub_955952eb.length * periods[arg2].field_256 / 10000 / sub_955952eb.length * periods[arg2].field_256 / 10000 != periods[arg2][2][arg1].field_0:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _809 = mem[64]
                mem[64] = mem[64] + 64
                mem[_809] = 26
                mem[_809 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                require 3 < mem[96]
                mem[224] = periods[arg2][2][arg1].field_0 * sub_955952eb.length * periods[arg2].field_256 / 10000 / periods[arg2][3][ext_call.return_data[0]].field_0
    else:
        mem[64] = (32 * sub_edc15b6b[arg2].field_512) + 384
        mem[(32 * sub_edc15b6b[arg2].field_512) + 320 len 64] = call.data[calldata.size len 64]
        mem[var27001] = (32 * sub_edc15b6b[arg2].field_512) + 320
        s = var27001
        idx = var27002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_edc15b6b[arg2].field_512) + 320 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * sub_edc15b6b[arg2].field_512) + 320
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_edc15b6b[arg2].field_512:
            mem[0] = sub_edc15b6b[arg2][idx + 2].field_0
            mem[32] = sha3(arg2, 23) + 4
            _1134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1134] = sub_edc15b6b[arg2][4][sub_edc15b6b[arg2][idx + 2].field_0].field_0
            mem[_1134 + 32] = sub_edc15b6b[arg2][4][sub_edc15b6b[arg2][idx + 2].field_0].field_256
            if 0 == idx:
                require idx < mem[288]
                mem[(32 * idx) + 320] = _1134
            else:
                if var44001 < 0:
                    require var44001 + 1 < mem[288]
                    mem[(32 * var44001 + 1) + 320] = _1134
                else:
                    require var46002 < mem[288]
                    s = var46002
                    t = mem[_1134 + 32]
                    t = var46002
                    while s:
                        require var48002 < mem[288]
                        require var48002 + 1 < mem[288]
                        mem[(32 * var48002 + 1) + 320] = mem[(32 * var48002) + 320]
                        if var48002 - 1 >= 0:
                            require var48002 - 1 < mem[288]
                            s = var48002 - 1
                            t = mem[_1134 + 32]
                            t = var48002 - 1
                            continue 
                        require var48002 < mem[288]
                        mem[(32 * var48002) + 320] = _1134
                        idx = idx + 1
                        continue 
                    require var48002 + 1 < mem[288]
                    mem[(32 * var48002 + 1) + 320] = _1134
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[288]:
            require idx < mem[288]
            if mem[mem[(32 * idx) + 320]] != ext_call.return_data[0]:
                idx = idx + 1
                continue 
            require idx < 15
            if not periods[arg2].field_256:
                _1340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1340] = 26
                mem[_1340 + 32] = 'SafeMath: division by zero'
                mem[0] = arg1
                mem[32] = sha3(arg2, 22) + 2
                _1367 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1367] = 26
                mem[_1367 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    _1378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1378 + 68] = mem[idx + _1367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1378 + 68] = mem[_1378 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1378 + -mem[64] + 100
                require 3 < mem[96]
                mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
                mem[0] = arg1
                require 4 < mem[96]
                if periods[arg2][4][arg1].field_0:
                    mem[256] = 1
                    _1456 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1458 = mem[96]
                    idx = 0
                    while idx < 32 * _1458:
                        mem[idx + _1456 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from mem[64]
                       len (32 * _1458) + _1456 + -mem[64] + 64
                mem[256] = 0
                _1459 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _1461 = mem[96]
                idx = 0
                while idx < 32 * _1461:
                    mem[idx + _1459 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1461) + _1459 + -mem[64] + 64
            if sub_955952eb[idx] * periods[arg2].field_256 / periods[arg2].field_256 != sub_955952eb[idx]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1343] = 26
            mem[_1343 + 32] = 'SafeMath: division by zero'
            mem[0] = arg1
            mem[32] = sha3(arg2, 22) + 2
            if not sub_955952eb[idx] * periods[arg2].field_256 / 10000:
                _1371 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1371] = 26
                mem[_1371 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    _1385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1385 + 68] = mem[idx + _1371 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1385 + 68] = mem[_1385 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1385 + -mem[64] + 100
                require 3 < mem[96]
                mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
                mem[0] = arg1
                require 4 < mem[96]
                if periods[arg2][4][arg1].field_0:
                    mem[256] = 1
                    _1462 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1464 = mem[96]
                    idx = 0
                    while idx < 32 * _1464:
                        mem[idx + _1462 + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from mem[64]
                       len (32 * _1464) + _1462 + -mem[64] + 64
                mem[256] = 0
                _1465 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _1467 = mem[96]
                idx = 0
                while idx < 32 * _1467:
                    mem[idx + _1465 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1467) + _1465 + -mem[64] + 64
            if periods[arg2][2][arg1].field_0 * sub_955952eb[idx] * periods[arg2].field_256 / 10000 / sub_955952eb[idx] * periods[arg2].field_256 / 10000 != periods[arg2][2][arg1].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1377 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1377] = 26
            mem[_1377 + 32] = 'SafeMath: division by zero'
            if not periods[arg2][3][ext_call.return_data[0]].field_0:
                _1391 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1391 + 68] = mem[idx + _1377 + 32]
                    idx = idx + 32
                    continue 
                mem[_1391 + 68] = mem[_1391 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1391 + -mem[64] + 100
            require 3 < mem[96]
            mem[224] = periods[arg2][2][arg1].field_0 * sub_955952eb[idx] * periods[arg2].field_256 / 10000 / periods[arg2][3][ext_call.return_data[0]].field_0
            mem[0] = arg1
            require 4 < mem[96]
            if periods[arg2][4][arg1].field_0:
                mem[256] = 1
                _1468 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                _1470 = mem[96]
                idx = 0
                while idx < 32 * _1470:
                    mem[idx + _1468 + 64] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1470) + _1468 + -mem[64] + 64
            mem[256] = 0
            _1471 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _1473 = mem[96]
            idx = 0
            while idx < 32 * _1473:
                mem[idx + _1471 + 64] = mem[idx + 128]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len (32 * _1473) + _1471 + -mem[64] + 64
        if not periods[arg2].field_256:
            _1336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1336] = 26
            mem[_1336 + 32] = 'SafeMath: division by zero'
            mem[0] = arg1
            mem[32] = sha3(arg2, 22) + 2
            _1350 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1350] = 26
            mem[_1350 + 32] = 'SafeMath: division by zero'
            if not periods[arg2][3][ext_call.return_data[0]].field_0:
                revert with 0, 'SafeMath: division by zero'
            require 3 < mem[96]
            mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
        else:
            if sub_955952eb.length * periods[arg2].field_256 / periods[arg2].field_256 != sub_955952eb.length:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1337] = 26
            mem[_1337 + 32] = 'SafeMath: division by zero'
            mem[0] = arg1
            mem[32] = sha3(arg2, 22) + 2
            if not sub_955952eb.length * periods[arg2].field_256 / 10000:
                _1353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1353] = 26
                mem[_1353 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                require 3 < mem[96]
                mem[224] = 0 / periods[arg2][3][ext_call.return_data[0]].field_0
            else:
                if periods[arg2][2][arg1].field_0 * sub_955952eb.length * periods[arg2].field_256 / 10000 / sub_955952eb.length * periods[arg2].field_256 / 10000 != periods[arg2][2][arg1].field_0:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1354] = 26
                mem[_1354 + 32] = 'SafeMath: division by zero'
                if not periods[arg2][3][ext_call.return_data[0]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                require 3 < mem[96]
                mem[224] = periods[arg2][2][arg1].field_0 * sub_955952eb.length * periods[arg2].field_256 / 10000 / periods[arg2][3][ext_call.return_data[0]].field_0
    mem[0] = arg1
    require 4 < mem[96]
    if periods[arg2][4][arg1].field_0:
        mem[256] = 1
    else:
        mem[256] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function takeReward() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    require ext_code.size(mainAddress)
    staticcall mainAddress.getUser(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        revert with 0, 'Address not registed'
    if not period - 1:
        revert with 0, 'Invalid period'
    if not sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_0:
        revert with 0, 'Did not win'
    if sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_512 >= sub_edc15b6b[stor21 - 1].field_512:
        revert with 0, 'Did not win'
    if stor[('array', 2, ('map', ('add', -1, ('stor', ('name', 'stor21', 21))), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_512].field_0 != sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_0:
        revert with 0, 'Did not win'
    if not sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_0:
        if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
            revert with 0, 'Already taken'
        periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
        emit 0x5c51c076: period - 1, 0, msg.sender, ext_call.return_data[32]
    else:
        if sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_512 >= sub_edc15b6b[stor21 - 1].field_512:
            if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                revert with 0, 'Already taken'
            periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
            emit 0x5c51c076: period - 1, 0, msg.sender, ext_call.return_data[32]
        else:
            if stor[('array', 2, ('map', ('add', -1, ('stor', ('name', 'stor21', 21))), ('name', 'sub_edc15b6b', 23))) + sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_512].field_0 != sub_edc15b6b[stor21 - 1][4][ext_call.return_data[0]].field_0:
                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                    revert with 0, 'Already taken'
                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                emit 0x5c51c076: period - 1, 0, msg.sender, ext_call.return_data[32]
            else:
                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                    if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                        revert with 0, 'Already taken'
                    periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                    emit 0x5c51c076: period - 1, 0, msg.sender, ext_call.return_data[32]
                else:
                    mem[0] = period - 1
                    mem[32] = 23
                    require sub_edc15b6b[stor21 - 1].field_512 <= test266151307()
                    mem[96] = sub_edc15b6b[stor21 - 1].field_512
                    mem[64] = (32 * sub_edc15b6b[stor21 - 1].field_512) + 128
                    if not sub_edc15b6b[stor21 - 1].field_512:
                        idx = 0
                        while idx < sub_edc15b6b[stor21 - 1].field_512:
                            mem[0] = sub_edc15b6b[stor21 - 1][idx + 2].field_0
                            mem[32] = sha3(period - 1, 23) + 4
                            _406 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_406] = sub_edc15b6b[stor21 - 1][4][sub_edc15b6b[stor21 - 1][idx + 2].field_0].field_0
                            mem[_406 + 32] = sub_edc15b6b[stor21 - 1][4][sub_edc15b6b[stor21 - 1][idx + 2].field_0].field_256
                            if 0 == idx:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = _406
                            else:
                                if var44001 < 0:
                                    require var44001 + 1 < mem[96]
                                    mem[(32 * var44001 + 1) + 128] = _406
                                else:
                                    require var46002 < mem[96]
                                    s = var46002
                                    t = mem[_406 + 32]
                                    t = var46002
                                    while s:
                                        require var48002 < mem[96]
                                        require var48002 + 1 < mem[96]
                                        mem[(32 * var48002 + 1) + 128] = mem[(32 * var48002) + 128]
                                        if var48002 - 1 >= 0:
                                            require var48002 - 1 < mem[96]
                                            s = var48002 - 1
                                            t = mem[_406 + 32]
                                            t = var48002 - 1
                                            continue 
                                        require var48002 < mem[96]
                                        mem[(32 * var48002) + 128] = _406
                                        idx = idx + 1
                                        continue 
                                    require var48002 + 1 < mem[96]
                                    mem[(32 * var48002 + 1) + 128] = _406
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < mem[96]:
                            require idx < mem[96]
                            if mem[mem[(32 * idx) + 128]] != ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
                            require idx < 15
                            if not periods[stor21 - 1].field_256:
                                _785 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_785] = 26
                                mem[_785 + 32] = 'SafeMath: division by zero'
                                mem[0] = ext_call.return_data[32]
                                mem[32] = sha3(period - 1, 22) + 2
                                _824 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_824] = 26
                                mem[_824 + 32] = 'SafeMath: division by zero'
                                if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    _836 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _836 + 68] = mem[idx + _824 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_836 + 68] = mem[_836 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _836 + -mem[64] + 100
                                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                    revert with 0, 'Already taken'
                                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x9a4da761 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                            else:
                                if sub_955952eb[idx] * periods[stor21 - 1].field_256 / periods[stor21 - 1].field_256 != sub_955952eb[idx]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _788 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_788] = 26
                                mem[_788 + 32] = 'SafeMath: division by zero'
                                mem[0] = ext_call.return_data[32]
                                mem[32] = sha3(period - 1, 22) + 2
                                if not sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000:
                                    _828 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_828] = 26
                                    mem[_828 + 32] = 'SafeMath: division by zero'
                                    if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        _849 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _849 + 68] = mem[idx + _828 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_849 + 68] = mem[_849 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _849 + -mem[64] + 100
                                    if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                        revert with 0, 'Already taken'
                                    periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                    if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x9a4da761 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                                else:
                                    if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 != periods[stor21 - 1][2][ext_call.return_data[32]].field_0:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _835 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_835] = 26
                                    mem[_835 + 32] = 'SafeMath: division by zero'
                                    if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        _867 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _867 + 68] = mem[idx + _835 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_867 + 68] = mem[_867 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _867 + -mem[64] + 100
                                    if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                        revert with 0, 'Already taken'
                                    periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                    if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x9a4da761 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit 0x5c51c076: period - 1, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                            stor1 = 1
                        if not periods[stor21 - 1].field_256:
                            if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                revert with 0, 'Already taken'
                            periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                            if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x9a4da761 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                        else:
                            if sub_955952eb.length * periods[stor21 - 1].field_256 / periods[stor21 - 1].field_256 != sub_955952eb.length:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _779 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_779] = 26
                            mem[_779 + 32] = 'SafeMath: division by zero'
                            if not sub_955952eb.length * periods[stor21 - 1].field_256 / 10000:
                                if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    revert with 0, 'SafeMath: division by zero'
                                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                    revert with 0, 'Already taken'
                                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x9a4da761 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                            else:
                                if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 != periods[stor21 - 1][2][ext_call.return_data[32]].field_0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    revert with 0, 'SafeMath: division by zero'
                                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                    revert with 0, 'Already taken'
                                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x9a4da761 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0x5c51c076: period - 1, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                    else:
                        mem[64] = (32 * sub_edc15b6b[stor21 - 1].field_512) + 192
                        mem[(32 * sub_edc15b6b[stor21 - 1].field_512) + 128 len 64] = call.data[calldata.size len 64]
                        mem[var34001] = (32 * sub_edc15b6b[stor21 - 1].field_512) + 128
                        s = var34001
                        idx = var34002
                        while idx - 1:
                            mem[64] = mem[64] + 64
                            mem[(32 * sub_edc15b6b[stor21 - 1].field_512) + 128 len 64] = call.data[calldata.size len 64]
                            mem[s + 32] = (32 * sub_edc15b6b[stor21 - 1].field_512) + 128
                            s = s + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        while idx < sub_edc15b6b[stor21 - 1].field_512:
                            mem[0] = sub_edc15b6b[stor21 - 1][idx + 2].field_0
                            mem[32] = sha3(period - 1, 23) + 4
                            _1131 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1131] = sub_edc15b6b[stor21 - 1][4][sub_edc15b6b[stor21 - 1][idx + 2].field_0].field_0
                            mem[_1131 + 32] = sub_edc15b6b[stor21 - 1][4][sub_edc15b6b[stor21 - 1][idx + 2].field_0].field_256
                            if 0 == idx:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = _1131
                            else:
                                if var51001 < 0:
                                    require var51001 + 1 < mem[96]
                                    mem[(32 * var51001 + 1) + 128] = _1131
                                else:
                                    require var53002 < mem[96]
                                    s = var53002
                                    t = mem[_1131 + 32]
                                    t = var53002
                                    while s:
                                        require var55002 < mem[96]
                                        require var55002 + 1 < mem[96]
                                        mem[(32 * var55002 + 1) + 128] = mem[(32 * var55002) + 128]
                                        if var55002 - 1 >= 0:
                                            require var55002 - 1 < mem[96]
                                            s = var55002 - 1
                                            t = mem[_1131 + 32]
                                            t = var55002 - 1
                                            continue 
                                        require var55002 < mem[96]
                                        mem[(32 * var55002) + 128] = _1131
                                        idx = idx + 1
                                        continue 
                                    require var55002 + 1 < mem[96]
                                    mem[(32 * var55002 + 1) + 128] = _1131
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < mem[96]:
                            require idx < mem[96]
                            if mem[mem[(32 * idx) + 128]] != ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
                            require idx < 15
                            if not periods[stor21 - 1].field_256:
                                _1349 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1349] = 26
                                mem[_1349 + 32] = 'SafeMath: division by zero'
                                mem[0] = ext_call.return_data[32]
                                mem[32] = sha3(period - 1, 22) + 2
                                _1376 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1376] = 26
                                mem[_1376 + 32] = 'SafeMath: division by zero'
                                if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    _1388 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1388 + 68] = mem[idx + _1376 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1388 + 68] = mem[_1388 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1388 + -mem[64] + 100
                                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                    revert with 0, 'Already taken'
                                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x9a4da761 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                            else:
                                if sub_955952eb[idx] * periods[stor21 - 1].field_256 / periods[stor21 - 1].field_256 != sub_955952eb[idx]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1352 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1352] = 26
                                mem[_1352 + 32] = 'SafeMath: division by zero'
                                mem[0] = ext_call.return_data[32]
                                mem[32] = sha3(period - 1, 22) + 2
                                if not sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000:
                                    _1380 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1380] = 26
                                    mem[_1380 + 32] = 'SafeMath: division by zero'
                                    if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        _1399 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1399 + 68] = mem[idx + _1380 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1399 + 68] = mem[_1399 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1399 + -mem[64] + 100
                                    if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                        revert with 0, 'Already taken'
                                    periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                    if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x9a4da761 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                                else:
                                    if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 != periods[stor21 - 1][2][ext_call.return_data[32]].field_0:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1387 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1387] = 26
                                    mem[_1387 + 32] = 'SafeMath: division by zero'
                                    if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        _1412 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1412 + 68] = mem[idx + _1387 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1412 + 68] = mem[_1412 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1412 + -mem[64] + 100
                                    if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                        revert with 0, 'Already taken'
                                    periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                    if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x9a4da761 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit 0x5c51c076: period - 1, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb[idx] * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                            stor1 = 1
                        if not periods[stor21 - 1].field_256:
                            if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                revert with 0, 'Already taken'
                            periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                            if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x9a4da761 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                        else:
                            if sub_955952eb.length * periods[stor21 - 1].field_256 / periods[stor21 - 1].field_256 != sub_955952eb.length:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1346 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1346] = 26
                            mem[_1346 + 32] = 'SafeMath: division by zero'
                            if not sub_955952eb.length * periods[stor21 - 1].field_256 / 10000:
                                if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    revert with 0, 'SafeMath: division by zero'
                                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                    revert with 0, 'Already taken'
                                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                if 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x9a4da761 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0x5c51c076: period - 1, 0 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
                            else:
                                if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 != periods[stor21 - 1][2][ext_call.return_data[32]].field_0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    revert with 0, 'SafeMath: division by zero'
                                if periods[stor21 - 1][4][ext_call.return_data[32]].field_0:
                                    revert with 0, 'Already taken'
                                periods[stor21 - 1][4][ext_call.return_data[32]].field_0 = 1
                                if periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x9a4da761 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0x5c51c076: period - 1, periods[stor21 - 1][2][ext_call.return_data[32]].field_0 * sub_955952eb.length * periods[stor21 - 1].field_256 / 10000 / periods[stor21 - 1][3][ext_call.return_data[0]].field_0, msg.sender, ext_call.return_data[32]
    stor1 = 1
}



}
