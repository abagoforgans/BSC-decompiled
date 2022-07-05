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
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = code.data[4496 len 64]
        stor5.length = 2
        s = 0
        idx = 128
        while 192 > idx:
            stor5[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
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
                    _680 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _685 = mem[_680]
                    require mem[_680] <= 4294967296
                    require mem[_680] + 32 <= return_data.size
                    require mem[mem[_680] + _680] <= 4294967296 and mem[_680] + (32 * mem[mem[_680] + _680]) + 32 <= return_data.size
                    mem[_680 + ceil32(return_data.size)] = mem[mem[_680] + _680]
                    _697 = mem[_685 + _680]
                    s = 0
                    while s < 32 * _697:
                        mem[_680 + ceil32(return_data.size) + s + 32] = mem[_685 + _680 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _697) + _680 + ceil32(return_data.size) + 32
                    stor11++
                    idx = idx + 1
                    continue 
                if not return_data.size:
                    _695 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_695 + 32 len 96] = code.data[4496 len 96]
                    stor6.length = mem[_695]
                    if not mem[_695]:
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
                                _1141 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1159 = mem[_1141]
                                require mem[_1141] <= 4294967296
                                require mem[_1141] + 32 <= return_data.size
                                require mem[mem[_1141] + _1141] <= 4294967296 and mem[_1141] + (32 * mem[mem[_1141] + _1141]) + 32 <= return_data.size
                                mem[_1141 + ceil32(return_data.size)] = mem[mem[_1141] + _1141]
                                _1190 = mem[_1159 + _1141]
                                s = 0
                                while s < 32 * _1190:
                                    mem[_1141 + ceil32(return_data.size) + s + 32] = mem[_1159 + _1141 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1190) + _1141 + ceil32(return_data.size) + 32
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
                                _1525 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1539 = mem[_1525]
                                require mem[_1525] <= 4294967296
                                require mem[_1525] + 32 <= return_data.size
                                require mem[mem[_1525] + _1525] <= 4294967296 and mem[_1525] + (32 * mem[mem[_1525] + _1525]) + 32 <= return_data.size
                                mem[_1525 + ceil32(return_data.size)] = mem[mem[_1525] + _1525]
                                _1575 = mem[_1539 + _1525]
                                s = 0
                                while s < 32 * _1575:
                                    mem[_1525 + ceil32(return_data.size) + s + 32] = mem[_1539 + _1525 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1575) + _1525 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(6)
                        idx = _695 + 32
                        while _695 + (32 * mem[_695]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_695]) + 31) >> 5)
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
                                _1394 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1406 = mem[_1394]
                                require mem[_1394] <= 4294967296
                                require mem[_1394] + 32 <= return_data.size
                                require mem[mem[_1394] + _1394] <= 4294967296 and mem[_1394] + (32 * mem[mem[_1394] + _1394]) + 32 <= return_data.size
                                mem[_1394 + ceil32(return_data.size)] = mem[mem[_1394] + _1394]
                                _1430 = mem[_1406 + _1394]
                                s = 0
                                while s < 32 * _1430:
                                    mem[_1394 + ceil32(return_data.size) + s + 32] = mem[_1406 + _1394 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1430) + _1394 + ceil32(return_data.size) + 32
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
                                _1661 = mem[_1653]
                                require mem[_1653] <= 4294967296
                                require mem[_1653] + 32 <= return_data.size
                                require mem[mem[_1653] + _1653] <= 4294967296 and mem[_1653] + (32 * mem[mem[_1653] + _1653]) + 32 <= return_data.size
                                mem[_1653 + ceil32(return_data.size)] = mem[mem[_1653] + _1653]
                                _1686 = mem[_1661 + _1653]
                                s = 0
                                while s < 32 * _1686:
                                    mem[_1653 + ceil32(return_data.size) + s + 32] = mem[_1661 + _1653 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1686) + _1653 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                else:
                    _687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_687] = return_data.size
                    mem[_687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _696 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_696 + 32 len 96] = code.data[4496 len 96]
                    stor6.length = mem[_696]
                    if not mem[_696]:
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
                                _1143 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1162 = mem[_1143]
                                require mem[_1143] <= 4294967296
                                require mem[_1143] + 32 <= return_data.size
                                require mem[mem[_1143] + _1143] <= 4294967296 and mem[_1143] + (32 * mem[mem[_1143] + _1143]) + 32 <= return_data.size
                                mem[_1143 + ceil32(return_data.size)] = mem[mem[_1143] + _1143]
                                _1191 = mem[_1162 + _1143]
                                s = 0
                                while s < 32 * _1191:
                                    mem[_1143 + ceil32(return_data.size) + s + 32] = mem[_1162 + _1143 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1191) + _1143 + ceil32(return_data.size) + 32
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
                                _1526 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1541 = mem[_1526]
                                require mem[_1526] <= 4294967296
                                require mem[_1526] + 32 <= return_data.size
                                require mem[mem[_1526] + _1526] <= 4294967296 and mem[_1526] + (32 * mem[mem[_1526] + _1526]) + 32 <= return_data.size
                                mem[_1526 + ceil32(return_data.size)] = mem[mem[_1526] + _1526]
                                _1576 = mem[_1541 + _1526]
                                s = 0
                                while s < 32 * _1576:
                                    mem[_1526 + ceil32(return_data.size) + s + 32] = mem[_1541 + _1526 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1576) + _1526 + ceil32(return_data.size) + 32
                            stor11++
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(6)
                        idx = _696 + 32
                        while _696 + (32 * mem[_696]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_696]) + 31) >> 5)
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
                                _1395 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1408 = mem[_1395]
                                require mem[_1395] <= 4294967296
                                require mem[_1395] + 32 <= return_data.size
                                require mem[mem[_1395] + _1395] <= 4294967296 and mem[_1395] + (32 * mem[mem[_1395] + _1395]) + 32 <= return_data.size
                                mem[_1395 + ceil32(return_data.size)] = mem[mem[_1395] + _1395]
                                _1431 = mem[_1408 + _1395]
                                s = 0
                                while s < 32 * _1431:
                                    mem[_1395 + ceil32(return_data.size) + s + 32] = mem[_1408 + _1395 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1431) + _1395 + ceil32(return_data.size) + 32
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
                                _1663 = mem[_1654]
                                require mem[_1654] <= 4294967296
                                require mem[_1654] + 32 <= return_data.size
                                require mem[mem[_1654] + _1654] <= 4294967296 and mem[_1654] + (32 * mem[mem[_1654] + _1654]) + 32 <= return_data.size
                                mem[_1654 + ceil32(return_data.size)] = mem[mem[_1654] + _1654]
                                _1687 = mem[_1663 + _1654]
                                s = 0
                                while s < 32 * _1687:
                                    mem[_1654 + ceil32(return_data.size) + s + 32] = mem[_1663 + _1654 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1687) + _1654 + ceil32(return_data.size) + 32
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
                    _1100 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1113 = mem[_1100]
                    require mem[_1100] <= 4294967296
                    require mem[_1100] + 32 <= return_data.size
                    require mem[mem[_1100] + _1100] <= 4294967296 and mem[_1100] + (32 * mem[mem[_1100] + _1100]) + 32 <= return_data.size
                    mem[_1100 + ceil32(return_data.size)] = mem[mem[_1100] + _1100]
                    _1147 = mem[_1113 + _1100]
                    s = 0
                    while s < 32 * _1147:
                        mem[_1100 + ceil32(return_data.size) + s + 32] = mem[_1113 + _1100 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1147) + _1100 + ceil32(return_data.size) + 32
                    stor11++
                    idx = idx + 1
                    continue 
                if not return_data.size:
                    _1145 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_1145 + 32 len 96] = code.data[4496 len 96]
                    stor6.length = mem[_1145]
                    if not mem[_1145]:
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
                                _1577 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1585 = mem[_1577]
                                require mem[_1577] <= 4294967296
                                require mem[_1577] + 32 <= return_data.size
                                require mem[mem[_1577] + _1577] <= 4294967296 and mem[_1577] + (32 * mem[mem[_1577] + _1577]) + 32 <= return_data.size
                                mem[_1577 + ceil32(return_data.size)] = mem[mem[_1577] + _1577]
                                _1607 = mem[_1585 + _1577]
                                s = 0
                                while s < 32 * _1607:
                                    mem[_1577 + ceil32(return_data.size) + s + 32] = mem[_1585 + _1577 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1607) + _1577 + ceil32(return_data.size) + 32
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
                        idx = _1145 + 32
                        while _1145 + (32 * mem[_1145]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_1145]) + 31) >> 5)
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
                                _1688 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1690 = mem[_1688]
                                require mem[_1688] <= 4294967296
                                require mem[_1688] + 32 <= return_data.size
                                require mem[mem[_1688] + _1688] <= 4294967296 and mem[_1688] + (32 * mem[mem[_1688] + _1688]) + 32 <= return_data.size
                                mem[_1688 + ceil32(return_data.size)] = mem[mem[_1688] + _1688]
                                _1703 = mem[_1690 + _1688]
                                s = 0
                                while s < 32 * _1703:
                                    mem[_1688 + ceil32(return_data.size) + s + 32] = mem[_1690 + _1688 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1703) + _1688 + ceil32(return_data.size) + 32
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
                    _1146 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_1146 + 32 len 96] = code.data[4496 len 96]
                    stor6.length = mem[_1146]
                    if not mem[_1146]:
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
                                _1579 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1588 = mem[_1579]
                                require mem[_1579] <= 4294967296
                                require mem[_1579] + 32 <= return_data.size
                                require mem[mem[_1579] + _1579] <= 4294967296 and mem[_1579] + (32 * mem[mem[_1579] + _1579]) + 32 <= return_data.size
                                mem[_1579 + ceil32(return_data.size)] = mem[mem[_1579] + _1579]
                                _1608 = mem[_1588 + _1579]
                                s = 0
                                while s < 32 * _1608:
                                    mem[_1579 + ceil32(return_data.size) + s + 32] = mem[_1588 + _1579 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1608) + _1579 + ceil32(return_data.size) + 32
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
                        idx = _1146 + 32
                        while _1146 + (32 * mem[_1146]) + 32 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(6) + (Mask(251, 0, (32 * mem[_1146]) + 31) >> 5)
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
                                _1689 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1692 = mem[_1689]
                                require mem[_1689] <= 4294967296
                                require mem[_1689] + 32 <= return_data.size
                                require mem[mem[_1689] + _1689] <= 4294967296 and mem[_1689] + (32 * mem[mem[_1689] + _1689]) + 32 <= return_data.size
                                mem[_1689 + ceil32(return_data.size)] = mem[mem[_1689] + _1689]
                                _1704 = mem[_1692 + _1689]
                                s = 0
                                while s < 32 * _1704:
                                    mem[_1689 + ceil32(return_data.size) + s + 32] = mem[_1692 + _1689 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1704) + _1689 + ceil32(return_data.size) + 32
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
        mem[_667 + 32 len 96] = code.data[4496 len 96]
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
                    _1139 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1156 = mem[_1139]
                    require mem[_1139] <= 4294967296
                    require mem[_1139] + 32 <= return_data.size
                    require mem[mem[_1139] + _1139] <= 4294967296 and mem[_1139] + (32 * mem[mem[_1139] + _1139]) + 32 <= return_data.size
                    mem[_1139 + ceil32(return_data.size)] = mem[mem[_1139] + _1139]
                    _1189 = mem[_1156 + _1139]
                    s = 0
                    while s < 32 * _1189:
                        mem[_1139 + ceil32(return_data.size) + s + 32] = mem[_1156 + _1139 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1189) + _1139 + ceil32(return_data.size) + 32
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
                    _1524 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1537 = mem[_1524]
                    require mem[_1524] <= 4294967296
                    require mem[_1524] + 32 <= return_data.size
                    require mem[mem[_1524] + _1524] <= 4294967296 and mem[_1524] + (32 * mem[mem[_1524] + _1524]) + 32 <= return_data.size
                    mem[_1524 + ceil32(return_data.size)] = mem[mem[_1524] + _1524]
                    _1574 = mem[_1537 + _1524]
                    s = 0
                    while s < 32 * _1574:
                        mem[_1524 + ceil32(return_data.size) + s + 32] = mem[_1537 + _1524 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1574) + _1524 + ceil32(return_data.size) + 32
                stor11++
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = _667 + 32
            while _667 + (32 * mem[_667]) + 32 > idx:
                stor6[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[_667]) + 31) >> 5
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
                    _1393 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1404 = mem[_1393]
                    require mem[_1393] <= 4294967296
                    require mem[_1393] + 32 <= return_data.size
                    require mem[mem[_1393] + _1393] <= 4294967296 and mem[_1393] + (32 * mem[mem[_1393] + _1393]) + 32 <= return_data.size
                    mem[_1393 + ceil32(return_data.size)] = mem[mem[_1393] + _1393]
                    _1429 = mem[_1404 + _1393]
                    s = 0
                    while s < 32 * _1429:
                        mem[_1393 + ceil32(return_data.size) + s + 32] = mem[_1404 + _1393 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1429) + _1393 + ceil32(return_data.size) + 32
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
                    _1659 = mem[_1652]
                    require mem[_1652] <= 4294967296
                    require mem[_1652] + 32 <= return_data.size
                    require mem[mem[_1652] + _1652] <= 4294967296 and mem[_1652] + (32 * mem[mem[_1652] + _1652]) + 32 <= return_data.size
                    mem[_1652 + ceil32(return_data.size)] = mem[mem[_1652] + _1652]
                    _1685 = mem[_1659 + _1652]
                    s = 0
                    while s < 32 * _1685:
                        mem[_1652 + ceil32(return_data.size) + s + 32] = mem[_1659 + _1652 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1685) + _1652 + ceil32(return_data.size) + 32
                stor11++
                idx = idx + 1
                continue 
}



}
