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
        mem[128 len 64] = code.data[4534 len 64]
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
            if eth.balance(this.address) <= 0:
                _863 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_863 + 32 len 96] = code.data[4534 len 96]
                stor6.length = mem[_863]
                if not mem[_863]:
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
                        if eth.balance(this.address) <= 0:
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
                            _1468 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1484 = mem[_1468]
                            require mem[_1468] <= 4294967296
                            require mem[_1468] + 32 <= return_data.size
                            require mem[mem[_1468] + _1468] <= 4294967296 and mem[_1468] + (32 * mem[mem[_1468] + _1468]) + 32 <= return_data.size
                            mem[_1468 + ceil32(return_data.size)] = mem[mem[_1468] + _1468]
                            _1522 = mem[_1484 + _1468]
                            s = 0
                            while s < 32 * _1522:
                                mem[_1468 + ceil32(return_data.size) + s + 32] = mem[_1484 + _1468 + s + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _1522) + _1468 + ceil32(return_data.size) + 32
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
                            _1895 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1908 = mem[_1895]
                            require mem[_1895] <= 4294967296
                            require mem[_1895] + 32 <= return_data.size
                            require mem[mem[_1895] + _1895] <= 4294967296 and mem[_1895] + (32 * mem[mem[_1895] + _1895]) + 32 <= return_data.size
                            mem[_1895 + ceil32(return_data.size)] = mem[mem[_1895] + _1895]
                            _1953 = mem[_1908 + _1895]
                            s = 0
                            while s < 32 * _1953:
                                mem[_1895 + ceil32(return_data.size) + s + 32] = mem[_1908 + _1895 + s + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _1953) + _1895 + ceil32(return_data.size) + 32
                        stor11++
                        idx = idx + 1
                        continue 
                else:
                    t = sha3(6)
                    s = _863 + 32
                    while _863 + (32 * mem[_863]) + 32 > s:
                        stor[t] = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(6) + (Mask(251, 0, (32 * mem[_863]) + 31) >> 5)
                    while sha3(6) + stor6.length > s:
                        stor[s] = 0
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
                        if eth.balance(this.address) <= 0:
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
                            _1755 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1770 = mem[_1755]
                            require mem[_1755] <= 4294967296
                            require mem[_1755] + 32 <= return_data.size
                            require mem[mem[_1755] + _1755] <= 4294967296 and mem[_1755] + (32 * mem[mem[_1755] + _1755]) + 32 <= return_data.size
                            mem[_1755 + ceil32(return_data.size)] = mem[mem[_1755] + _1755]
                            _1795 = mem[_1770 + _1755]
                            s = 0
                            while s < 32 * _1795:
                                mem[_1755 + ceil32(return_data.size) + s + 32] = mem[_1770 + _1755 + s + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _1795) + _1755 + ceil32(return_data.size) + 32
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
                            _2039 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2048 = mem[_2039]
                            require mem[_2039] <= 4294967296
                            require mem[_2039] + 32 <= return_data.size
                            require mem[mem[_2039] + _2039] <= 4294967296 and mem[_2039] + (32 * mem[mem[_2039] + _2039]) + 32 <= return_data.size
                            mem[_2039 + ceil32(return_data.size)] = mem[mem[_2039] + _2039]
                            _2077 = mem[_2048 + _2039]
                            s = 0
                            while s < 32 * _2077:
                                mem[_2039 + ceil32(return_data.size) + s + 32] = mem[_2048 + _2039 + s + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2077) + _2039 + ceil32(return_data.size) + 32
                        stor11++
                        idx = idx + 1
                        continue 
            else:
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
                        _883 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _884 = mem[_883]
                        require mem[_883] <= 4294967296
                        require mem[_883] + 32 <= return_data.size
                        require mem[mem[_883] + _883] <= 4294967296 and mem[_883] + (32 * mem[mem[_883] + _883]) + 32 <= return_data.size
                        mem[_883 + ceil32(return_data.size)] = mem[mem[_883] + _883]
                        _903 = mem[_884 + _883]
                        s = 0
                        while s < 32 * _903:
                            mem[_883 + ceil32(return_data.size) + s + 32] = mem[_884 + _883 + s + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _903) + _883 + ceil32(return_data.size) + 32
                        stor11++
                        idx = idx + 1
                        continue 
                    if not return_data.size:
                        _901 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_901 + 32 len 96] = code.data[4534 len 96]
                        stor6.length = mem[_901]
                        if not mem[_901]:
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
                                if eth.balance(this.address) <= 0:
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
                                    _1470 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1486 = mem[_1470]
                                    require mem[_1470] <= 4294967296
                                    require mem[_1470] + 32 <= return_data.size
                                    require mem[mem[_1470] + _1470] <= 4294967296 and mem[_1470] + (32 * mem[mem[_1470] + _1470]) + 32 <= return_data.size
                                    mem[_1470 + ceil32(return_data.size)] = mem[mem[_1470] + _1470]
                                    _1523 = mem[_1486 + _1470]
                                    s = 0
                                    while s < 32 * _1523:
                                        mem[_1470 + ceil32(return_data.size) + s + 32] = mem[_1486 + _1470 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1523) + _1470 + ceil32(return_data.size) + 32
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
                                    _1896 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1910 = mem[_1896]
                                    require mem[_1896] <= 4294967296
                                    require mem[_1896] + 32 <= return_data.size
                                    require mem[mem[_1896] + _1896] <= 4294967296 and mem[_1896] + (32 * mem[mem[_1896] + _1896]) + 32 <= return_data.size
                                    mem[_1896 + ceil32(return_data.size)] = mem[mem[_1896] + _1896]
                                    _1954 = mem[_1910 + _1896]
                                    s = 0
                                    while s < 32 * _1954:
                                        mem[_1896 + ceil32(return_data.size) + s + 32] = mem[_1910 + _1896 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1954) + _1896 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(6)
                            idx = _901 + 32
                            while _901 + (32 * mem[_901]) + 32 > idx:
                                stor[s] = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(6) + (Mask(251, 0, (32 * mem[_901]) + 31) >> 5)
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
                                if eth.balance(this.address) <= 0:
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
                                    _1756 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1772 = mem[_1756]
                                    require mem[_1756] <= 4294967296
                                    require mem[_1756] + 32 <= return_data.size
                                    require mem[mem[_1756] + _1756] <= 4294967296 and mem[_1756] + (32 * mem[mem[_1756] + _1756]) + 32 <= return_data.size
                                    mem[_1756 + ceil32(return_data.size)] = mem[mem[_1756] + _1756]
                                    _1796 = mem[_1772 + _1756]
                                    s = 0
                                    while s < 32 * _1796:
                                        mem[_1756 + ceil32(return_data.size) + s + 32] = mem[_1772 + _1756 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1796) + _1756 + ceil32(return_data.size) + 32
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
                                    _2040 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2050 = mem[_2040]
                                    require mem[_2040] <= 4294967296
                                    require mem[_2040] + 32 <= return_data.size
                                    require mem[mem[_2040] + _2040] <= 4294967296 and mem[_2040] + (32 * mem[mem[_2040] + _2040]) + 32 <= return_data.size
                                    mem[_2040 + ceil32(return_data.size)] = mem[mem[_2040] + _2040]
                                    _2078 = mem[_2050 + _2040]
                                    s = 0
                                    while s < 32 * _2078:
                                        mem[_2040 + ceil32(return_data.size) + s + 32] = mem[_2050 + _2040 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2078) + _2040 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
                    else:
                        _890 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_890] = return_data.size
                        mem[_890 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _902 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_902 + 32 len 96] = code.data[4534 len 96]
                        stor6.length = mem[_902]
                        if not mem[_902]:
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
                                if eth.balance(this.address) <= 0:
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
                                    _1472 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1488 = mem[_1472]
                                    require mem[_1472] <= 4294967296
                                    require mem[_1472] + 32 <= return_data.size
                                    require mem[mem[_1472] + _1472] <= 4294967296 and mem[_1472] + (32 * mem[mem[_1472] + _1472]) + 32 <= return_data.size
                                    mem[_1472 + ceil32(return_data.size)] = mem[mem[_1472] + _1472]
                                    _1524 = mem[_1488 + _1472]
                                    s = 0
                                    while s < 32 * _1524:
                                        mem[_1472 + ceil32(return_data.size) + s + 32] = mem[_1488 + _1472 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1524) + _1472 + ceil32(return_data.size) + 32
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
                                    _1897 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1912 = mem[_1897]
                                    require mem[_1897] <= 4294967296
                                    require mem[_1897] + 32 <= return_data.size
                                    require mem[mem[_1897] + _1897] <= 4294967296 and mem[_1897] + (32 * mem[mem[_1897] + _1897]) + 32 <= return_data.size
                                    mem[_1897 + ceil32(return_data.size)] = mem[mem[_1897] + _1897]
                                    _1955 = mem[_1912 + _1897]
                                    s = 0
                                    while s < 32 * _1955:
                                        mem[_1897 + ceil32(return_data.size) + s + 32] = mem[_1912 + _1897 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1955) + _1897 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(6)
                            idx = _902 + 32
                            while _902 + (32 * mem[_902]) + 32 > idx:
                                stor[s] = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(6) + (Mask(251, 0, (32 * mem[_902]) + 31) >> 5)
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
                                if eth.balance(this.address) <= 0:
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
                                    _1757 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1774 = mem[_1757]
                                    require mem[_1757] <= 4294967296
                                    require mem[_1757] + 32 <= return_data.size
                                    require mem[mem[_1757] + _1757] <= 4294967296 and mem[_1757] + (32 * mem[mem[_1757] + _1757]) + 32 <= return_data.size
                                    mem[_1757 + ceil32(return_data.size)] = mem[mem[_1757] + _1757]
                                    _1797 = mem[_1774 + _1757]
                                    s = 0
                                    while s < 32 * _1797:
                                        mem[_1757 + ceil32(return_data.size) + s + 32] = mem[_1774 + _1757 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1797) + _1757 + ceil32(return_data.size) + 32
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
                                    _2041 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2052 = mem[_2041]
                                    require mem[_2041] <= 4294967296
                                    require mem[_2041] + 32 <= return_data.size
                                    require mem[mem[_2041] + _2041] <= 4294967296 and mem[_2041] + (32 * mem[mem[_2041] + _2041]) + 32 <= return_data.size
                                    mem[_2041 + ceil32(return_data.size)] = mem[mem[_2041] + _2041]
                                    _2079 = mem[_2052 + _2041]
                                    s = 0
                                    while s < 32 * _2079:
                                        mem[_2041 + ceil32(return_data.size) + s + 32] = mem[_2052 + _2041 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2079) + _2041 + ceil32(return_data.size) + 32
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
                        _1408 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1409 = mem[_1408]
                        require mem[_1408] <= 4294967296
                        require mem[_1408] + 32 <= return_data.size
                        require mem[mem[_1408] + _1408] <= 4294967296 and mem[_1408] + (32 * mem[mem[_1408] + _1408]) + 32 <= return_data.size
                        mem[_1408 + ceil32(return_data.size)] = mem[mem[_1408] + _1408]
                        _1459 = mem[_1409 + _1408]
                        s = 0
                        while s < 32 * _1459:
                            mem[_1408 + ceil32(return_data.size) + s + 32] = mem[_1409 + _1408 + s + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1459) + _1408 + ceil32(return_data.size) + 32
                        stor11++
                        idx = idx + 1
                        continue 
                    if not return_data.size:
                        _1457 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_1457 + 32 len 96] = code.data[4534 len 96]
                        stor6.length = mem[_1457]
                        if not mem[_1457]:
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
                                if eth.balance(this.address) <= 0:
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
                                    _1960 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1976 = mem[_1960]
                                    require mem[_1960] <= 4294967296
                                    require mem[_1960] + 32 <= return_data.size
                                    require mem[mem[_1960] + _1960] <= 4294967296 and mem[_1960] + (32 * mem[mem[_1960] + _1960]) + 32 <= return_data.size
                                    mem[_1960 + ceil32(return_data.size)] = mem[mem[_1960] + _1960]
                                    _1990 = mem[_1976 + _1960]
                                    s = 0
                                    while s < 32 * _1990:
                                        mem[_1960 + ceil32(return_data.size) + s + 32] = mem[_1976 + _1960 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1990) + _1960 + ceil32(return_data.size) + 32
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
                                    _2114 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2120 = mem[_2114]
                                    require mem[_2114] <= 4294967296
                                    require mem[_2114] + 32 <= return_data.size
                                    require mem[mem[_2114] + _2114] <= 4294967296 and mem[_2114] + (32 * mem[mem[_2114] + _2114]) + 32 <= return_data.size
                                    mem[_2114 + ceil32(return_data.size)] = mem[mem[_2114] + _2114]
                                    _2134 = mem[_2120 + _2114]
                                    s = 0
                                    while s < 32 * _2134:
                                        mem[_2114 + ceil32(return_data.size) + s + 32] = mem[_2120 + _2114 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2134) + _2114 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(6)
                            idx = _1457 + 32
                            while _1457 + (32 * mem[_1457]) + 32 > idx:
                                stor[s] = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(6) + (Mask(251, 0, (32 * mem[_1457]) + 31) >> 5)
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
                                if eth.balance(this.address) <= 0:
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
                                    _2080 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2088 = mem[_2080]
                                    require mem[_2080] <= 4294967296
                                    require mem[_2080] + 32 <= return_data.size
                                    require mem[mem[_2080] + _2080] <= 4294967296 and mem[_2080] + (32 * mem[mem[_2080] + _2080]) + 32 <= return_data.size
                                    mem[_2080 + ceil32(return_data.size)] = mem[mem[_2080] + _2080]
                                    _2096 = mem[_2088 + _2080]
                                    s = 0
                                    while s < 32 * _2096:
                                        mem[_2080 + ceil32(return_data.size) + s + 32] = mem[_2088 + _2080 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2096) + _2080 + ceil32(return_data.size) + 32
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
                                    _2146 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2148 = mem[_2146]
                                    require mem[_2146] <= 4294967296
                                    require mem[_2146] + 32 <= return_data.size
                                    require mem[mem[_2146] + _2146] <= 4294967296 and mem[_2146] + (32 * mem[mem[_2146] + _2146]) + 32 <= return_data.size
                                    mem[_2146 + ceil32(return_data.size)] = mem[mem[_2146] + _2146]
                                    _2156 = mem[_2148 + _2146]
                                    s = 0
                                    while s < 32 * _2156:
                                        mem[_2146 + ceil32(return_data.size) + s + 32] = mem[_2148 + _2146 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2156) + _2146 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
                    else:
                        _1427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1427] = return_data.size
                        mem[_1427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _1458 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_1458 + 32 len 96] = code.data[4534 len 96]
                        stor6.length = mem[_1458]
                        if not mem[_1458]:
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
                                if eth.balance(this.address) <= 0:
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
                                    _1962 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1978 = mem[_1962]
                                    require mem[_1962] <= 4294967296
                                    require mem[_1962] + 32 <= return_data.size
                                    require mem[mem[_1962] + _1962] <= 4294967296 and mem[_1962] + (32 * mem[mem[_1962] + _1962]) + 32 <= return_data.size
                                    mem[_1962 + ceil32(return_data.size)] = mem[mem[_1962] + _1962]
                                    _1991 = mem[_1978 + _1962]
                                    s = 0
                                    while s < 32 * _1991:
                                        mem[_1962 + ceil32(return_data.size) + s + 32] = mem[_1978 + _1962 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _1991) + _1962 + ceil32(return_data.size) + 32
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
                                    _2115 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2122 = mem[_2115]
                                    require mem[_2115] <= 4294967296
                                    require mem[_2115] + 32 <= return_data.size
                                    require mem[mem[_2115] + _2115] <= 4294967296 and mem[_2115] + (32 * mem[mem[_2115] + _2115]) + 32 <= return_data.size
                                    mem[_2115 + ceil32(return_data.size)] = mem[mem[_2115] + _2115]
                                    _2135 = mem[_2122 + _2115]
                                    s = 0
                                    while s < 32 * _2135:
                                        mem[_2115 + ceil32(return_data.size) + s + 32] = mem[_2122 + _2115 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2135) + _2115 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(6)
                            idx = _1458 + 32
                            while _1458 + (32 * mem[_1458]) + 32 > idx:
                                stor[s] = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(6) + (Mask(251, 0, (32 * mem[_1458]) + 31) >> 5)
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
                                if eth.balance(this.address) <= 0:
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
                                    _2081 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2090 = mem[_2081]
                                    require mem[_2081] <= 4294967296
                                    require mem[_2081] + 32 <= return_data.size
                                    require mem[mem[_2081] + _2081] <= 4294967296 and mem[_2081] + (32 * mem[mem[_2081] + _2081]) + 32 <= return_data.size
                                    mem[_2081 + ceil32(return_data.size)] = mem[mem[_2081] + _2081]
                                    _2097 = mem[_2090 + _2081]
                                    s = 0
                                    while s < 32 * _2097:
                                        mem[_2081 + ceil32(return_data.size) + s + 32] = mem[_2090 + _2081 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2097) + _2081 + ceil32(return_data.size) + 32
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
                                    _2147 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2150 = mem[_2147]
                                    require mem[_2147] <= 4294967296
                                    require mem[_2147] + 32 <= return_data.size
                                    require mem[mem[_2147] + _2147] <= 4294967296 and mem[_2147] + (32 * mem[mem[_2147] + _2147]) + 32 <= return_data.size
                                    mem[_2147 + ceil32(return_data.size)] = mem[mem[_2147] + _2147]
                                    _2157 = mem[_2150 + _2147]
                                    s = 0
                                    while s < 32 * _2157:
                                        mem[_2147 + ceil32(return_data.size) + s + 32] = mem[_2150 + _2147 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2157) + _2147 + ceil32(return_data.size) + 32
                                stor11++
                                idx = idx + 1
                                continue 
        _860 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_860 + 32 len 96] = code.data[4534 len 96]
        stor6.length = mem[_860]
        if not mem[_860]:
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
                if eth.balance(this.address) <= 0:
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
                    _1466 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1482 = mem[_1466]
                    require mem[_1466] <= 4294967296
                    require mem[_1466] + 32 <= return_data.size
                    require mem[mem[_1466] + _1466] <= 4294967296 and mem[_1466] + (32 * mem[mem[_1466] + _1466]) + 32 <= return_data.size
                    mem[_1466 + ceil32(return_data.size)] = mem[mem[_1466] + _1466]
                    _1521 = mem[_1482 + _1466]
                    s = 0
                    while s < 32 * _1521:
                        mem[_1466 + ceil32(return_data.size) + s + 32] = mem[_1482 + _1466 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1521) + _1466 + ceil32(return_data.size) + 32
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
                    _1894 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1906 = mem[_1894]
                    require mem[_1894] <= 4294967296
                    require mem[_1894] + 32 <= return_data.size
                    require mem[mem[_1894] + _1894] <= 4294967296 and mem[_1894] + (32 * mem[mem[_1894] + _1894]) + 32 <= return_data.size
                    mem[_1894 + ceil32(return_data.size)] = mem[mem[_1894] + _1894]
                    _1952 = mem[_1906 + _1894]
                    s = 0
                    while s < 32 * _1952:
                        mem[_1894 + ceil32(return_data.size) + s + 32] = mem[_1906 + _1894 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1952) + _1894 + ceil32(return_data.size) + 32
                stor11++
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = _860 + 32
            while _860 + (32 * mem[_860]) + 32 > idx:
                stor6[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[_860]) + 31) >> 5
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
                if eth.balance(this.address) <= 0:
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
                    _1754 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1768 = mem[_1754]
                    require mem[_1754] <= 4294967296
                    require mem[_1754] + 32 <= return_data.size
                    require mem[mem[_1754] + _1754] <= 4294967296 and mem[_1754] + (32 * mem[mem[_1754] + _1754]) + 32 <= return_data.size
                    mem[_1754 + ceil32(return_data.size)] = mem[mem[_1754] + _1754]
                    _1794 = mem[_1768 + _1754]
                    s = 0
                    while s < 32 * _1794:
                        mem[_1754 + ceil32(return_data.size) + s + 32] = mem[_1768 + _1754 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1794) + _1754 + ceil32(return_data.size) + 32
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
                    _2038 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2046 = mem[_2038]
                    require mem[_2038] <= 4294967296
                    require mem[_2038] + 32 <= return_data.size
                    require mem[mem[_2038] + _2038] <= 4294967296 and mem[_2038] + (32 * mem[mem[_2038] + _2038]) + 32 <= return_data.size
                    mem[_2038 + ceil32(return_data.size)] = mem[mem[_2038] + _2038]
                    _2076 = mem[_2046 + _2038]
                    s = 0
                    while s < 32 * _2076:
                        mem[_2038 + ceil32(return_data.size) + s + 32] = mem[_2046 + _2038 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2076) + _2038 + ceil32(return_data.size) + 32
                stor11++
                idx = idx + 1
                continue 
}



}
