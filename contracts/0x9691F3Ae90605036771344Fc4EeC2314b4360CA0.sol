contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address OWNER;
address sub_066034fcAddress;
address FACTORYAddress;
address sub_59cb9fecAddress;
address sub_ea6cfd4aAddress;
address WBNBAddress;
mapping of struct stor6;
mapping of struct stor7;
array of struct stor8;
mapping of struct stor9;

function sub_066034fc(?) {
    return sub_066034fcAddress
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

function WBNB() {
    return WBNBAddress
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
        revert with 0, 'CROSSFI REF: ONLY_OWNER'
    call OWNER with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI REF: ONLY_OWNER'
    sub_066034fcAddress = arg1
    FACTORYAddress = arg2
    sub_59cb9fecAddress = arg3
    sub_ea6cfd4aAddress = arg4
    WBNBAddress = arg5
}

function sub_838b0db7(?) {
    require calldata.size - 4 >= 192
    if OWNER != msg.sender:
        revert with 0, 'CROSSFI REF: ONLY_OWNER'
    if arg1 >= 21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743524f535346494e204641524d3a205041434b414745204e4f54204558495354,
                    mem[197 len 31]
    stor7[arg1].field_0 = uint8(arg2)
    stor7[arg1].field_256 = arg3
    stor7[arg1].field_512 = arg4
    stor7[arg1].field_768 = arg5
    stor7[arg1].field_1024 = arg6
    stor7[arg1].field_1280 = block.timestamp
}

function sub_8c4720ef(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ea6cfd4aAddress)
    call sub_ea6cfd4aAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5743524f535346494e204641524d3a205452414e534645522046524f4d20544f4b454e204552524f,
                    mem[204 len 24]
    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
        if not sub_ea6cfd4aAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not arg2:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2
        else:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not arg2:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2
    else:
        if not sub_59cb9fecAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
            if not sub_ea6cfd4aAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not arg2:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2
        else:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not arg2:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                stor8[msg.sender].field_0++
                stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 2
                stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                if not stor7[arg1].field_1280:
                    stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                else:
                    if block.timestamp < stor7[arg1].field_1280:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                    else:
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2
}

function sub_ac1ae6e4(?) payable {
    require calldata.size - 4 >= 64
    if sub_59cb9fecAddress == WBNBAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if sub_59cb9fecAddress < WBNBAddress:
        if not sub_59cb9fecAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_59cb9fecAddress == WBNBAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if sub_59cb9fecAddress < WBNBAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not WBNBAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if sub_59cb9fecAddress == sub_59cb9fecAddress:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not msg.value:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / msg.value != Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not msg.value:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / msg.value != Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
    else:
        if not WBNBAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if sub_59cb9fecAddress == WBNBAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if sub_59cb9fecAddress < WBNBAddress:
            if not sub_59cb9fecAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, WBNBAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not WBNBAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(WBNBAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if WBNBAddress == sub_59cb9fecAddress:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not msg.value:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / msg.value != Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value) - (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * msg.value
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not msg.value:
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if 0 < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if 0 > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
            else:
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / msg.value != Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[450 len 31]
                if arg1 >= 21:
                    revert with 0, 32, 36, 0xfe43524f535346494e204641524d3a205041434b414745204944204e4f54204558495354, mem[837 len 28]
                if stor6[arg1].field_0:
                    revert with 0, 'CROSSFIN FARM: PACKAGE IS LOCKED'
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value < stor6[arg1].field_768:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value > stor6[arg1].field_1024:
                    revert with 0, 32, 34, 0x5343524f535346494e204641524d3a2057524f4e47204d494e2f57524f4e47204d41, mem[1027 len 30]
                require ext_code.size(sub_066034fcAddress)
                call sub_066034fcAddress.0x2701cc51 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[1094 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2 > Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if stor6[arg1].field_256 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        stor8[msg.sender].field_0++
                        stor8[msg.sender][stor8[msg.sender].field_0].field_0 = arg1
                        stor8[msg.sender][stor8[msg.sender].field_0].field_256 = block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_512 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_768 = stor6[arg1].field_256 + block.timestamp
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1024 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1280 = Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1535 = 0
                        stor8[msg.sender][stor8[msg.sender].field_0].field_1536 = (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value) - (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value / 2) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not stor7[arg1].field_1280:
                            stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                        else:
                            if block.timestamp < stor7[arg1].field_1280:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor6[arg1].field_512
                            else:
                                stor8[msg.sender][stor8[msg.sender].field_0].field_1792 = stor7[arg1].field_512
                stor8[msg.sender][stor8[msg.sender].field_0].field_2048 = block.timestamp
                stor8[msg.sender][stor8[msg.sender].field_0].field_2304 = 0
                stor9[msg.sender].field_0++
                stor9[msg.sender].field_256 += Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * msg.value
}

function sub_1781b77b(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor9[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x4443524f535346494e204641524d3a2055534552205041434b414745204944204e4f54204558495354,
                    mem[205 len 23]
    require arg1 < stor8[msg.sender].field_0
    if stor8[msg.sender][arg1].field_512:
        revert with 0, 32, 36, 0x5843524f535346494e204641524d3a2055534552205041434b41474520495320454e4445, mem[840 len 28]
    if block.timestamp < stor8[msg.sender][arg1].field_768:
        revert with 0, 32, 43, 0x5243524f535346494e204641524d3a2055534552205041434b4147452054494d45204e4f5420454e4f5547, mem[847 len 21]
    if stor8[msg.sender][arg1].field_2048 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor7[stor8[msg.sender][arg1].field_0].field_1280:
        if not block.timestamp - stor8[msg.sender][arg1].field_2048:
            if stor8[msg.sender][arg1].field_1024:
                if 0 / stor8[msg.sender][arg1].field_1024:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
            if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
            if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                if not sub_ea6cfd4aAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_59cb9fecAddress)
                    call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_512 = 1
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                    require arg1 < stor8[address(msg.sender)].field_0
                    stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                else:
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_59cb9fecAddress)
                    call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_512 = 1
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                    require arg1 < stor8[address(msg.sender)].field_0
                    stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            else:
                if not sub_59cb9fecAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_59cb9fecAddress)
                    call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_512 = 1
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                    require arg1 < stor8[address(msg.sender)].field_0
                    stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                else:
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_59cb9fecAddress)
                    call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(sub_ea6cfd4aAddress)
                    call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_066034fcAddress)
                    call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_512 = 1
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                    require arg1 < stor8[address(msg.sender)].field_0
                    stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                    require arg1 < stor8[msg.sender].field_0
                    stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if (block.timestamp * stor8[msg.sender][arg1].field_1792) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792) / block.timestamp - stor8[msg.sender][arg1].field_2048 != stor8[msg.sender][arg1].field_1792:
                revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
            if not stor8[msg.sender][arg1].field_1024:
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            else:
                if (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / stor8[msg.sender][arg1].field_1024 != (block.timestamp * stor8[msg.sender][arg1].field_1792) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792):
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    else:
        if stor8[msg.sender][arg1].field_2048 < stor7[stor8[msg.sender][arg1].field_0].field_1280:
            if not block.timestamp - stor8[msg.sender][arg1].field_2048:
                if stor8[msg.sender][arg1].field_1024:
                    if 0 / stor8[msg.sender][arg1].field_1024:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            else:
                if (block.timestamp * stor8[msg.sender][arg1].field_1792) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792) / block.timestamp - stor8[msg.sender][arg1].field_2048 != stor8[msg.sender][arg1].field_1792:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if not stor8[msg.sender][arg1].field_1024:
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not sub_59cb9fecAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                else:
                    if (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / stor8[msg.sender][arg1].field_1024 != (block.timestamp * stor8[msg.sender][arg1].field_1792) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792):
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not sub_59cb9fecAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor8[msg.sender][arg1].field_1792
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += (block.timestamp * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor8[msg.sender][arg1].field_1792 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        else:
            if not block.timestamp - stor8[msg.sender][arg1].field_2048:
                if stor8[msg.sender][arg1].field_1024:
                    if 0 / stor8[msg.sender][arg1].field_1024:
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                    revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                    if not sub_ea6cfd4aAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                else:
                    if not sub_59cb9fecAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_59cb9fecAddress)
                        call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_ea6cfd4aAddress)
                        call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_066034fcAddress)
                        call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_512 = 1
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                        require arg1 < stor8[address(msg.sender)].field_0
                        stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                        require arg1 < stor8[msg.sender].field_0
                        stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            else:
                if (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512) / block.timestamp - stor8[msg.sender][arg1].field_2048 != stor7[stor8[msg.sender][arg1].field_0].field_512:
                    revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if not stor8[msg.sender][arg1].field_1024:
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not sub_59cb9fecAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + (0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += 0 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                else:
                    if (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / stor8[msg.sender][arg1].field_1024 != (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512):
                        revert with 0, 32, 33, 0x48536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                    if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                        revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                    if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                        if not sub_ea6cfd4aAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_ea6cfd4aAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not sub_59cb9fecAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if sub_ea6cfd4aAddress == sub_59cb9fecAddress:
                            revert with 0, 32, 37, 0x5344656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[969 len 27]
                        if sub_ea6cfd4aAddress < sub_59cb9fecAddress:
                            if not sub_ea6cfd4aAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_ea6cfd4aAddress, sub_59cb9fecAddress), ext_call.return_data[0])).getReserves() with:
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
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(sub_59cb9fecAddress, sub_ea6cfd4aAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if sub_59cb9fecAddress == sub_ea6cfd4aAddress:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                            stor9[msg.sender].field_512 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_59cb9fecAddress)
                            call sub_59cb9fecAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_ea6cfd4aAddress)
                            call sub_ea6cfd4aAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, stor8[msg.sender][arg1].field_1536 + ((block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_066034fcAddress)
                            call sub_066034fcAddress.payRef(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_512 = 1
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_1792 = stor7[stor8[msg.sender][arg1].field_0].field_512
                            require arg1 < stor8[address(msg.sender)].field_0
                            stor8[address(msg.sender)][arg1].field_2048 = block.timestamp
                            require arg1 < stor8[msg.sender].field_0
                            stor8[msg.sender][arg1].field_2304 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                            stor9[msg.sender].field_512 += (block.timestamp * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) - (stor8[msg.sender][arg1].field_2048 * stor7[stor8[msg.sender][arg1].field_0].field_512 * stor8[msg.sender][arg1].field_1024) / 10^6 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
}



}
