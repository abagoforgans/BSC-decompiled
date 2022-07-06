contract main {




// =====================  Runtime code  =====================


#
#  - sub_d7f2b75e(?)
#
address owner;
array of uint256 stor1;
uint8 productID; offset 160
address sub_dc3aaab5Address;
uint256 sub_24f98a4a;
address oracleAddress;
array of struct stor5;
mapping of struct stor6;
mapping of struct stor7;

function getTokenAddress() {
    return address(stor1.length)
}

function sub_24f98a4a(?) {
    return sub_24f98a4a
}

function owner() {
    return owner
}

function oracleAddress() {
    return oracleAddress
}

function sub_dc3aaab5(?) {
    return sub_dc3aaab5Address
}

function productID() {
    return productID
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateSwapCreationGasLoadAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_24f98a4a = arg1
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_9e9f695d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    productID = uint8(arg1)
}

function sub_7c0bf7bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc3aaab5Address = address(arg1)
}

function sub_4bc10ccb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_daafcd95(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = address(arg1)
    if not arg2:
    if arg4 > 0:
        if arg3 > !arg4:
            revert with 0, 17
        if var39001 > !arg3:
            revert with 0, 17
        if var43001 >= arg3 + arg4:
        if var45002 >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        mem[96] = 0x4c69c00f00000000000000000000000000000000000000000000000000000000
        mem[100] = oracleAddress
        require ext_code.size(stor5[var47001].field_1024)
        call var49002.mem[var49004 len 4] with:
             gas gas_remaining wei
            args mem[var49004 + 4 len var49005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var53001 == -1:
            revert with 0, 17
        if arg3 > !arg4:
            revert with 0, 17
        if var67001 > !arg3:
            revert with 0, 17
        # nil
    else:
        if arg3 > -51:
            revert with 0, 17
        if var39001 > !arg3:
            revert with 0, 17
        if var43001 >= arg3 + 50:
        if var45002 >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        mem[96] = 0x4c69c00f00000000000000000000000000000000000000000000000000000000
        mem[100] = oracleAddress
        require ext_code.size(stor5[var47001].field_1024)
        call var49002.mem[var49004 len 4] with:
             gas gas_remaining wei
            args mem[var49004 + 4 len var49005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var53001 == -1:
            revert with 0, 17
        if arg3 > -51:
            revert with 0, 17
        if var67001 > !arg3:
            revert with 0, 17
        # nil
}

function sub_50f49535(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6[arg1].field_1280:
        if stor6[arg1].field_1280 == uint255(stor6[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1].field_1280:
            if stor6[arg1].field_1280 == uint255(stor6[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_1280):
                if 31 >= uint255(stor6[arg1].field_1280) * 0.5:
                    mem[128] = 256 * stor6[arg1].field_1288
                else:
                    mem[128] = stor6[arg1][5].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_1280) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor6[arg1].field_1280 == stor6[arg1].field_1281 < 32:
                revert with 0, 34
            if stor6[arg1].field_1281:
                if 31 >= stor6[arg1].field_1281:
                    mem[128] = 256 * stor6[arg1].field_1288
                else:
                    mem[128] = stor6[arg1][5].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor6[arg1].field_0, 
               stor6[arg1].field_256,
               stor6[arg1].field_512,
               stor6[arg1].field_768,
               stor6[arg1].field_1024,
               Array(len=2 * Mask(256, -1, stor6[arg1].field_1280), data=mem[128 len ceil32(uint255(stor6[arg1].field_1280) * 0.5)]),
               stor6[arg1].field_1536,
               stor6[arg1].field_1536,
               bool(stor6[arg1].field_1704)
    if stor6[arg1].field_1280 == stor6[arg1].field_1281 < 32:
        revert with 0, 34
    if stor6[arg1].field_1280:
        if stor6[arg1].field_1280 == uint255(stor6[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_1280):
            if 31 >= uint255(stor6[arg1].field_1280) * 0.5:
                mem[128] = 256 * stor6[arg1].field_1288
            else:
                mem[128] = stor6[arg1][5].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_1280) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor6[arg1].field_1280 == stor6[arg1].field_1281 < 32:
            revert with 0, 34
        if stor6[arg1].field_1281:
            if 31 >= stor6[arg1].field_1281:
                mem[128] = 256 * stor6[arg1].field_1288
            else:
                mem[128] = stor6[arg1][5].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor6[arg1].field_0, 
           stor6[arg1].field_256,
           stor6[arg1].field_512,
           stor6[arg1].field_768,
           stor6[arg1].field_1024,
           Array(len=stor6[arg1].field_1280, data=mem[128 len ceil32(stor6[arg1].field_1281)]),
           stor6[arg1].field_1536,
           stor6[arg1].field_1536,
           bool(stor6[arg1].field_1704)
}

function sub_8b0c82a7(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    if stor5[arg1].field_1280:
        if stor5[arg1].field_1280 == uint255(stor5[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor5[arg1].field_1280:
            if stor5[arg1].field_1280 == uint255(stor5[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5[arg1].field_1280):
                if 31 >= uint255(stor5[arg1].field_1280) * 0.5:
                    mem[128] = 256 * stor5[arg1].field_1288
                else:
                    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor5[arg1].field_1280) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1].field_1280 == stor5[arg1].field_1281 < 32:
                revert with 0, 34
            if stor5[arg1].field_1281:
                if 31 >= stor5[arg1].field_1281:
                    mem[128] = 256 * stor5[arg1].field_1288
                else:
                    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor5[arg1].field_0, 
               stor5[arg1].field_256,
               stor5[arg1].field_512,
               stor5[arg1].field_768,
               stor5[arg1].field_1024,
               Array(len=2 * Mask(256, -1, stor5[arg1].field_1280), data=mem[128 len ceil32(uint255(stor5[arg1].field_1280) * 0.5)]),
               stor5[arg1].field_1536,
               stor5[arg1].field_1536,
               bool(stor5[arg1].field_1704)
    if stor5[arg1].field_1280 == stor5[arg1].field_1281 < 32:
        revert with 0, 34
    if stor5[arg1].field_1280:
        if stor5[arg1].field_1280 == uint255(stor5[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5[arg1].field_1280):
            if 31 >= uint255(stor5[arg1].field_1280) * 0.5:
                mem[128] = 256 * stor5[arg1].field_1288
            else:
                mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_0
                idx = 128
                s = 0
                while (uint255(stor5[arg1].field_1280) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1].field_1280 == stor5[arg1].field_1281 < 32:
            revert with 0, 34
        if stor5[arg1].field_1281:
            if 31 >= stor5[arg1].field_1281:
                mem[128] = 256 * stor5[arg1].field_1288
            else:
                mem[128] = stor[sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor5', 5) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor5[arg1].field_0, 
           stor5[arg1].field_256,
           stor5[arg1].field_512,
           stor5[arg1].field_768,
           stor5[arg1].field_1024,
           Array(len=stor5[arg1].field_1280, data=mem[128 len ceil32(stor5[arg1].field_1281)]),
           stor5[arg1].field_1536,
           stor5[arg1].field_1536,
           bool(stor5[arg1].field_1704)
}

function getLastCreatedContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7[address(arg1)].field_1280:
        if stor7[address(arg1)].field_1280 == uint255(stor7[address(arg1)].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor7[address(arg1)].field_1280:
            if stor7[address(arg1)].field_1280 == uint255(stor7[address(arg1)].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[address(arg1)].field_1280):
                if 31 >= uint255(stor7[address(arg1)].field_1280) * 0.5:
                    mem[704] = 256 * stor7[address(arg1)].field_1288
                else:
                    mem[704] = stor7[address(arg1)][5].field_0
                    idx = 704
                    s = 0
                    while (uint255(stor7[address(arg1)].field_1280) * 0.5) + 672 > idx:
                        mem[idx + 32] = stor7[address(arg1)][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[address(arg1)].field_1280 == stor7[address(arg1)].field_1281 < 32:
                revert with 0, 34
            if stor7[address(arg1)].field_1281:
                if 31 >= stor7[address(arg1)].field_1281:
                    mem[704] = 256 * stor7[address(arg1)].field_1288
                else:
                    mem[704] = stor7[address(arg1)][5].field_0
                    idx = 704
                    s = 0
                    while stor7[address(arg1)].field_1281 + 672 > idx:
                        mem[idx + 32] = stor7[address(arg1)][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor7[address(arg1)].field_0, 
               stor7[address(arg1)].field_256,
               stor7[address(arg1)].field_512,
               stor7[address(arg1)].field_768,
               stor7[address(arg1)].field_1024,
               288,
               stor7[address(arg1)].field_1536,
               stor7[address(arg1)].field_1536,
               bool(stor7[address(arg1)].field_1704),
               2 * Mask(256, -1, stor7[address(arg1)].field_1280),
               mem[704 len ceil32(uint255(stor7[address(arg1)].field_1280) * 0.5)]
    if stor7[address(arg1)].field_1280 == stor7[address(arg1)].field_1281 < 32:
        revert with 0, 34
    if stor7[address(arg1)].field_1280:
        if stor7[address(arg1)].field_1280 == uint255(stor7[address(arg1)].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[address(arg1)].field_1280):
            if 31 >= uint255(stor7[address(arg1)].field_1280) * 0.5:
                mem[704] = 256 * stor7[address(arg1)].field_1288
            else:
                mem[704] = stor7[address(arg1)][5].field_0
                idx = 704
                s = 0
                while (uint255(stor7[address(arg1)].field_1280) * 0.5) + 672 > idx:
                    mem[idx + 32] = stor7[address(arg1)][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[address(arg1)].field_1280 == stor7[address(arg1)].field_1281 < 32:
            revert with 0, 34
        if stor7[address(arg1)].field_1281:
            if 31 >= stor7[address(arg1)].field_1281:
                mem[704] = 256 * stor7[address(arg1)].field_1288
            else:
                mem[704] = stor7[address(arg1)][5].field_0
                idx = 704
                s = 0
                while stor7[address(arg1)].field_1281 + 672 > idx:
                    mem[idx + 32] = stor7[address(arg1)][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor7[address(arg1)].field_0, 
           stor7[address(arg1)].field_256,
           stor7[address(arg1)].field_512,
           stor7[address(arg1)].field_768,
           stor7[address(arg1)].field_1024,
           288,
           stor7[address(arg1)].field_1536,
           stor7[address(arg1)].field_1536,
           bool(stor7[address(arg1)].field_1704),
           stor7[address(arg1)].field_1280,
           mem[704 len ceil32(stor7[address(arg1)].field_1281)]
}

function getAllSwapContracts() {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    s = 128
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        _29 = mem[64]
        mem[64] = mem[64] + 288
        mem[_29] = stor5[idx].field_0
        mem[_29 + 32] = stor5[idx].field_256
        mem[_29 + 64] = stor5[idx].field_512
        mem[_29 + 96] = stor5[idx].field_768
        mem[_29 + 128] = stor5[idx].field_1024
        if stor5[idx].field_1280:
            if stor5[idx].field_1280 == uint255(stor5[idx].field_1280) * 0.5 < 32:
                revert with 0, 34
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor5[idx].field_1280) * 0.5) + 32
            mem[_33] = uint255(stor5[idx].field_1280) * 0.5
            if stor5[idx].field_1280:
                if stor5[idx].field_1280 == uint255(stor5[idx].field_1280) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5[idx].field_1280):
                    if 31 >= uint255(stor5[idx].field_1280) * 0.5:
                        mem[_33 + 32] = 256 * stor5[idx].field_1288
                    else:
                        mem[0] = sha3(5) + (7 * idx) + 5
                        mem[_33 + 32] = stor[sha3(('name', 'stor5', 5) + (7 * idx) + 5)].field_0
                        t = _33 + 32
                        u = sha3(mem[0])
                        while _33 + (uint255(stor5[idx].field_1280) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_29 + 160] = _33
                mem[_29 + 192] = stor5[idx].field_1536
                mem[_29 + 224] = stor5[idx].field_1696
                mem[_29 + 256] = bool(stor5[idx].field_1704)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[idx].field_1280 == stor5[idx].field_1281 < 32:
                revert with 0, 34
            if not stor5[idx].field_1281:
                mem[_29 + 160] = _33
                mem[_29 + 192] = stor5[idx].field_1536
                mem[_29 + 224] = stor5[idx].field_1696
                mem[_29 + 256] = bool(stor5[idx].field_1704)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[idx].field_1281:
                mem[_33 + 32] = 256 * stor5[idx].field_1288
                mem[_29 + 160] = _33
                mem[_29 + 192] = stor5[idx].field_1536
                mem[_29 + 224] = stor5[idx].field_1696
                mem[_29 + 256] = bool(stor5[idx].field_1704)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(5) + (7 * idx) + 5
            mem[_33 + 32] = stor[sha3(('name', 'stor5', 5) + (7 * idx) + 5)].field_0
            t = _33 + 32
            u = sha3(mem[0])
            while _33 + stor5[u].field_1281 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_29 + 160] = _33
            mem[_29 + 192] = stor5[u].field_1536
            mem[_29 + 224] = stor5[u].field_1696
            mem[_29 + 256] = bool(stor5[u].field_1704)
            mem[t] = _29
            t = t + 32
            u = u + 1
            continue 
        if stor5[idx].field_1280 == stor5[idx].field_1281 < 32:
            revert with 0, 34
        _40 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[idx].field_1281) + 32
        mem[_40] = stor5[idx].field_1281
        if stor5[idx].field_1280:
            if stor5[idx].field_1280 == uint255(stor5[idx].field_1280) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[idx].field_1280):
                mem[_29 + 160] = _40
                mem[_29 + 192] = stor5[idx].field_1536
                mem[_29 + 224] = stor5[idx].field_1696
                mem[_29 + 256] = bool(stor5[idx].field_1704)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor5[idx].field_1280) * 0.5:
                mem[_40 + 32] = 256 * stor5[idx].field_1288
                mem[_29 + 160] = _40
                mem[_29 + 192] = stor5[idx].field_1536
                mem[_29 + 224] = stor5[idx].field_1696
                mem[_29 + 256] = bool(stor5[idx].field_1704)
                mem[s] = _29
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(5) + (7 * idx) + 5
            mem[_40 + 32] = stor[sha3(('name', 'stor5', 5) + (7 * idx) + 5)].field_0
            t = _40 + 32
            u = sha3(mem[0])
            while _40 + (uint255(stor5[u].field_1280) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_29 + 160] = _40
            mem[_29 + 192] = stor5[u].field_1536
            mem[_29 + 224] = stor5[u].field_1696
            mem[_29 + 256] = bool(stor5[u].field_1704)
            mem[t] = _29
            t = t + 32
            u = u + 1
            continue 
        if stor5[idx].field_1280 == stor5[idx].field_1281 < 32:
            revert with 0, 34
        if stor5[idx].field_1281:
            if 31 >= stor5[idx].field_1281:
                mem[_40 + 32] = 256 * stor5[idx].field_1288
            else:
                mem[0] = sha3(5) + (7 * idx) + 5
                mem[_40 + 32] = stor[sha3(('name', 'stor5', 5) + (7 * idx) + 5)].field_0
                t = _40 + 32
                u = sha3(mem[0])
                while _40 + stor5[idx].field_1281 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_29 + 160] = _40
        mem[_29 + 192] = stor5[idx].field_1536
        mem[_29 + 224] = stor5[idx].field_1696
        mem[_29 + 256] = bool(stor5[idx].field_1704)
        mem[s] = _29
        s = s + 32
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _31:
        mem[t] = u + -_30 - 64
        _54 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_54 + 32]
        mem[u + 64] = mem[_54 + 64]
        mem[u + 96] = mem[_54 + 108 len 20]
        mem[u + 128] = mem[_54 + 140 len 20]
        _61 = mem[_54 + 160]
        mem[u + 160] = 288
        _62 = mem[_61]
        mem[u + 288] = mem[_61]
        v = 0
        while v < _62:
            mem[v + u + 320] = mem[v + _61 + 32]
            v = v + 32
            continue 
        if ceil32(_62) > _62:
            mem[_62 + u + 320] = 0
        mem[u + 192] = mem[_54 + 204 len 20]
        mem[u + 224] = mem[_54 + 255 len 1]
        mem[u + 256] = bool(mem[_54 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_62) + u + 320
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_262aa6e7(?) {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    require arg5 == uint8(arg5)
    require arg6 == bool(arg6)
    if stor6[address(arg2)].field_512 >= stor5.length:
        revert with 0, 50
    if owner != msg.sender:
        if stor5[stor6[address(arg2)].field_512].field_768 != msg.sender:
            if oracleAddress != msg.sender:
                revert with 0, 'updateSwapContract must be contract creator'
    mem[ceil32(ceil32(arg3.length)) + 181 len 64] = stor5[stor6[address(arg2)].field_512].field_768, arg1, mem[ceil32(ceil32(arg3.length)) + 181 len 12]
    hash = sha256hash(mem[ceil32(ceil32(arg3.length)) + 181 len 52]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(arg4):
        revert with 0, 'target contract cannot be 0 address'
    if hash != stor5[stor6[address(arg2)].field_512].field_0:
        revert with 0, 'we don't recognize the info you sent with the swap'
    if hash != stor6[address(arg2)].field_0:
        revert with 0, 'we don't recognize the info you sent with the swap'
    if stor5[stor6[address(arg2)].field_512].field_1280:
        if stor5[stor6[address(arg2)].field_512].field_1280 == uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor5[stor6[address(arg2)].field_512].field_1280 = 0
            idx = 0
            while (uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[stor6[address(arg2)].field_512].field_1280 == stor5[stor6[address(arg2)].field_512].field_1281 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor5[stor6[address(arg2)].field_512].field_1280 = 0
            idx = 0
            while stor5[stor6[address(arg2)].field_512].field_1281 + 31 / 32 > idx:
                stor[idx + sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)].field_0 = 0
                idx = idx + 1
                continue 
    if not stor5[stor6[address(arg2)].field_512].field_1280:
        if stor5[stor6[address(arg2)].field_512].field_1280 == stor5[stor6[address(arg2)].field_512].field_1281 < 32:
            revert with 0, 34
        if stor6[address(arg2)].field_1280:
            if stor6[address(arg2)].field_1280 == uint255(stor6[address(arg2)].field_1280) * 0.5 < 32:
                revert with 0, 34
            if not stor5[stor6[address(arg2)].field_512].field_1281:
                stor6[address(arg2)].field_1280 = 0
                idx = 0
                while (uint255(stor6[address(arg2)].field_1280) * 0.5) + 31 / 32 > idx:
                    stor6[address(arg2)][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor6[address(arg2)].field_1280 = (2 * stor5[stor6[address(arg2)].field_512].field_1281) + 1
                s = 0
                idx = 0
                while stor5[stor6[address(arg2)].field_512].field_1281 + 31 / 32 > idx:
                    stor6[address(arg2)][s + 5].field_0 = stor[idx + sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor5[stor6[address(arg2)].field_512].field_1281 + 31 / 32
                while (uint255(stor6[address(arg2)].field_1280) * 0.5) + 31 / 32 > idx:
                    stor6[address(arg2)][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor6[address(arg2)].field_1280 == stor6[address(arg2)].field_1281 < 32:
                revert with 0, 34
            if not stor5[stor6[address(arg2)].field_512].field_1281:
                stor6[address(arg2)].field_1280 = 0
                idx = 0
                while stor6[address(arg2)].field_1281 + 31 / 32 > idx:
                    stor6[address(arg2)][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor6[address(arg2)].field_1280 = (2 * stor5[stor6[address(arg2)].field_512].field_1281) + 1
                s = 0
                idx = 0
                while stor5[stor6[address(arg2)].field_512].field_1281 + 31 / 32 > idx:
                    stor6[address(arg2)][s + 5].field_0 = stor[idx + sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor5[stor6[address(arg2)].field_512].field_1281 + 31 / 32
                while stor6[address(arg2)].field_1281 + 31 / 32 > idx:
                    stor6[address(arg2)][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if stor5[stor6[address(arg2)].field_512].field_1280 == uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor6[address(arg2)].field_1280:
            if stor6[address(arg2)].field_1280 == uint255(stor6[address(arg2)].field_1280) * 0.5 < 32:
                revert with 0, 34
            if not uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5:
                stor6[address(arg2)].field_1280 = 0
                idx = 0
                while (uint255(stor6[address(arg2)].field_1280) * 0.5) + 31 / 32 > idx:
                    stor6[address(arg2)][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 31 >= uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5:
                    stor6[address(arg2)].field_1280 = stor5[stor6[address(arg2)].field_512].field_1280
                    idx = 0
                    while (uint255(stor6[address(arg2)].field_1280) * 0.5) + 31 / 32 > idx:
                        stor6[address(arg2)][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor6[address(arg2)].field_1280 = Mask(254, 1, stor5[stor6[address(arg2)].field_512].field_1280) + 1
                    if not Mask(256, -1, stor5[stor6[address(arg2)].field_512].field_1280):
                        idx = 0
                        while (uint255(stor6[address(arg2)].field_1280) * 0.5) + 31 / 32 > idx:
                            stor6[address(arg2)][idx + 5].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while (uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5) + 31 / 32 > idx:
                            stor6[address(arg2)][s + 5].field_0 = stor[idx + sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = (uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5) + 31 / 32
                        while (uint255(stor6[address(arg2)].field_1280) * 0.5) + 31 / 32 > idx:
                            stor6[address(arg2)][idx + 5].field_0 = 0
                            idx = idx + 1
                            continue 
        else:
            if stor6[address(arg2)].field_1280 == stor6[address(arg2)].field_1281 < 32:
                revert with 0, 34
            if not uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5:
                stor6[address(arg2)].field_1280 = 0
                idx = 0
                while stor6[address(arg2)].field_1281 + 31 / 32 > idx:
                    stor6[address(arg2)][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 31 >= uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5:
                    stor6[address(arg2)].field_1280 = stor5[stor6[address(arg2)].field_512].field_1280
                    idx = 0
                    while stor6[address(arg2)].field_1281 + 31 / 32 > idx:
                        stor6[address(arg2)][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor6[address(arg2)].field_1280 = Mask(254, 1, stor5[stor6[address(arg2)].field_512].field_1280) + 1
                    if not Mask(256, -1, stor5[stor6[address(arg2)].field_512].field_1280):
                        idx = 0
                        while stor6[address(arg2)].field_1281 + 31 / 32 > idx:
                            stor6[address(arg2)][idx + 5].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while (uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5) + 31 / 32 > idx:
                            stor6[address(arg2)][s + 5].field_0 = stor[idx + sha3((7 * stor6[address(arg2)].field_512) + ('name', 'stor5', 5) + 5)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = (uint255(stor5[stor6[address(arg2)].field_512].field_1280) * 0.5) + 31 / 32
                        while stor6[address(arg2)].field_1281 + 31 / 32 > idx:
                            stor6[address(arg2)][idx + 5].field_0 = 0
                            idx = idx + 1
                            continue 
    stor5[stor6[address(arg2)].field_512].field_1536 = address(arg4)
    stor6[address(arg2)].field_1536 = address(arg4)
    stor5[stor6[address(arg2)].field_512].field_1696 = uint8(arg5)
    stor6[address(arg2)].field_1696 = 0
    stor6[address(arg2)].field_1696 = uint8(arg5)
    stor5[stor6[address(arg2)].field_512].field_1704 = Mask(88, 0, bool(arg6))
    stor6[address(arg2)].field_1704 = Mask(88, 0, bool(0 or uint8(bool(arg6))))
}



}
