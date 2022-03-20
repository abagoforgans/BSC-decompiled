contract main {




// =====================  Runtime code  =====================


#
#  - sub_1781b77b(?)
#
address OWNER;
address sub_066034fcAddress;
address FACTORYAddress;
address sub_59cb9fecAddress;
address sub_ea6cfd4aAddress;
address WBNBAddress;
mapping of struct packages;
array of struct sub_8bb0097b;
mapping of struct statistics;

function sub_066034fc(?) {
    return sub_066034fcAddress
}

function statistics(address arg1) {
    require calldata.size - 4 >= 32
    return statistics[arg1].field_0, statistics[arg1].field_256, statistics[arg1].field_512
}

function OWNER() {
    return OWNER
}

function FACTORY() {
    return FACTORYAddress
}

function sub_59cb9fec(?) {
    return sub_59cb9fecAddress
}

function sub_8bb0097b(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_8bb0097b[arg1].field_0
    return sub_8bb0097b[arg1][arg2].field_0, 
           sub_8bb0097b[arg1][arg2].field_256,
           bool(sub_8bb0097b[arg1][arg2].field_512),
           sub_8bb0097b[arg1][arg2].field_768,
           sub_8bb0097b[arg1][arg2].field_1024,
           sub_8bb0097b[arg1][arg2].field_1280,
           sub_8bb0097b[arg1][arg2].field_1536,
           sub_8bb0097b[arg1][arg2].field_1792,
           sub_8bb0097b[arg1][arg2].field_2048,
           sub_8bb0097b[arg1][arg2].field_2304
}

function WBNB() {
    return WBNBAddress
}

function packages(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(packages[arg1].field_0), 
           packages[arg1].field_256,
           packages[arg1].field_512,
           packages[arg1].field_768,
           packages[arg1].field_1024,
           packages[arg1].field_1280
}

function sub_ea6cfd4a(?) {
    return sub_ea6cfd4aAddress
}

function _fallback() payable {
    revert
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    call OWNER with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    sub_066034fcAddress = arg1
    FACTORYAddress = arg2
    sub_59cb9fecAddress = arg3
    sub_ea6cfd4aAddress = arg4
    WBNBAddress = arg5
}

function sub_9417c572(?) {
    require calldata.size - 4 >= 192
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI FARM: ONLY_OWNER'
    if arg1 >= 21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743524f535346494e204641524d3a205041434b414745204e4f54204558495354,
                    mem[197 len 31]
    packages[arg1].field_0 = uint8(arg2)
    packages[arg1].field_256 = arg3
    packages[arg1].field_512 = arg4
    packages[arg1].field_768 = arg5
    packages[arg1].field_1024 = arg6
    packages[arg1].field_1280 = block.timestamp
}

function sub_ac1ae6e4(?) payable {
    require calldata.size - 4 >= 64
    if WBNBAddress == sub_59cb9fecAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if WBNBAddress < sub_59cb9fecAddress:
        if not WBNBAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if WBNBAddress == sub_59cb9fecAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if WBNBAddress < sub_59cb9fecAddress:
            if not WBNBAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if msg.value <= 0:
            revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if WBNBAddress == WBNBAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[0])
            else:
                require msg.value
                if msg.value * ext_call.return_data[50 len 14] / msg.value != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[32])
            else:
                require msg.value
                if msg.value * ext_call.return_data[18 len 14] / msg.value != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    else:
        if not sub_59cb9fecAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if WBNBAddress == sub_59cb9fecAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if WBNBAddress < sub_59cb9fecAddress:
            if not WBNBAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if msg.value <= 0:
            revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if WBNBAddress == sub_59cb9fecAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[0])
            else:
                require msg.value
                if msg.value * ext_call.return_data[50 len 14] / msg.value != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not msg.value:
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[32])
            else:
                require msg.value
                if msg.value * ext_call.return_data[18 len 14] / msg.value != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    emit UpdateUser(msg.sender, sub_8bb0097b[address(msg.sender)].field_0 - 1);
}

function sub_8c4720ef(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ea6cfd4aAddress)
    call sub_ea6cfd4aAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5443524f535346494e204641524d3a205452414e534645522046524f4d20544f4b454e204552524f,
                    mem[204 len 24]
    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
        if not sub_59cb9fecAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 <= 0:
            revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if sub_59cb9fecAddress == sub_59cb9fecAddress:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg2:
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[32])
            else:
                require arg2
                if arg2 * ext_call.return_data[18 len 14] / arg2 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg2:
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[0])
            else:
                require arg2
                if arg2 * ext_call.return_data[50 len 14] / arg2 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
    else:
        if not sub_ea6cfd4aAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 <= 0:
            revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg2:
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[32])
            else:
                require arg2
                if arg2 * ext_call.return_data[18 len 14] / arg2 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[50 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg2:
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if 0 / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = 0 / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += 0 / Mask(112, 0, ext_call.return_data[0])
            else:
                require arg2
                if arg2 * ext_call.return_data[50 len 14] / arg2 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                require ext_call.return_data[18 len 14]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[773 len 28]
                if packages[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < packages[arg1].field_768:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                if arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > packages[arg1].field_1024:
                    revert with 0, 32, 34, 0x5943524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[963 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp + packages[arg1].field_256 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_8bb0097b[address(msg.sender)].field_0++
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_0 = arg1
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_512 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_768 = block.timestamp + packages[arg1].field_256
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1024 = arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1280 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1536 = 0
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_1792 = packages[arg1].field_512
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2048 = block.timestamp
                sub_8bb0097b[address(msg.sender)][sub_8bb0097b[address(msg.sender)].field_0].field_2304 = 0
                statistics[address(msg.sender)].field_0++
                statistics[address(msg.sender)].field_256 += arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
    emit UpdateUser(msg.sender, sub_8bb0097b[address(msg.sender)].field_0 - 1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= statistics[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x4443524f535346494e204641524d3a2055534552205041434b414745204944204e4f54204558495354,
                    mem[205 len 23]
    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
    if sub_8bb0097b[address(msg.sender)][arg1].field_512:
        revert with 0, 32, 36, 0x5843524f535346494e204641524d3a2055534552205041434b41474520495320454e4445, mem[840 len 28]
    if sub_8bb0097b[address(msg.sender)][arg1].field_2048 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_2048:
        if sub_8bb0097b[address(msg.sender)][arg1].field_1024:
            require sub_8bb0097b[address(msg.sender)][arg1].field_1024
            if 0 / sub_8bb0097b[address(msg.sender)][arg1].field_1024:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
        if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
        if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
    require block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_2048
    if sub_8bb0097b[address(msg.sender)][arg1].field_2048 < packages[stor7[address(msg.sender)][arg1].field_0].field_1280:
        if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792) / block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_2048 != sub_8bb0097b[address(msg.sender)][arg1].field_1792:
            revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
        if not sub_8bb0097b[address(msg.sender)][arg1].field_1024:
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
        require sub_8bb0097b[address(msg.sender)][arg1].field_1024
        if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / sub_8bb0097b[address(msg.sender)][arg1].field_1024 != (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792):
            revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
        if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
            if sub_59cb9fecAddress == sub_59cb9fecAddress:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    require (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[18 len 14]
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    require (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[50 len 14]
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    require (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[18 len 14]
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    require (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[50 len 14]
                    if (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * sub_8bb0097b[address(msg.sender)][arg1].field_1792 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    else:
        if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512) / block.timestamp - sub_8bb0097b[address(msg.sender)][arg1].field_2048 != packages[stor7[address(msg.sender)][arg1].field_0].field_512:
            revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
        if not sub_8bb0097b[address(msg.sender)][arg1].field_1024:
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
        require sub_8bb0097b[address(msg.sender)][arg1].field_1024
        if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / sub_8bb0097b[address(msg.sender)][arg1].field_1024 != (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512):
            revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
        if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
            if sub_59cb9fecAddress == sub_59cb9fecAddress:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    require (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[18 len 14]
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    require (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[50 len 14]
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_59cb9fecAddress < sub_ea6cfd4aAddress:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            else:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                staticcall uint64(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 <= 0:
                revert with 0, 32, 37, 0x5744656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[1158 len 27]
            if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[18 len 14]
                    if 0 / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[0])
                else:
                    require (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[18 len 14]
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1161 len 24]
                if not (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18:
                    require ext_call.return_data[50 len 14]
                    if 0 / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += 0 / Mask(112, 0, ext_call.return_data[32])
                else:
                    require (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1154 len 31]
                    require ext_call.return_data[50 len 14]
                    if (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x5343524f535346494e204641524d3a204e4f5448494e4720544f2057495448445241, mem[1155 len 30]
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_1792 = packages[stor7[address(msg.sender)][arg1].field_0].field_512
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < sub_8bb0097b[address(msg.sender)].field_0
                    sub_8bb0097b[address(msg.sender)][arg1].field_2304 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    statistics[address(msg.sender)].field_512 += (block.timestamp * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) - (sub_8bb0097b[address(msg.sender)][arg1].field_2048 * packages[stor7[address(msg.sender)][arg1].field_0].field_512 * sub_8bb0097b[address(msg.sender)][arg1].field_1024) / 100 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    emit UpdateUser(msg.sender, arg1);
}



}
