contract main {




// =====================  Runtime code  =====================


uint256 gasFee;
array of address stor1;
array of struct stor2;
array of struct orderCount;
mapping of uint8 stor4;
array of struct stor5;
uint256 orderBookLength;
uint8 batchSize; offset 160
address stor8;
address stor9;
uint256 sub_d471ed75;

function orderBookLength() {
    return orderBookLength
}

function gasFee() {
    return gasFee
}

function sub_7335ed6a(?) {
    return bool(uint8(stor1.length))
}

function sub_d471ed75(?) {
    return sub_d471ed75
}

function getOrderCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return orderCount[address(arg1)].field_0
}

function batchSize() {
    return batchSize
}

function processRefunds() {
    # nil
}

function _fallback() payable {
    revert
}

function updateGasFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor8
    gasFee = arg1
}

function updateBatchSize(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor8
    batchSize = arg1
}

function whitelistUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor8
    stor4[address(arg1)] = 1
}

function updateMinHold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor4[address(msg.sender)]
    sub_d471ed75 = arg1
}

function setSnipingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor4[address(msg.sender)]
    uint8(stor1.length) = uint8(arg1)
}

function recoverBEP20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor8
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getOrders(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if orderCount[address(arg1)].field_0:
        mem[128] = orderCount[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * orderCount[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = orderCount[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=orderCount[address(arg1)].field_0, data=mem[128 len 32 * orderCount[address(arg1)].field_0])
    mem[(32 * orderCount[address(arg1)].field_0) + 128] = 32
    mem[(32 * orderCount[address(arg1)].field_0) + 160] = orderCount[address(arg1)].field_0
    mem[(32 * orderCount[address(arg1)].field_0) + 192 len 32 * orderCount[address(arg1)].field_0] = mem[128 len 32 * orderCount[address(arg1)].field_0]
    return memory
      from (32 * orderCount[address(arg1)].field_0) + 128
       len (96 * orderCount[address(arg1)].field_0) + 64
}

function cancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'cancelOrder: You are not authorised to cancel this order'
    if not stor2[arg1].field_1280:
        stor2[arg1].field_1280 = 0
        # nil
    else:
        if stor2[arg1].field_768 and stor2[arg1].field_1280 > -1 / stor2[arg1].field_768:
            revert with 'NH{q', 17
        call stor2[arg1].field_256 with:
           value stor2[arg1].field_768 * stor2[arg1].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor2[arg1].field_1288 = 3
        if stor2[arg1].field_768 and stor2[arg1].field_1280 > -1 / stor2[arg1].field_768:
            revert with 'NH{q', 17
        emit OrderRefunded((stor2[arg1].field_768 * stor2[arg1].field_1280), stor2[arg1].field_0, stor2[arg1].field_512, stor2[arg1].field_256);
        stor2[arg1].field_1280 = 0
        # nil
}

function sub_2d63c712(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160] = address(msg.sender)
    mem[ceil32(arg2.length) + 180] = address(arg1)
    mem[ceil32(arg2.length) + 200 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 200] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length + 40
    mem[ceil32(arg2.length) + arg2.length + 200] = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + arg2.length + 200
       len 32
}

function sub_7975fba7(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg7.length) + 128 > test266151307() or ceil32(arg7.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg7 + arg7.length + 36 <= calldata.size
    require stor4[address(msg.sender)]
    if not uint8(stor1.length):
        revert with 0, 'pancakeswaps3: Sniping has been disabled!'
    if uint8(arg3) <= 0:
        revert with 0, 'pancakeswaps3: Must make at least one transaction'
    if arg6 <= block.timestamp:
        revert with 0, 'pancakeswaps3: Deadline must be in the future'
    if block.timestamp > -259201:
        revert with 'NH{q', 17
    if arg6 >= block.timestamp + (72 * 24 * 3600):
        revert with 0, 'pancakeswaps3: Deadline must be smaller than 3 days'
    if not batchSize:
        revert with 'NH{q', 18
    if 1 > -uint8(uint8(arg3) / batchSize) + 255:
        revert with 'NH{q', 17
    if gasFee and uint8(uint8(uint8(arg3) / batchSize) + 1) > -1 / gasFee:
        revert with 'NH{q', 17
    if arg2 and uint8(arg3) > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * uint8(arg3) > (-1 * gasFee * uint8(uint8(uint8(arg3) / batchSize) + 1)) - 1:
        revert with 'NH{q', 17
    if msg.value < (arg2 * uint8(arg3)) + (gasFee * uint8(uint8(uint8(arg3) / batchSize) + 1)):
        revert with 0, 'pancakeswaps3: Wrong token amount'
    # nil
}

function sub_b1c510a9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 4
    require stor4[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        _85 = sha3(mem[(32 * idx) + 128], 2)
        if stor2[mem[(32 * idx) + 128]].field_512:
            if stor2[mem[(32 * idx) + 128]].field_1280:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _87 = mem[(32 * idx) + 128]
                _88 = mem[64]
                mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                require ext_code.size(stor9)
                staticcall stor9.WETH() with:
                        gas gas_remaining wei
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_88]:
                    revert with 'NH{q', 50
                mem[_88 + 32] = ext_call.return_data[12 len 20]
                if 1 >= mem[_88]:
                    revert with 'NH{q', 50
                mem[_88 + 64] = stor2[mem[0]].field_512
                mem[_88 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[_88 + ceil32(return_data.size) + 100] = 1
                mem[_88 + ceil32(return_data.size) + 132] = 128
                mem[_88 + ceil32(return_data.size) + 228] = mem[_88]
                s = 0
                t = _88 + 32
                u = _88 + ceil32(return_data.size) + 260
                while s < mem[_88]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_88 + ceil32(return_data.size) + 164] = address(stor1[_85])
                mem[_88 + ceil32(return_data.size) + 196] = block.timestamp
                require ext_code.size(stor9)
                call stor9.mem[mem[64] len 4] with:
                   value orderCount[_85].field_0 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _88 + ceil32(return_data.size) + (32 * mem[_88]) + -mem[64] + 256]
                if ext_call.success:
                    stor5[_85].field_8 = 4
                    mem[mem[64]] = stor5[_85].field_0
                    emit OrderFulfilled(stor5[_85].field_0, _87, stor2[_85].field_0, address(stor1[_85]));
                    if not stor5[_85].field_0:
                        revert with 'NH{q', 17
                    stor5[_85].field_0 = uint8(stor5[_85].field_0 - 1)
                else:
                    if stor5[_85].field_8 > 4:
                        revert with 'NH{q', 33
                    if stor5[_85].field_8 != 4:
                        stor5[_85].field_8 = 2
                    mem[mem[64]] = stor5[_85].field_0
                    emit OrderFailed(stor5[_85].field_0, _87, stor2[_85].field_0, address(stor1[_85]));
                    if not stor5[_85].field_0:
                        stor5[_85].field_8 = 1
                        if stor5.length != _87:
                            stor2[stor2[_87].field_1792].field_1536 = stor2[_87].field_1536
                            mem[0] = stor2[_87].field_1536
                            mem[32] = 2
                            stor2[stor2[_87].field_1536].field_1792 = stor2[_87].field_1792
                        else:
                            stor5.length = stor2[_87].field_1536
                            mem[0] = stor5.length
                            mem[32] = 2
                            stor2[stor5.length].field_1792 = 0
                        if not orderBookLength:
                            revert with 'NH{q', 17
                        orderBookLength--
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getOrderStatuses(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        idx = arg3
        while idx < arg2:
            mem[0] = arg1
            mem[32] = 3
            if idx == orderCount[address(arg1)].field_0:
                _66 = mem[64]
                mem[mem[64]] = 32
                _68 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _68:
                    _118 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_118 + 44 len 20]
                    mem[t + 64] = mem[_118 + 76 len 20]
                    mem[t + 96] = mem[_118 + 96]
                    mem[t + 128] = mem[_118 + 128]
                    mem[t + 160] = mem[_118 + 191 len 1]
                    if mem[_118 + 192] >= 5:
                        revert with 'NH{q', 33
                    mem[t + 192] = mem[_118 + 192]
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _66 + (224 * _68) + -mem[64] + 64
            if idx >= orderCount[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = orderCount[address(arg1)][idx].field_0
            mem[32] = 2
            _65 = mem[64]
            mem[64] = mem[64] + 224
            mem[_65] = stor2[stor3[address(arg1)][idx].field_0].field_0
            mem[_65 + 32] = stor2[stor3[address(arg1)][idx].field_0].field_256
            mem[_65 + 64] = stor2[stor3[address(arg1)][idx].field_0].field_512
            mem[_65 + 96] = stor2[stor3[address(arg1)][idx].field_0].field_768
            mem[_65 + 128] = stor2[stor3[address(arg1)][idx].field_0].field_1024
            mem[_65 + 160] = stor2[stor3[address(arg1)][idx].field_0].field_1280
            if stor2[stor3[address(arg1)][idx].field_0].field_1288 > 4:
                revert with 'NH{q', 33
            mem[_65 + 192] = stor2[stor3[address(arg1)][idx].field_0].field_1288
            if idx < arg3:
                revert with 'NH{q', 17
            if idx - arg3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg3) + 128] = _65
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _67:
            _117 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_117 + 44 len 20]
            mem[t + 64] = mem[_117 + 76 len 20]
            mem[t + 96] = mem[_117 + 96]
            mem[t + 128] = mem[_117 + 128]
            mem[t + 160] = mem[_117 + 191 len 1]
            if mem[_117 + 192] >= 5:
                revert with 'NH{q', 33
            mem[t + 192] = mem[_117 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _61 + (224 * _67) + -mem[64] + 64
    mem[64] = (32 * arg2) + 352
    mem[(32 * arg2) + 128] = 0
    mem[(32 * arg2) + 160] = 0
    mem[(32 * arg2) + 192] = 0
    mem[(32 * arg2) + 224] = 0
    mem[(32 * arg2) + 256] = 0
    mem[(32 * arg2) + 288] = 0
    mem[var40002] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = arg3
        while idx < arg2:
            mem[0] = arg1
            mem[32] = 3
            if idx == orderCount[address(arg1)].field_0:
                _257 = mem[64]
                mem[mem[64]] = 32
                _260 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _260:
                    _309 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_309 + 44 len 20]
                    mem[t + 64] = mem[_309 + 76 len 20]
                    mem[t + 96] = mem[_309 + 96]
                    mem[t + 128] = mem[_309 + 128]
                    mem[t + 160] = mem[_309 + 191 len 1]
                    if mem[_309 + 192] >= 5:
                        revert with 'NH{q', 33
                    mem[t + 192] = mem[_309 + 192]
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _257 + (224 * _260) + -mem[64] + 64
            if idx >= orderCount[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = orderCount[address(arg1)][idx].field_0
            mem[32] = 2
            _256 = mem[64]
            mem[64] = mem[64] + 224
            mem[_256] = stor2[stor3[address(arg1)][idx].field_0].field_0
            mem[_256 + 32] = stor2[stor3[address(arg1)][idx].field_0].field_256
            mem[_256 + 64] = stor2[stor3[address(arg1)][idx].field_0].field_512
            mem[_256 + 96] = stor2[stor3[address(arg1)][idx].field_0].field_768
            mem[_256 + 128] = stor2[stor3[address(arg1)][idx].field_0].field_1024
            mem[_256 + 160] = stor2[stor3[address(arg1)][idx].field_0].field_1280
            if stor2[stor3[address(arg1)][idx].field_0].field_1288 > 4:
                revert with 'NH{q', 33
            mem[_256 + 192] = stor2[stor3[address(arg1)][idx].field_0].field_1288
            if idx < arg3:
                revert with 'NH{q', 17
            if idx - arg3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg3) + 128] = _256
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _252 = mem[64]
        mem[mem[64]] = 32
        _258 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _258:
            _308 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_308 + 44 len 20]
            mem[t + 64] = mem[_308 + 76 len 20]
            mem[t + 96] = mem[_308 + 96]
            mem[t + 128] = mem[_308 + 128]
            mem[t + 160] = mem[_308 + 191 len 1]
            if mem[_308 + 192] >= 5:
                revert with 'NH{q', 33
            mem[t + 192] = mem[_308 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _252 + (224 * _258) + -mem[64] + 64
    mem[64] = (32 * arg2) + 576
    mem[(32 * arg2) + 352] = 0
    mem[(32 * arg2) + 384] = 0
    mem[(32 * arg2) + 416] = 0
    mem[(32 * arg2) + 448] = 0
    mem[(32 * arg2) + 480] = 0
    mem[(32 * arg2) + 512] = 0
    mem[var48002] = 0
    mem[var50002] = var50001
    if not var50003 - 1:
        idx = arg3
        while idx < arg2:
            mem[0] = arg1
            mem[32] = 3
            if idx == orderCount[address(arg1)].field_0:
                _448 = mem[64]
                mem[mem[64]] = 32
                _451 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _451:
                    _500 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_500 + 44 len 20]
                    mem[t + 64] = mem[_500 + 76 len 20]
                    mem[t + 96] = mem[_500 + 96]
                    mem[t + 128] = mem[_500 + 128]
                    mem[t + 160] = mem[_500 + 191 len 1]
                    if mem[_500 + 192] >= 5:
                        revert with 'NH{q', 33
                    mem[t + 192] = mem[_500 + 192]
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _448 + (224 * _451) + -mem[64] + 64
            if idx >= orderCount[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = orderCount[address(arg1)][idx].field_0
            mem[32] = 2
            _447 = mem[64]
            mem[64] = mem[64] + 224
            mem[_447] = stor2[stor3[address(arg1)][idx].field_0].field_0
            mem[_447 + 32] = stor2[stor3[address(arg1)][idx].field_0].field_256
            mem[_447 + 64] = stor2[stor3[address(arg1)][idx].field_0].field_512
            mem[_447 + 96] = stor2[stor3[address(arg1)][idx].field_0].field_768
            mem[_447 + 128] = stor2[stor3[address(arg1)][idx].field_0].field_1024
            mem[_447 + 160] = stor2[stor3[address(arg1)][idx].field_0].field_1280
            if stor2[stor3[address(arg1)][idx].field_0].field_1288 > 4:
                revert with 'NH{q', 33
            mem[_447 + 192] = stor2[stor3[address(arg1)][idx].field_0].field_1288
            if idx < arg3:
                revert with 'NH{q', 17
            if idx - arg3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg3) + 128] = _447
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _443 = mem[64]
        mem[mem[64]] = 32
        _449 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _449:
            _499 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_499 + 44 len 20]
            mem[t + 64] = mem[_499 + 76 len 20]
            mem[t + 96] = mem[_499 + 96]
            mem[t + 128] = mem[_499 + 128]
            mem[t + 160] = mem[_499 + 191 len 1]
            if mem[_499 + 192] >= 5:
                revert with 'NH{q', 33
            mem[t + 192] = mem[_499 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _443 + (224 * _449) + -mem[64] + 64
    mem[64] = (32 * arg2) + 800
    mem[(32 * arg2) + 576] = 0
    mem[(32 * arg2) + 608] = 0
    mem[(32 * arg2) + 640] = 0
    mem[(32 * arg2) + 672] = 0
    mem[(32 * arg2) + 704] = 0
    mem[(32 * arg2) + 736] = 0
    mem[var56002] = 0
    mem[var58002] = var58001
    if not var58003 - 1:
        idx = arg3
        while idx < arg2:
            mem[0] = arg1
            mem[32] = 3
            if idx == orderCount[address(arg1)].field_0:
                _639 = mem[64]
                mem[mem[64]] = 32
                _642 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _642:
                    _691 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_691 + 44 len 20]
                    mem[t + 64] = mem[_691 + 76 len 20]
                    mem[t + 96] = mem[_691 + 96]
                    mem[t + 128] = mem[_691 + 128]
                    mem[t + 160] = mem[_691 + 191 len 1]
                    if mem[_691 + 192] >= 5:
                        revert with 'NH{q', 33
                    mem[t + 192] = mem[_691 + 192]
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _639 + (224 * _642) + -mem[64] + 64
            if idx >= orderCount[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = orderCount[address(arg1)][idx].field_0
            mem[32] = 2
            _638 = mem[64]
            mem[64] = mem[64] + 224
            mem[_638] = stor2[stor3[address(arg1)][idx].field_0].field_0
            mem[_638 + 32] = stor2[stor3[address(arg1)][idx].field_0].field_256
            mem[_638 + 64] = stor2[stor3[address(arg1)][idx].field_0].field_512
            mem[_638 + 96] = stor2[stor3[address(arg1)][idx].field_0].field_768
            mem[_638 + 128] = stor2[stor3[address(arg1)][idx].field_0].field_1024
            mem[_638 + 160] = stor2[stor3[address(arg1)][idx].field_0].field_1280
            if stor2[stor3[address(arg1)][idx].field_0].field_1288 > 4:
                revert with 'NH{q', 33
            mem[_638 + 192] = stor2[stor3[address(arg1)][idx].field_0].field_1288
            if idx < arg3:
                revert with 'NH{q', 17
            if idx - arg3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg3) + 128] = _638
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _634 = mem[64]
        mem[mem[64]] = 32
        _640 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _640:
            _690 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_690 + 44 len 20]
            mem[t + 64] = mem[_690 + 76 len 20]
            mem[t + 96] = mem[_690 + 96]
            mem[t + 128] = mem[_690 + 128]
            mem[t + 160] = mem[_690 + 191 len 1]
            if mem[_690 + 192] >= 5:
                revert with 'NH{q', 33
            mem[t + 192] = mem[_690 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _634 + (224 * _640) + -mem[64] + 64
    mem[64] = (32 * arg2) + 1024
    mem[(32 * arg2) + 800] = 0
    mem[(32 * arg2) + 832] = 0
    mem[(32 * arg2) + 864] = 0
    mem[(32 * arg2) + 896] = 0
    mem[(32 * arg2) + 928] = 0
    mem[(32 * arg2) + 960] = 0
    mem[var64002] = 0
    mem[var66002] = var66001
    if var66003 - 1:
        # nil
    else:
        idx = arg3
        while idx < arg2:
            mem[0] = arg1
            mem[32] = 3
            if idx == orderCount[address(arg1)].field_0:
                _830 = mem[64]
                mem[mem[64]] = 32
                _833 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _833:
                    _882 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_882 + 44 len 20]
                    mem[t + 64] = mem[_882 + 76 len 20]
                    mem[t + 96] = mem[_882 + 96]
                    mem[t + 128] = mem[_882 + 128]
                    mem[t + 160] = mem[_882 + 191 len 1]
                    if mem[_882 + 192] >= 5:
                        revert with 'NH{q', 33
                    mem[t + 192] = mem[_882 + 192]
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _830 + (224 * _833) + -mem[64] + 64
            if idx >= orderCount[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = orderCount[address(arg1)][idx].field_0
            mem[32] = 2
            _829 = mem[64]
            mem[64] = mem[64] + 224
            mem[_829] = stor2[stor3[address(arg1)][idx].field_0].field_0
            mem[_829 + 32] = stor2[stor3[address(arg1)][idx].field_0].field_256
            mem[_829 + 64] = stor2[stor3[address(arg1)][idx].field_0].field_512
            mem[_829 + 96] = stor2[stor3[address(arg1)][idx].field_0].field_768
            mem[_829 + 128] = stor2[stor3[address(arg1)][idx].field_0].field_1024
            mem[_829 + 160] = stor2[stor3[address(arg1)][idx].field_0].field_1280
            if stor2[stor3[address(arg1)][idx].field_0].field_1288 > 4:
                revert with 'NH{q', 33
            mem[_829 + 192] = stor2[stor3[address(arg1)][idx].field_0].field_1288
            if idx < arg3:
                revert with 'NH{q', 17
            if idx - arg3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg3) + 128] = _829
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _825 = mem[64]
        mem[mem[64]] = 32
        _831 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _831:
            _881 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_881 + 44 len 20]
            mem[t + 64] = mem[_881 + 76 len 20]
            mem[t + 96] = mem[_881 + 96]
            mem[t + 128] = mem[_881 + 128]
            mem[t + 160] = mem[_881 + 191 len 1]
            if mem[_881 + 192] >= 5:
                revert with 'NH{q', 33
            mem[t + 192] = mem[_881 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _825 + (224 * _831) + -mem[64] + 64
}



}
