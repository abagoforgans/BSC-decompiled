contract main {




// =====================  Runtime code  =====================


#
#  - removeOrders(uint256[] arg1)
#  - mint(address arg1)
#  - removeOrder(bool arg1, uint32 arg2, uint72 arg3)
#  - burn(address arg1)
#  - addMarketOrder(address arg1, address arg2, uint112 arg3)
#  - addLimitOrder(bool arg1, address arg2, uint64 arg3, uint32 arg4, uint32 arg5, uint72 arg6)
#
const name = 'OneSwap-Share'

const decimals = 18


uint256 stor10;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint32 stor14;
uint32 stor14; offset 112
uint128 stor14;
uint256 stor14;
uint32 stor15;
uint32 stor15; offset 112
uint128 stor15;
uint256 stor15;
uint256 stor16;
array of uint32 stor17;
array of uint32 stor4194321;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getBooked() {
    return Mask(112, 0, stor15.field_0), uint32(stor15.field_0), 0
}

function getReserves() {
    return Mask(112, 0, stor14.field_0), uint32(stor14.field_0), 0
}

function internalStatus() {
    return uint256(stor14.field_0), uint256(stor15.field_0), stor16
}

function stock() {
    if 164 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    return call.data[calldata.size - 84 len 20]
}

function money() {
    if 164 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    return call.data[calldata.size - 116 len 20]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function calcStockAndMoney(uint64 arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    if 228 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    if Mask(5, 27, arg2) >> 27 >= 24:
        if uint64(call.data[calldata.size - 32]):
            return 0, 0 / uint64(call.data[calldata.size - 32])
    else:
        if 23 == Mask(5, 27, arg2) >> 27:
            if uint64(call.data[calldata.size - 32]):
                return 0, 0 / uint64(call.data[calldata.size - 32])
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][msg.sender] != -1:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getPrices() {
    if 164 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    if not Mask(256, -224, uint256(stor15.field_0)):
        return 0, 0, 0, 0, uint32(stor14.field_0), Mask(112, 0, stor14.field_0)
    if stor4000.length.field_91 >= 24:
        return 0, 0, 0, call.data[calldata.size - 32] << 192, uint32(stor14.field_0), Mask(112, 0, stor14.field_0)
    if stor4000.length.field_91 != 23:
        return 0, 
               0,
               Mask(64, 64, call.data[calldata.size - 32]) >> 64 * stor4000.length.field_64,
               0,
               uint32(stor14.field_0),
               Mask(112, 0, stor14.field_0)
    return 0, 
           0,
           Mask(64, 64, call.data[calldata.size - 32]) >> 64 * stor4000.length.field_64,
           call.data[calldata.size - 32] << 192,
           uint32(stor14.field_0),
           Mask(112, 0, stor14.field_0)
}

function getOrderList(bool arg1, uint32 arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        if 0 >= arg3:
            return ''
        return Array(len=1, data=block.number)
    mem[96] = 32
    if not arg1:
        idx = 0
        s = 160
        t = arg2 or block.number << 24
        u = arg2
        while idx < arg3:
            mem[s] = t
            if not uint32(u):
                mem[128] = idx + 1
                return memory
                  from 96
                   len s - 64
            require uint32(u) < 4194304
            if not uint256(stor17[uint32(u)]):
                revert with 0, 'OneSwap: INCONSISTENT_BOOK'
            idx = idx + 1
            s = s + 32
            t = uint256(stor17[uint32(u)])
            u = stor17[uint32(u)] % 4194304
            continue 
    else:
        idx = 0
        s = 160
        t = arg2 or block.number << 24
        u = arg2
        while idx < arg3:
            mem[s] = t
            if not uint32(u):
                mem[128] = idx + 1
                return memory
                  from 96
                   len s - 64
            require uint32(u) < 4194304
            if not stor4000[uint32(u)].field_0:
                revert with 0, 'OneSwap: INCONSISTENT_BOOK'
            idx = idx + 1
            s = s + 32
            t = stor4000[uint32(u)].field_0
            u = stor4000[uint32(u)].field_0
            continue 
    return Array(len=arg3 << 224, data=mem[160 len 32 * uint32(arg3)])
}

function sync() {
    if stor10 != 1:
        revert with 0, 'OneSwap: LOCKED'
    stor10 = 0
    if 164 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    if not address(call.data[calldata.size - 96]):
        if not address(call.data[calldata.size - 128]):
            if eth.balance(this.address) < Mask(112, 0, stor15.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if eth.balance(this.address) < uint32(stor15.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if eth.balance(this.address) - Mask(112, 0, stor15.field_0) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            if eth.balance(this.address) - uint32(stor15.field_112) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            emit Sync((eth.balance(this.address) - Mask(112, 0, stor15.field_0) or eth.balance(this.address) - uint32(stor15.field_112) << 112));
            uint256(stor14.field_0) = eth.balance(this.address) - Mask(112, 0, stor15.field_0) or eth.balance(this.address) - uint32(stor15.field_112) << 112
        else:
            require ext_code.size(address(call.data[calldata.size - 128]))
            staticcall address(call.data[calldata.size - 128]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < Mask(112, 0, stor15.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if ext_call.return_data[0] < uint32(stor15.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if eth.balance(this.address) - Mask(112, 0, stor15.field_0) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            if ext_call.return_data[0] - uint32(stor15.field_112) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            emit Sync((eth.balance(this.address) - Mask(112, 0, stor15.field_0) or ext_call.return_data[0] - uint32(stor15.field_112) << 112));
            uint256(stor14.field_0) = eth.balance(this.address) - Mask(112, 0, stor15.field_0) or ext_call.return_data[0] - uint32(stor15.field_112) << 112
    else:
        require ext_code.size(address(call.data[calldata.size - 96]))
        staticcall address(call.data[calldata.size - 96]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(call.data[calldata.size - 128]):
            if ext_call.return_data[0] < Mask(112, 0, stor15.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if eth.balance(this.address) < uint32(stor15.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if ext_call.return_data[0] - Mask(112, 0, stor15.field_0) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            if eth.balance(this.address) - uint32(stor15.field_112) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            emit Sync((ext_call.return_data[0] - Mask(112, 0, stor15.field_0) or eth.balance(this.address) - uint32(stor15.field_112) << 112));
            uint256(stor14.field_0) = ext_call.return_data[0] - Mask(112, 0, stor15.field_0) or eth.balance(this.address) - uint32(stor15.field_112) << 112
        else:
            require ext_code.size(address(call.data[calldata.size - 128]))
            staticcall address(call.data[calldata.size - 128]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(112, 0, stor15.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if ext_call.return_data[0] < uint32(stor15.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if ext_call.return_data[0] - Mask(112, 0, stor15.field_0) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            if ext_call.return_data[0] - uint32(stor15.field_112) >= 0x10000000000000000000000000000:
                revert with 0, 'OneSwap: OVERFLOW'
            emit Sync((ext_call.return_data[0] - Mask(112, 0, stor15.field_0) or ext_call.return_data[0] - uint32(stor15.field_112) << 112));
            uint256(stor14.field_0) = ext_call.return_data[0] - Mask(112, 0, stor15.field_0) or ext_call.return_data[0] - uint32(stor15.field_112) << 112
    stor10 = 1
}

function symbol() {
    if 164 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    mem[96 len 160] = call.data[calldata.size - 160 len 160]
    mem[256] = 3
    mem[288] = 0x424e420000000000000000000000000000000000000000000000000000000000
    if not address(call.data[calldata.size - 96]):
        mem[320] = 3
        mem[352] = 0x424e420000000000000000000000000000000000000000000000000000000000
        if not address(call.data[calldata.size - 128]):
            mem[416 len 0] = None
            mem[416 len 0] = 0
            mem[419] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[420 len 0] = None
            mem[420] = 0
            mem[423] = 32
            mem[455] = mem[384]
            mem[487 len ceil32(mem[384])] = mem[416 len ceil32(mem[384])]
            if not mem[384] % 32:
                return 32, mem[455 len mem[384] + 32]
            mem[floor32(mem[384]) + 487] = mem[floor32(mem[384]) + -(mem[384] % 32) + 519 len mem[384] % 32]
            return Array(len=mem[384], data=mem[487 len floor32(mem[384]) + 32])
        mem[384] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(call.data[calldata.size - 128]))
        staticcall address(call.data[calldata.size - 128]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _24 = mem[384]
        require mem[384] <= 4294967296
        require mem[384] + 32 <= return_data.size
        require return_data.size >= mem[mem[384] + 384] + mem[384] + 32 and mem[mem[384] + 384] <= 4294967296
        mem[ceil32(return_data.size) + 384] = mem[mem[384] + 384]
        _37 = mem[_24 + 384]
        mem[ceil32(return_data.size) + 416 len ceil32(mem[_24 + 384])] = mem[_24 + 416 len ceil32(mem[_24 + 384])]
        if not _37 % 32:
            mem[64] = _37 + ceil32(return_data.size) + 416
            mem[_37 + ceil32(return_data.size) + 448 len 0] = None
            mem[_37 + ceil32(return_data.size) + 448 len 0] = 0
            mem[_37 + ceil32(return_data.size) + 451] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[_37 + ceil32(return_data.size) + 452 len floor32(mem[ceil32(return_data.size) + 384])] = mem[ceil32(return_data.size) + 416 len floor32(mem[ceil32(return_data.size) + 384])]
            mem[_37 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 384]) + -(mem[ceil32(return_data.size) + 384] % 32) + 484 len mem[ceil32(return_data.size) + 384] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 384]) + -(mem[ceil32(return_data.size) + 384] % 32) + 448 len mem[ceil32(return_data.size) + 384] % 32]
            mem[64] = mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 452
            mem[mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 452] = 32
            mem[mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 484] = mem[_37 + ceil32(return_data.size) + 416]
            mem[mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 516 len ceil32(mem[_37 + ceil32(return_data.size) + 416])] = mem[_37 + ceil32(return_data.size) + 448 len ceil32(mem[_37 + ceil32(return_data.size) + 416])]
            if not mem[_37 + ceil32(return_data.size) + 416] % 32:
                return 32, mem[mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 484 len mem[_37 + ceil32(return_data.size) + 416] + 32], 
            mem[floor32(mem[_37 + ceil32(return_data.size) + 416]) + mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 516] = mem[floor32(mem[_37 + ceil32(return_data.size) + 416]) + mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + -(mem[_37 + ceil32(return_data.size) + 416] % 32) + 548 len mem[_37 + ceil32(return_data.size) + 416] % 32]
            return Array(len=mem[_37 + ceil32(return_data.size) + 416], data=mem[mem[ceil32(return_data.size) + 384] + _37 + ceil32(return_data.size) + 516 len floor32(mem[_37 + ceil32(return_data.size) + 416]) + 32]), 
        mem[floor32(_37) + ceil32(return_data.size) + 416] = mem[floor32(_37) + ceil32(return_data.size) + -(_37 % 32) + 448 len _37 % 32]
        mem[64] = floor32(_37) + ceil32(return_data.size) + 448
        mem[floor32(_37) + ceil32(return_data.size) + 480 len 0] = None
        mem[floor32(_37) + ceil32(return_data.size) + 480 len 0] = 0
        mem[floor32(_37) + ceil32(return_data.size) + 483] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[floor32(_37) + ceil32(return_data.size) + 484 len floor32(mem[ceil32(return_data.size) + 384])] = mem[ceil32(return_data.size) + 416 len floor32(mem[ceil32(return_data.size) + 384])]
        mem[floor32(_37) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 384]) + -(mem[ceil32(return_data.size) + 384] % 32) + 516 len mem[ceil32(return_data.size) + 384] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 384]) + -(mem[ceil32(return_data.size) + 384] % 32) + 448 len mem[ceil32(return_data.size) + 384] % 32]
        mem[64] = mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 484
        mem[mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 484] = 32
        mem[mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 516] = mem[floor32(_37) + ceil32(return_data.size) + 448]
        mem[mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 548 len ceil32(mem[floor32(_37) + ceil32(return_data.size) + 448])] = mem[floor32(_37) + ceil32(return_data.size) + 480 len ceil32(mem[floor32(_37) + ceil32(return_data.size) + 448])]
        if not mem[floor32(_37) + ceil32(return_data.size) + 448] % 32:
            return 32, mem[mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 516 len mem[floor32(_37) + ceil32(return_data.size) + 448] + 32], 
        mem[floor32(mem[floor32(_37) + ceil32(return_data.size) + 448]) + mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 548] = mem[floor32(mem[floor32(_37) + ceil32(return_data.size) + 448]) + mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + -(mem[floor32(_37) + ceil32(return_data.size) + 448] % 32) + 580 len mem[floor32(_37) + ceil32(return_data.size) + 448] % 32]
        return Array(len=mem[floor32(_37) + ceil32(return_data.size) + 448], data=mem[mem[ceil32(return_data.size) + 384] + floor32(_37) + ceil32(return_data.size) + 548 len floor32(mem[floor32(_37) + ceil32(return_data.size) + 448]) + 32]), 
    mem[320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(call.data[calldata.size - 96]))
    staticcall address(call.data[calldata.size - 96]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _11 = mem[320]
    require mem[320] <= 4294967296
    require mem[320] + 32 <= return_data.size
    require return_data.size >= mem[mem[320] + 320] + mem[320] + 32 and mem[mem[320] + 320] <= 4294967296
    mem[ceil32(return_data.size) + 320] = mem[mem[320] + 320]
    _18 = mem[_11 + 320]
    mem[ceil32(return_data.size) + 352 len ceil32(mem[_11 + 320])] = mem[_11 + 352 len ceil32(mem[_11 + 320])]
    if not _18 % 32:
        mem[64] = _18 + ceil32(return_data.size) + 416
        mem[_18 + ceil32(return_data.size) + 352] = 3
        mem[_18 + ceil32(return_data.size) + 384] = 0x424e420000000000000000000000000000000000000000000000000000000000
        if not call.data[calldata.size - 116 len 20]:
            mem[_18 + ceil32(return_data.size) + 448 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
            mem[_18 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 480 len mem[ceil32(return_data.size) + 320] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 384 len mem[ceil32(return_data.size) + 320] % 32]
            mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 448] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 449 len 0] = None
            mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 449] = 0
            mem[64] = mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 452
            mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 452] = 32
            mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 484] = mem[_18 + ceil32(return_data.size) + 416]
            mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 516 len ceil32(mem[_18 + ceil32(return_data.size) + 416])] = mem[_18 + ceil32(return_data.size) + 448 len ceil32(mem[_18 + ceil32(return_data.size) + 416])]
            if not mem[_18 + ceil32(return_data.size) + 416] % 32:
                return 32, mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 484 len mem[_18 + ceil32(return_data.size) + 416] + 32], 
            mem[floor32(mem[_18 + ceil32(return_data.size) + 416]) + mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 516] = mem[floor32(mem[_18 + ceil32(return_data.size) + 416]) + mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + -(mem[_18 + ceil32(return_data.size) + 416] % 32) + 548 len mem[_18 + ceil32(return_data.size) + 416] % 32]
            return Array(len=mem[_18 + ceil32(return_data.size) + 416], data=mem[mem[ceil32(return_data.size) + 320] + _18 + ceil32(return_data.size) + 516 len floor32(mem[_18 + ceil32(return_data.size) + 416]) + 32]), 
        mem[_18 + ceil32(return_data.size) + 416] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(call.data[calldata.size - 116 len 20])
        staticcall call.data[calldata.size - 116 len 20].0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_18 + ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _18 + (2 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _267 = mem[_18 + ceil32(return_data.size) + 416]
        require mem[_18 + ceil32(return_data.size) + 416] <= 4294967296
        require mem[_18 + ceil32(return_data.size) + 416] + 32 <= return_data.size
        require return_data.size >= mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 416] + 416] + mem[_18 + ceil32(return_data.size) + 416] + 32 and mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 416] + 416] <= 4294967296
        mem[_18 + (2 * ceil32(return_data.size)) + 416] = mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 416] + 416]
        _292 = mem[_18 + ceil32(return_data.size) + _267 + 416]
        mem[_18 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_18 + ceil32(return_data.size) + _267 + 416])] = mem[_18 + ceil32(return_data.size) + _267 + 448 len ceil32(mem[_18 + ceil32(return_data.size) + _267 + 416])]
        if not _292 % 32:
            mem[64] = _292 + _18 + (2 * ceil32(return_data.size)) + 448
            _418 = mem[ceil32(return_data.size) + 320]
            mem[_292 + _18 + (2 * ceil32(return_data.size)) + 480 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
            mem[_292 + _18 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 512 len mem[ceil32(return_data.size) + 320] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 384 len mem[ceil32(return_data.size) + 320] % 32]
            mem[_418 + _292 + _18 + (2 * ceil32(return_data.size)) + 480] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[_418 + _292 + _18 + (2 * ceil32(return_data.size)) + 481 len floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416])] = mem[_18 + (2 * ceil32(return_data.size)) + 448 len floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416])]
            mem[_418 + _292 + _18 + (2 * ceil32(return_data.size)) + floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416]) + -(mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32) + 513 len mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32] = mem[_18 + (2 * ceil32(return_data.size)) + floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416]) + -(mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32) + 480 len mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32]
            mem[64] = mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 481
            mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 481] = 32
            mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 513] = mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448]
            mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 545 len ceil32(mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448])] = mem[_292 + _18 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448])]
            if not mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448] % 32:
                return 32, mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 513 len mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448] + 32], 
            mem[floor32(mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448]) + mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 545] = mem[floor32(mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448]) + mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + -(mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448] % 32) + 577 len mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448] % 32]
            return Array(len=mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448], data=mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _418 + _292 + _18 + (2 * ceil32(return_data.size)) + 545 len floor32(mem[_292 + _18 + (2 * ceil32(return_data.size)) + 448]) + 32]), 
        mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + -(_292 % 32) + 480 len _292 % 32]
        mem[64] = floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480
        _436 = mem[ceil32(return_data.size) + 320]
        mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 512 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
        mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 544 len mem[ceil32(return_data.size) + 320] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 384 len mem[ceil32(return_data.size) + 320] % 32]
        mem[_436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 512] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[_436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 513 len floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416])] = mem[_18 + (2 * ceil32(return_data.size)) + 448 len floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416])]
        mem[_436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416]) + -(mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32) + 545 len mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32] = mem[_18 + (2 * ceil32(return_data.size)) + floor32(mem[_18 + (2 * ceil32(return_data.size)) + 416]) + -(mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32) + 480 len mem[_18 + (2 * ceil32(return_data.size)) + 416] % 32]
        mem[64] = mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 513
        _658 = mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 513
        mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 513] = 32
        mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 545] = mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480]
        mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 577 len ceil32(mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480])] = mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480])]
        if not mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480] % 32:
            return 32, mem[mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 545 len mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480] + 32], 
        mem[floor32(mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480]) + mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 577] = mem[floor32(mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480]) + mem[_18 + (2 * ceil32(return_data.size)) + 416] + _436 + floor32(_292) + _18 + (2 * ceil32(return_data.size)) + -(mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480] % 32) + 609 len mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480] % 32]
        return memory
          from mem[64]
           len floor32(mem[floor32(_292) + _18 + (2 * ceil32(return_data.size)) + 480]) + _658 + -mem[64] + 96
    mem[floor32(_18) + ceil32(return_data.size) + 352] = mem[floor32(_18) + ceil32(return_data.size) + -(_18 % 32) + 384 len _18 % 32]
    mem[64] = floor32(_18) + ceil32(return_data.size) + 448
    mem[floor32(_18) + ceil32(return_data.size) + 384] = 3
    mem[floor32(_18) + ceil32(return_data.size) + 416] = 0x424e420000000000000000000000000000000000000000000000000000000000
    if not call.data[calldata.size - 116 len 20]:
        mem[floor32(_18) + ceil32(return_data.size) + 480 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
        mem[floor32(_18) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 512 len mem[ceil32(return_data.size) + 320] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 384 len mem[ceil32(return_data.size) + 320] % 32]
        mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 480] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 481 len 0] = None
        mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 481] = 0
        mem[64] = mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 484
        mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 484] = 32
        mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 516] = mem[floor32(_18) + ceil32(return_data.size) + 448]
        mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 548 len ceil32(mem[floor32(_18) + ceil32(return_data.size) + 448])] = mem[floor32(_18) + ceil32(return_data.size) + 480 len ceil32(mem[floor32(_18) + ceil32(return_data.size) + 448])]
        if not mem[floor32(_18) + ceil32(return_data.size) + 448] % 32:
            return 32, mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 516 len mem[floor32(_18) + ceil32(return_data.size) + 448] + 32], 
        mem[floor32(mem[floor32(_18) + ceil32(return_data.size) + 448]) + mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 548] = mem[floor32(mem[floor32(_18) + ceil32(return_data.size) + 448]) + mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + -(mem[floor32(_18) + ceil32(return_data.size) + 448] % 32) + 580 len mem[floor32(_18) + ceil32(return_data.size) + 448] % 32]
        return Array(len=mem[floor32(_18) + ceil32(return_data.size) + 448], data=mem[mem[ceil32(return_data.size) + 320] + floor32(_18) + ceil32(return_data.size) + 548 len floor32(mem[floor32(_18) + ceil32(return_data.size) + 448]) + 32]), 
    mem[floor32(_18) + ceil32(return_data.size) + 448] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(call.data[calldata.size - 116 len 20])
    staticcall call.data[calldata.size - 116 len 20].0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_18) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_18) + (2 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _281 = mem[floor32(_18) + ceil32(return_data.size) + 448]
    require mem[floor32(_18) + ceil32(return_data.size) + 448] <= 4294967296
    require mem[floor32(_18) + ceil32(return_data.size) + 448] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_18) + ceil32(return_data.size) + mem[floor32(_18) + ceil32(return_data.size) + 448] + 448] + mem[floor32(_18) + ceil32(return_data.size) + 448] + 32 and mem[floor32(_18) + ceil32(return_data.size) + mem[floor32(_18) + ceil32(return_data.size) + 448] + 448] <= 4294967296
    mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_18) + ceil32(return_data.size) + mem[floor32(_18) + ceil32(return_data.size) + 448] + 448]
    _298 = mem[floor32(_18) + ceil32(return_data.size) + _281 + 448]
    mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_18) + ceil32(return_data.size) + _281 + 448])] = mem[floor32(_18) + ceil32(return_data.size) + _281 + 480 len ceil32(mem[floor32(_18) + ceil32(return_data.size) + _281 + 448])]
    if not _298 % 32:
        mem[64] = _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480
        _424 = mem[ceil32(return_data.size) + 320]
        mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
        mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 544 len mem[ceil32(return_data.size) + 320] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 384 len mem[ceil32(return_data.size) + 320] % 32]
        mem[_424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 512] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[_424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 513 len floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448])] = mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448])]
        mem[_424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448]) + -(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32) + 545 len mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32] = mem[floor32(_18) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448]) + -(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32) + 512 len mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32]
        mem[64] = mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 513
        mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 513] = 32
        mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 545] = mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480]
        mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 577 len ceil32(mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480])] = mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480])]
        if not mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480] % 32:
            return 32, mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 545 len mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480] + 32], 
        mem[floor32(mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480]) + mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 577] = mem[floor32(mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480]) + mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + -(mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480] % 32) + 609 len mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480] % 32]
        return Array(len=mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480], data=mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _424 + _298 + floor32(_18) + (2 * ceil32(return_data.size)) + 577 len floor32(mem[_298 + floor32(_18) + (2 * ceil32(return_data.size)) + 480]) + 32]), 
    mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + -(_298 % 32) + 512 len _298 % 32]
    mem[64] = floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512
    _441 = mem[ceil32(return_data.size) + 320]
    mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
    mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 576 len mem[ceil32(return_data.size) + 320] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + -(mem[ceil32(return_data.size) + 320] % 32) + 384 len mem[ceil32(return_data.size) + 320] % 32]
    mem[_441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 544] = 0x2f00000000000000000000000000000000000000000000000000000000000000
    mem[_441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 545 len floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448])] = mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448])]
    mem[_441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448]) + -(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32) + 577 len mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32] = mem[floor32(_18) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448]) + -(mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32) + 512 len mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] % 32]
    mem[64] = mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 545
    _666 = mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 545
    mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 545] = 32
    mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 577] = mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512]
    mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 609 len ceil32(mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512])] = mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 544 len ceil32(mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512])]
    if not mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512] % 32:
        return 32, mem[mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 577 len mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512] + 32], 
    mem[floor32(mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512]) + mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 609] = mem[floor32(mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512]) + mem[floor32(_18) + (2 * ceil32(return_data.size)) + 448] + _441 + floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + -(mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512] % 32) + 641 len mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512] % 32]
    return memory
      from mem[64]
       len floor32(mem[floor32(_298) + floor32(_18) + (2 * ceil32(return_data.size)) + 512]) + _666 + -mem[64] + 96
}

function skim(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 != 1:
        revert with 0, 'OneSwap: LOCKED'
    stor10 = 0
    if 196 != calldata.size:
        revert with 0, 'INVALID_CALLDATASIZE'
    if not address(call.data[calldata.size - 96]):
        if not address(call.data[calldata.size - 128]):
            if eth.balance(this.address) < Mask(112, 0, stor15.field_0) + Mask(112, 0, stor14.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if eth.balance(this.address) < uint32(stor15.field_112) + uint32(stor14.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if not eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0):
                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                    if not address(call.data[calldata.size - 128]):
                        call arg1 with:
                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                             gas 9000 wei
                    else:
                        mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                        call address(call.data[calldata.size - 128]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) << 224, mem[484 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[616]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[616]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 617]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
            else:
                if not address(call.data[calldata.size - 96]):
                    call arg1 with:
                       value eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0) wei
                         gas 9000 wei
                    if not return_data.size:
                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[452 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[516 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[648]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[648]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[ceil32(return_data.size) + 453 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 517 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                else:
                    mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                    call address(call.data[calldata.size - 96]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) << 224, mem[484 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[748 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[944]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[780]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[616]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not call.data[calldata.size - 160]:
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[584 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[780]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[780]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[616]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require call.data[calldata.size - 160] >= 32
                                if call.data[calldata.size - 128]:
                                    if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[584 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[780]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[616]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[748 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[944]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[616]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not return_data.size:
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 617]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require return_data.size >= 32
                                if mem[452]:
                                    if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 617]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 617]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
        else:
            require ext_code.size(address(call.data[calldata.size - 128]))
            staticcall address(call.data[calldata.size - 128]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < Mask(112, 0, stor15.field_0) + Mask(112, 0, stor14.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if ext_call.return_data[0] < uint32(stor15.field_112) + uint32(stor14.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if not eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0):
                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                    if not address(call.data[calldata.size - 128]):
                        call arg1 with:
                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                             gas 9000 wei
                    else:
                        mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                        call address(call.data[calldata.size - 128]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) << 224, mem[484 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[616]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[616]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 617]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
            else:
                if not address(call.data[calldata.size - 96]):
                    call arg1 with:
                       value eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0) wei
                         gas 9000 wei
                    if not return_data.size:
                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[452 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[516 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[648]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[648]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[ceil32(return_data.size) + 453 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 517 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                else:
                    mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                    call address(call.data[calldata.size - 96]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) << 224, mem[484 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[748 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[944]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[780]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[616]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not call.data[calldata.size - 160]:
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[584 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[780]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[780]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[616]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require call.data[calldata.size - 160] >= 32
                                if call.data[calldata.size - 128]:
                                    if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[584 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[780]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[616]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[748 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[944]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[616]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not return_data.size:
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 617]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require return_data.size >= 32
                                if mem[452]:
                                    if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 617]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 617]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
    else:
        require ext_code.size(address(call.data[calldata.size - 96]))
        staticcall address(call.data[calldata.size - 96]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(call.data[calldata.size - 128]):
            if ext_call.return_data[0] < Mask(112, 0, stor15.field_0) + Mask(112, 0, stor14.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if eth.balance(this.address) < uint32(stor15.field_112) + uint32(stor14.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if not ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0):
                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                    if not address(call.data[calldata.size - 128]):
                        call arg1 with:
                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                             gas 9000 wei
                    else:
                        mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                        call address(call.data[calldata.size - 128]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) << 224, mem[484 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[616]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[616]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 617]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
            else:
                if not address(call.data[calldata.size - 96]):
                    call arg1 with:
                       value ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0) wei
                         gas 9000 wei
                    if not return_data.size:
                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[452 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[516 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[648]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[648]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[ceil32(return_data.size) + 453 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 517 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                else:
                    mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                    call address(call.data[calldata.size - 96]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) << 224, mem[484 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[748 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[944]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[780]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[616]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not call.data[calldata.size - 160]:
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[584 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[780]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[780]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[616]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require call.data[calldata.size - 160] >= 32
                                if call.data[calldata.size - 128]:
                                    if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[584 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[780]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[616]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[748 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[944]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[616]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not return_data.size:
                                if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 617]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require return_data.size >= 32
                                if mem[452]:
                                    if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 617]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 617]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, eth.balance(this.address) - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
        else:
            require ext_code.size(address(call.data[calldata.size - 128]))
            staticcall address(call.data[calldata.size - 128]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(112, 0, stor15.field_0) + Mask(112, 0, stor14.field_0):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if ext_call.return_data[0] < uint32(stor15.field_112) + uint32(stor14.field_112):
                revert with 0, 'OneSwap: INVALID_BALANCE'
            if not ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0):
                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                    if not address(call.data[calldata.size - 128]):
                        call arg1 with:
                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                             gas 9000 wei
                    else:
                        mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                        call address(call.data[calldata.size - 128]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) << 224, mem[484 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[616]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[616]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require ext_code.size(address(call.data[calldata.size - 64]))
                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if call.data[calldata.size - 160]:
                                        require call.data[calldata.size - 160] >= 32
                                        if not call.data[calldata.size - 128]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 617]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
            else:
                if not address(call.data[calldata.size - 96]):
                    call arg1 with:
                       value ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0) wei
                         gas 9000 wei
                    if not return_data.size:
                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[452 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[516 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[648]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[616 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[680 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[648]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                            if not address(call.data[calldata.size - 128]):
                                call arg1 with:
                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                     gas 9000 wei
                            else:
                                mem[ceil32(return_data.size) + 453 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                call address(call.data[calldata.size - 128]) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 517 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 649]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 649]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if call.data[calldata.size - 160]:
                                                require call.data[calldata.size - 160] >= 32
                                                if not call.data[calldata.size - 128]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 618 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 682 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 650]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                else:
                    mem[420 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                    call address(call.data[calldata.size - 96]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) << 224, mem[484 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[748 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[944]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[780]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[616]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not call.data[calldata.size - 160]:
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[584 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[780]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[780]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[616]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require call.data[calldata.size - 160] >= 32
                                if call.data[calldata.size - 128]:
                                    if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[584 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[648 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[748 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[780]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[616]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[584 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[648 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[748 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[812 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[944]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[912 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[976 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[944 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[944]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[780 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[780]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[616]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                    else:
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require ext_code.size(address(call.data[calldata.size - 64]))
                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                            call address(call.data[calldata.size - 96]) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if call.data[calldata.size - 160]:
                                    require call.data[calldata.size - 160] >= 32
                                    if not call.data[calldata.size - 128]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 945]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 781]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                        else:
                            if not return_data.size:
                                if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                    if not address(call.data[calldata.size - 128]):
                                        call arg1 with:
                                           value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                             gas 9000 wei
                                    else:
                                        mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                        call address(call.data[calldata.size - 128]) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 781]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if call.data[calldata.size - 160]:
                                                    require call.data[calldata.size - 160] >= 32
                                                    if not call.data[calldata.size - 128]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 781]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 617]:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                            else:
                                require return_data.size >= 32
                                if mem[452]:
                                    if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                        if not address(call.data[calldata.size - 128]):
                                            call arg1 with:
                                               value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                 gas 9000 wei
                                        else:
                                            mem[ceil32(return_data.size) + 585 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                            call address(call.data[calldata.size - 128]) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if call.data[calldata.size - 160]:
                                                        require call.data[calldata.size - 160] >= 32
                                                        if not call.data[calldata.size - 128]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[ceil32(return_data.size) + 749 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[ceil32(return_data.size) + 781]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                            else:
                                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                    call address(call.data[calldata.size - 128]) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 617]:
                                                            require ext_code.size(address(call.data[calldata.size - 64]))
                                                            staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                            call address(call.data[calldata.size - 128]) with:
                                                                 gas gas_remaining wei
                                                                args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if call.data[calldata.size - 160]:
                                                                    require call.data[calldata.size - 160] >= 32
                                                                    if not call.data[calldata.size - 128]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            else:
                                                                mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                else:
                                    require ext_code.size(address(call.data[calldata.size - 64]))
                                    staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 585 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32
                                    call address(call.data[calldata.size - 96]) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, stor14.field_0) - Mask(112, 0, stor15.field_0)) >> 32) >> 32, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if call.data[calldata.size - 160]:
                                            require call.data[calldata.size - 160] >= 32
                                            if not call.data[calldata.size - 128]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[ceil32(return_data.size) + 749 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 813 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[ceil32(return_data.size) + 945]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[ceil32(return_data.size) + 913 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[ceil32(return_data.size) + 977 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[ceil32(return_data.size) + 945 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[ceil32(return_data.size) + 945]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[ceil32(return_data.size) + 781 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 781]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 617]:
                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                        if ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112):
                                            if not address(call.data[calldata.size - 128]):
                                                call arg1 with:
                                                   value ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112) wei
                                                     gas 9000 wei
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 750 len 64] = 0, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                call address(call.data[calldata.size - 128]) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(arg1), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 814 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if call.data[calldata.size - 160]:
                                                            require call.data[calldata.size - 160] >= 32
                                                            if not call.data[calldata.size - 128]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + 914 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + 978 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + 946 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + 946]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 782 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        require ext_code.size(address(call.data[calldata.size - 64]))
                                                        staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                        call address(call.data[calldata.size - 128]) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if call.data[calldata.size - 160]:
                                                                require call.data[calldata.size - 160] >= 32
                                                                if not call.data[calldata.size - 128]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                        else:
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                    revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                    else:
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[(2 * ceil32(return_data.size)) + 782]:
                                                                require ext_code.size(address(call.data[calldata.size - 64]))
                                                                staticcall address(call.data[calldata.size - 64]).0x8da5cb5b with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 915 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32
                                                                call address(call.data[calldata.size - 128]) with:
                                                                     gas gas_remaining wei
                                                                    args ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112), Mask(224, 32, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] - uint32(stor14.field_112) - uint32(stor15.field_112)) >> 32) >> 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 979 len 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if call.data[calldata.size - 160]:
                                                                        require call.data[calldata.size - 160] >= 32
                                                                        if not call.data[calldata.size - 128]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                else:
                                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'OneSwap: TRANSFER_FAILED'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 947]:
                                                                            revert with 0, 'OneSwap: TRANSFER_FAILED'
    stor10 = 1
}



}
