contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
address stor3;
array of address stor5;
array of address stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
array of address stor12;

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(0xa7cc7c1522f529320776d27d9340f534d3a73b7f)
}

function _fallback() payable {
    revert
}

function resetCounter() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = 0
}

function sub_0aa988db(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
}

function giveMoneyBack() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swapLeStandard() {
    if eth.balance(this.address) > 0:
        mem[96] = 3
        mem[64] = 224
        mem[128 len 96] = code.data[4445 len 96]
        stor5.length = 3
        s = 0
        idx = 128
        while 224 > idx:
            stor5[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 0 < stor5.length
        address(stor5.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        require 1 < stor5.length
        address(stor5.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
        require 2 < stor5.length
        mem[0] = 5
        address(stor5.field_512) = 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e
        idx = 0
        while idx < stor9:
            require stor11 < stor12.length
            mem[0] = 12
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor8
            mem[mem[64] + 68] = stor12[stor11]
            mem[mem[64] + 100] = block.timestamp + 3600
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = stor5.length
            if not stor5.length:
                require ext_code.size(stor1.length)
                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor10 wei
                     gas gas_remaining wei
                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor5.length
                if ext_call.success:
                    _677 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _681 = mem[_677]
                    require mem[_677] <= 4294967296
                    require mem[_677] + 32 <= return_data.size
                    require mem[mem[_677] + _677] <= 4294967296 and mem[_677] + (32 * mem[mem[_677] + _677]) + 32 <= return_data.size
                    mem[_677 + ceil32(return_data.size)] = mem[mem[_677] + _677]
                    _694 = mem[_681 + _677]
                    s = 0
                    while s < 32 * _694:
                        mem[_677 + ceil32(return_data.size) + s + 32] = mem[_681 + _677 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _694) + _677 + ceil32(return_data.size) + 32
                    stor11++
                    idx = idx + 1
                    continue 
                if not return_data.size:
                    _692 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_692 + 32 len 96] = code.data[4445 len 96]
                    stor6.length = mem[_692]
                    if not mem[_692]:
                        idx = sha3(6)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1135 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1151 = mem[_1135]
                                require mem[_1135] <= 4294967296
                                require mem[_1135] + 32 <= return_data.size
                                require mem[mem[_1135] + _1135] <= 4294967296 and mem[_1135] + (32 * mem[mem[_1135] + _1135]) + 32 <= return_data.size
                                mem[_1135 + ceil32(return_data.size)] = mem[mem[_1135] + _1135]
                                _1186 = mem[_1151 + _1135]
                                s = 0
                                while s < 32 * _1186:
                                    mem[_1135 + ceil32(return_data.size) + s + 32] = mem[_1151 + _1135 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1186) + _1135 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1529 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1547 = mem[_1529]
                                require mem[_1529] <= 4294967296
                                require mem[_1529] + 32 <= return_data.size
                                require mem[mem[_1529] + _1529] <= 4294967296 and mem[_1529] + (32 * mem[mem[_1529] + _1529]) + 32 <= return_data.size
                                mem[_1529 + ceil32(return_data.size)] = mem[mem[_1529] + _1529]
                                _1581 = mem[_1547 + _1529]
                                s = 0
                                while s < 32 * _1581:
                                    mem[_1529 + ceil32(return_data.size) + s + 32] = mem[_1547 + _1529 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1581) + _1529 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(6)
                        idx = _692 + 32
                        while _692 + (32 * mem[_692]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_692]) + 31) >> 5)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1387 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1402 = mem[_1387]
                                require mem[_1387] <= 4294967296
                                require mem[_1387] + 32 <= return_data.size
                                require mem[mem[_1387] + _1387] <= 4294967296 and mem[_1387] + (32 * mem[mem[_1387] + _1387]) + 32 <= return_data.size
                                mem[_1387 + ceil32(return_data.size)] = mem[mem[_1387] + _1387]
                                _1428 = mem[_1402 + _1387]
                                s = 0
                                while s < 32 * _1428:
                                    mem[_1387 + ceil32(return_data.size) + s + 32] = mem[_1402 + _1387 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1428) + _1387 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1653 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1665 = mem[_1653]
                                require mem[_1653] <= 4294967296
                                require mem[_1653] + 32 <= return_data.size
                                require mem[mem[_1653] + _1653] <= 4294967296 and mem[_1653] + (32 * mem[mem[_1653] + _1653]) + 32 <= return_data.size
                                mem[_1653 + ceil32(return_data.size)] = mem[mem[_1653] + _1653]
                                _1688 = mem[_1665 + _1653]
                                s = 0
                                while s < 32 * _1688:
                                    mem[_1653 + ceil32(return_data.size) + s + 32] = mem[_1665 + _1653 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1688) + _1653 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                else:
                    _687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_687] = return_data.size
                    mem[_687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _693 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_693 + 32 len 96] = code.data[4445 len 96]
                    stor6.length = mem[_693]
                    if not mem[_693]:
                        idx = sha3(6)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1137 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1154 = mem[_1137]
                                require mem[_1137] <= 4294967296
                                require mem[_1137] + 32 <= return_data.size
                                require mem[mem[_1137] + _1137] <= 4294967296 and mem[_1137] + (32 * mem[mem[_1137] + _1137]) + 32 <= return_data.size
                                mem[_1137 + ceil32(return_data.size)] = mem[mem[_1137] + _1137]
                                _1187 = mem[_1154 + _1137]
                                s = 0
                                while s < 32 * _1187:
                                    mem[_1137 + ceil32(return_data.size) + s + 32] = mem[_1154 + _1137 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1187) + _1137 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1530 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1549 = mem[_1530]
                                require mem[_1530] <= 4294967296
                                require mem[_1530] + 32 <= return_data.size
                                require mem[mem[_1530] + _1530] <= 4294967296 and mem[_1530] + (32 * mem[mem[_1530] + _1530]) + 32 <= return_data.size
                                mem[_1530 + ceil32(return_data.size)] = mem[mem[_1530] + _1530]
                                _1582 = mem[_1549 + _1530]
                                s = 0
                                while s < 32 * _1582:
                                    mem[_1530 + ceil32(return_data.size) + s + 32] = mem[_1549 + _1530 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1582) + _1530 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(6)
                        idx = _693 + 32
                        while _693 + (32 * mem[_693]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_693]) + 31) >> 5)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1388 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1404 = mem[_1388]
                                require mem[_1388] <= 4294967296
                                require mem[_1388] + 32 <= return_data.size
                                require mem[mem[_1388] + _1388] <= 4294967296 and mem[_1388] + (32 * mem[mem[_1388] + _1388]) + 32 <= return_data.size
                                mem[_1388 + ceil32(return_data.size)] = mem[mem[_1388] + _1388]
                                _1429 = mem[_1404 + _1388]
                                s = 0
                                while s < 32 * _1429:
                                    mem[_1388 + ceil32(return_data.size) + s + 32] = mem[_1404 + _1388 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1429) + _1388 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1654 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1667 = mem[_1654]
                                require mem[_1654] <= 4294967296
                                require mem[_1654] + 32 <= return_data.size
                                require mem[mem[_1654] + _1654] <= 4294967296 and mem[_1654] + (32 * mem[mem[_1654] + _1654]) + 32 <= return_data.size
                                mem[_1654 + ceil32(return_data.size)] = mem[mem[_1654] + _1654]
                                _1689 = mem[_1667 + _1654]
                                s = 0
                                while s < 32 * _1689:
                                    mem[_1654 + ceil32(return_data.size) + s + 32] = mem[_1667 + _1654 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1689) + _1654 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
            else:
                mem[0] = 5
                mem[mem[64] + 164] = address(stor5.field_0)
                s = mem[64] + 164
                t = sha3(5)
                while mem[64] + (32 * stor5.length) + 164 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(stor1.length)
                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor10 wei
                     gas gas_remaining wei
                    args stor8, Array(len=stor5.length, data=mem[mem[64] + 164 len 32 * stor5.length]), stor12[stor11], block.timestamp + 3600
                if ext_call.success:
                    _1112 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1125 = mem[_1112]
                    require mem[_1112] <= 4294967296
                    require mem[_1112] + 32 <= return_data.size
                    require mem[mem[_1112] + _1112] <= 4294967296 and mem[_1112] + (32 * mem[mem[_1112] + _1112]) + 32 <= return_data.size
                    mem[_1112 + ceil32(return_data.size)] = mem[mem[_1112] + _1112]
                    _1159 = mem[_1125 + _1112]
                    s = 0
                    while s < 32 * _1159:
                        mem[_1112 + ceil32(return_data.size) + s + 32] = mem[_1125 + _1112 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1159) + _1112 + ceil32(return_data.size) + 32
                    stor11++
                    idx = idx + 1
                    continue 
                if not return_data.size:
                    _1157 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_1157 + 32 len 96] = code.data[4445 len 96]
                    stor6.length = mem[_1157]
                    if not mem[_1157]:
                        idx = sha3(6)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1569 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1583 = mem[_1569]
                                require mem[_1569] <= 4294967296
                                require mem[_1569] + 32 <= return_data.size
                                require mem[mem[_1569] + _1569] <= 4294967296 and mem[_1569] + (32 * mem[mem[_1569] + _1569]) + 32 <= return_data.size
                                mem[_1569 + ceil32(return_data.size)] = mem[mem[_1569] + _1569]
                                _1607 = mem[_1583 + _1569]
                                s = 0
                                while s < 32 * _1607:
                                    mem[_1569 + ceil32(return_data.size) + s + 32] = mem[_1583 + _1569 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1607) + _1569 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1720 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1726 = mem[_1720]
                                require mem[_1720] <= 4294967296
                                require mem[_1720] + 32 <= return_data.size
                                require mem[mem[_1720] + _1720] <= 4294967296 and mem[_1720] + (32 * mem[mem[_1720] + _1720]) + 32 <= return_data.size
                                mem[_1720 + ceil32(return_data.size)] = mem[mem[_1720] + _1720]
                                _1740 = mem[_1726 + _1720]
                                s = 0
                                while s < 32 * _1740:
                                    mem[_1720 + ceil32(return_data.size) + s + 32] = mem[_1726 + _1720 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1740) + _1720 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(6)
                        idx = _1157 + 32
                        while _1157 + (32 * mem[_1157]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_1157]) + 31) >> 5)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1683 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1690 = mem[_1683]
                                require mem[_1683] <= 4294967296
                                require mem[_1683] + 32 <= return_data.size
                                require mem[mem[_1683] + _1683] <= 4294967296 and mem[_1683] + (32 * mem[mem[_1683] + _1683]) + 32 <= return_data.size
                                mem[_1683 + ceil32(return_data.size)] = mem[mem[_1683] + _1683]
                                _1703 = mem[_1690 + _1683]
                                s = 0
                                while s < 32 * _1703:
                                    mem[_1683 + ceil32(return_data.size) + s + 32] = mem[_1690 + _1683 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1703) + _1683 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1752 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1754 = mem[_1752]
                                require mem[_1752] <= 4294967296
                                require mem[_1752] + 32 <= return_data.size
                                require mem[mem[_1752] + _1752] <= 4294967296 and mem[_1752] + (32 * mem[mem[_1752] + _1752]) + 32 <= return_data.size
                                mem[_1752 + ceil32(return_data.size)] = mem[mem[_1752] + _1752]
                                _1762 = mem[_1754 + _1752]
                                s = 0
                                while s < 32 * _1762:
                                    mem[_1752 + ceil32(return_data.size) + s + 32] = mem[_1754 + _1752 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1762) + _1752 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                else:
                    _1127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1127] = return_data.size
                    mem[_1127 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _1158 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_1158 + 32 len 96] = code.data[4445 len 96]
                    stor6.length = mem[_1158]
                    if not mem[_1158]:
                        idx = sha3(6)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1571 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1586 = mem[_1571]
                                require mem[_1571] <= 4294967296
                                require mem[_1571] + 32 <= return_data.size
                                require mem[mem[_1571] + _1571] <= 4294967296 and mem[_1571] + (32 * mem[mem[_1571] + _1571]) + 32 <= return_data.size
                                mem[_1571 + ceil32(return_data.size)] = mem[mem[_1571] + _1571]
                                _1608 = mem[_1586 + _1571]
                                s = 0
                                while s < 32 * _1608:
                                    mem[_1571 + ceil32(return_data.size) + s + 32] = mem[_1586 + _1571 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1608) + _1571 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1721 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1728 = mem[_1721]
                                require mem[_1721] <= 4294967296
                                require mem[_1721] + 32 <= return_data.size
                                require mem[mem[_1721] + _1721] <= 4294967296 and mem[_1721] + (32 * mem[mem[_1721] + _1721]) + 32 <= return_data.size
                                mem[_1721 + ceil32(return_data.size)] = mem[mem[_1721] + _1721]
                                _1741 = mem[_1728 + _1721]
                                s = 0
                                while s < 32 * _1741:
                                    mem[_1721 + ceil32(return_data.size) + s + 32] = mem[_1728 + _1721 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1741) + _1721 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(6)
                        idx = _1158 + 32
                        while _1158 + (32 * mem[_1158]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_1158]) + 31) >> 5)
                        while sha3(6) + stor6.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require 0 < stor6.length
                        address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        require 1 < stor6.length
                        address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        require 2 < stor6.length
                        mem[0] = 6
                        address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
                        idx = 0
                        while idx < stor9:
                            require stor11 < stor12.length
                            mem[0] = 12
                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 68] = stor12[stor11]
                            mem[mem[64] + 100] = block.timestamp + 3600
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = stor6.length
                            if not stor6.length:
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                                if not ext_call.success:
                                _1684 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1692 = mem[_1684]
                                require mem[_1684] <= 4294967296
                                require mem[_1684] + 32 <= return_data.size
                                require mem[mem[_1684] + _1684] <= 4294967296 and mem[_1684] + (32 * mem[mem[_1684] + _1684]) + 32 <= return_data.size
                                mem[_1684 + ceil32(return_data.size)] = mem[mem[_1684] + _1684]
                                _1704 = mem[_1692 + _1684]
                                s = 0
                                while s < 32 * _1704:
                                    mem[_1684 + ceil32(return_data.size) + s + 32] = mem[_1692 + _1684 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1704) + _1684 + ceil32(return_data.size) + 32
                            else:
                                mem[0] = 6
                                mem[mem[64] + 164] = address(stor6.field_0)
                                s = mem[64] + 164
                                t = sha3(6)
                                while mem[64] + (32 * stor6.length) + 164 > s + 32:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(stor1.length)
                                call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor10 wei
                                     gas gas_remaining wei
                                    args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                                if not ext_call.success:
                                _1753 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1756 = mem[_1753]
                                require mem[_1753] <= 4294967296
                                require mem[_1753] + 32 <= return_data.size
                                require mem[mem[_1753] + _1753] <= 4294967296 and mem[_1753] + (32 * mem[mem[_1753] + _1753]) + 32 <= return_data.size
                                mem[_1753 + ceil32(return_data.size)] = mem[mem[_1753] + _1753]
                                _1763 = mem[_1756 + _1753]
                                s = 0
                                while s < 32 * _1763:
                                    mem[_1753 + ceil32(return_data.size) + s + 32] = mem[_1756 + _1753 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1763) + _1753 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
        _667 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_667 + 32 len 96] = code.data[4445 len 96]
        stor6.length = mem[_667]
        if not mem[_667]:
            idx = 0
            while stor6.length > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
            require 0 < stor6.length
            address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            require 1 < stor6.length
            address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            require 2 < stor6.length
            mem[0] = 6
            address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
            idx = 0
            while idx < stor9:
                require stor11 < stor12.length
                mem[0] = 12
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor8
                mem[mem[64] + 68] = stor12[stor11]
                mem[mem[64] + 100] = block.timestamp + 3600
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = stor6.length
                if not stor6.length:
                    require ext_code.size(stor1.length)
                    call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor10 wei
                         gas gas_remaining wei
                        args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                    if not ext_call.success:
                    _1133 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1148 = mem[_1133]
                    require mem[_1133] <= 4294967296
                    require mem[_1133] + 32 <= return_data.size
                    require mem[mem[_1133] + _1133] <= 4294967296 and mem[_1133] + (32 * mem[mem[_1133] + _1133]) + 32 <= return_data.size
                    mem[_1133 + ceil32(return_data.size)] = mem[mem[_1133] + _1133]
                    _1185 = mem[_1148 + _1133]
                    s = 0
                    while s < 32 * _1185:
                        mem[_1133 + ceil32(return_data.size) + s + 32] = mem[_1148 + _1133 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1185) + _1133 + ceil32(return_data.size) + 32
                else:
                    mem[0] = 6
                    mem[mem[64] + 164] = address(stor6.field_0)
                    s = mem[64] + 164
                    t = sha3(6)
                    while mem[64] + (32 * stor6.length) + 164 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor1.length)
                    call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor10 wei
                         gas gas_remaining wei
                        args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                    if not ext_call.success:
                    _1528 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1545 = mem[_1528]
                    require mem[_1528] <= 4294967296
                    require mem[_1528] + 32 <= return_data.size
                    require mem[mem[_1528] + _1528] <= 4294967296 and mem[_1528] + (32 * mem[mem[_1528] + _1528]) + 32 <= return_data.size
                    mem[_1528 + ceil32(return_data.size)] = mem[mem[_1528] + _1528]
                    _1580 = mem[_1545 + _1528]
                    s = 0
                    while s < 32 * _1580:
                        mem[_1528 + ceil32(return_data.size) + s + 32] = mem[_1545 + _1528 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1580) + _1528 + ceil32(return_data.size) + 32
                stor11++
                idx = idx + 1
                continue 
        else:
            t = 0
            s = _667 + 32
            while _667 + (32 * mem[_667]) + 32 > s:
                stor6[t].field_0 = mem[s + 12 len 20]
                t = t + 1
                s = s + 32
                continue 
            s = Mask(251, 0, (32 * mem[_667]) + 31) >> 5
            while stor6.length > s:
                stor6[s].field_0 = 0
                s = s + 1
                continue 
            require 0 < stor6.length
            address(stor6.field_0) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            require 1 < stor6.length
            address(stor6.field_256) = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            require 2 < stor6.length
            mem[0] = 6
            address(stor6.field_512) = 0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce
            idx = 0
            while idx < stor9:
                require stor11 < stor12.length
                mem[0] = 12
                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor8
                mem[mem[64] + 68] = stor12[stor11]
                mem[mem[64] + 100] = block.timestamp + 3600
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = stor6.length
                if not stor6.length:
                    require ext_code.size(stor1.length)
                    call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor10 wei
                         gas gas_remaining wei
                        args stor8, 128, stor12[stor11], block.timestamp + 3600, stor6.length
                    if not ext_call.success:
                    _1386 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1400 = mem[_1386]
                    require mem[_1386] <= 4294967296
                    require mem[_1386] + 32 <= return_data.size
                    require mem[mem[_1386] + _1386] <= 4294967296 and mem[_1386] + (32 * mem[mem[_1386] + _1386]) + 32 <= return_data.size
                    mem[_1386 + ceil32(return_data.size)] = mem[mem[_1386] + _1386]
                    _1427 = mem[_1400 + _1386]
                    s = 0
                    while s < 32 * _1427:
                        mem[_1386 + ceil32(return_data.size) + s + 32] = mem[_1400 + _1386 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1427) + _1386 + ceil32(return_data.size) + 32
                else:
                    mem[0] = 6
                    mem[mem[64] + 164] = address(stor6.field_0)
                    s = mem[64] + 164
                    t = sha3(6)
                    while mem[64] + (32 * stor6.length) + 164 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(stor1.length)
                    call stor1.length.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor10 wei
                         gas gas_remaining wei
                        args stor8, Array(len=stor6.length, data=mem[mem[64] + 164 len 32 * stor6.length]), stor12[stor11], block.timestamp + 3600
                    if not ext_call.success:
                    _1652 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1663 = mem[_1652]
                    require mem[_1652] <= 4294967296
                    require mem[_1652] + 32 <= return_data.size
                    require mem[mem[_1652] + _1652] <= 4294967296 and mem[_1652] + (32 * mem[mem[_1652] + _1652]) + 32 <= return_data.size
                    mem[_1652 + ceil32(return_data.size)] = mem[mem[_1652] + _1652]
                    _1687 = mem[_1663 + _1652]
                    s = 0
                    while s < 32 * _1687:
                        mem[_1652 + ceil32(return_data.size) + s + 32] = mem[_1663 + _1652 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1687) + _1652 + ceil32(return_data.size) + 32
                stor11++
                idx = idx + 1
                continue 
}



}
