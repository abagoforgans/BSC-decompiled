contract main {




// =====================  Runtime code  =====================


#
#  - sell(uint256 arg1, uint256 arg2, address arg3)
#
uint256 stor0;
array of uint256 stor1;
uint256 sub_5748966c;
uint256 sub_35709028;
array of struct stor4;
uint8 stor5;
uint256 feeRate;
address feeReceiverAddress;
uint256 rewardRate;
address sub_74c9f2a3Address;
address sub_64fde57cAddress;
array of struct stor11;
address tokenAddr;
uint256 sub_b25bbbcf;

function sub_35709028(?) {
    return sub_35709028
}

function sub_5748966c(?) {
    return sub_5748966c
}

function tokenAddr() {
    return tokenAddr
}

function sub_64fde57c(?) {
    return sub_64fde57cAddress
}

function sub_74c9f2a3(?) {
    return sub_74c9f2a3Address
}

function rewardRate() {
    return rewardRate
}

function getRewardRate() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return rewardRate
}

function getFeeRate() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return feeRate
}

function owner() {
    return address(stor1.length)
}

function feeRate() {
    return feeRate
}

function sub_b25bbbcf(?) {
    return sub_b25bbbcf
}

function salesEnabled() {
    return bool(stor5)
}

function getFeeReceiver() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return feeReceiverAddress
}

function _fallback() payable {
    revert
}

function sub_2488baac(?) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_35709028 = arg1
}

function sub_325a2c38(?) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b25bbbcf = arg1
}

function renounceOwnership() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(stor1.length), 0);
    address(stor1.length) = 0
}

function enableSales(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = uint8(arg1)
}

function sub_b3041174(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddr = address(arg1)
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'Rate should be bellow 100 (10%)'
    feeRate = arg1
}

function setRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'Rate should be bellow 100 (10%)'
    rewardRate = arg1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid address'
    feeReceiverAddress = arg1
}

function sub_9824f2a1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Loot box address can not be zero'
    sub_64fde57cAddress = address(arg1)
}

function emergencyBNBWithdraw() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call feeReceiverAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(stor1.length), arg1);
    address(stor1.length) = arg1
}

function withdrawToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args feeReceiverAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_636694bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor11[address(arg1)].field_0:
        mem[128] = stor11[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor11[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor11[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor11[address(arg1)].field_0, data=mem[128 len 32 * stor11[address(arg1)].field_0])
    mem[(32 * stor11[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor11[address(arg1)].field_0) + 160] = stor11[address(arg1)].field_0
    mem[(32 * stor11[address(arg1)].field_0) + 192 len 32 * stor11[address(arg1)].field_0] = mem[128 len 32 * stor11[address(arg1)].field_0]
    return memory
      from (32 * stor11[address(arg1)].field_0) + 128
       len (96 * stor11[address(arg1)].field_0) + 64
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg4.length) + 192] = arg3
        mem[ceil32(arg4.length) + 224] = 128
        mem[ceil32(arg4.length) + 256] = arg4.length
        emit NftReceived(address arg1, address arg2, uint256 arg3, bytes arg4):
                         Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                         mem[arg4.length + 160 len (2 * ceil32(arg4.length)) + -arg4.length + 128],
        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_a8e89738(?) {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    s = 128
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        _33 = mem[64]
        mem[64] = mem[64] + 288
        mem[_33] = stor4[idx].field_0
        mem[_33 + 32] = stor4[idx].field_256
        mem[_33 + 64] = stor4[idx].field_512
        mem[_33 + 96] = address(stor4[idx].field_768)
        mem[_33 + 128] = address(stor4[idx].field_1024)
        mem[_33 + 160] = stor4[idx].field_1280
        mem[_33 + 192] = stor4[idx].field_1536
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor4', 4) + (9 * idx) + 7].length) + 32
        mem[_34] = stor[('name', 'stor4', 4) + (9 * idx) + 7].length
        mem[0] = sha3(4) + (9 * idx) + 7
        mem[_34 + 32] = stor[sha3(('name', 'stor4', 4) + (9 * idx) + 7)].field_0
        t = _34 + 32
        u = sha3(mem[0])
        while _34 + stor[('name', 'stor4', 4) + (9 * idx) + 7].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_33 + 224] = _34
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor4', 4) + (9 * idx) + 8].length) + 32
        mem[_68] = stor[('name', 'stor4', 4) + (9 * idx) + 8].length
        mem[0] = sha3(4) + (9 * idx) + 8
        mem[_68 + 32] = stor[sha3(('name', 'stor4', 4) + (9 * idx) + 8)].field_0
        t = _68 + 32
        u = sha3(mem[0])
        while _68 + stor[('name', 'stor4', 4) + (9 * idx) + 8].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_33 + 256] = _68
        mem[s] = _33
        s = s + 32
        idx = idx + 1
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    _37 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _37:
        mem[t] = u + -_35 - 64
        _62 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_62 + 32]
        mem[u + 64] = mem[_62 + 64]
        mem[u + 96] = mem[_62 + 108 len 20]
        mem[u + 128] = mem[_62 + 140 len 20]
        mem[u + 160] = mem[_62 + 160]
        mem[u + 192] = mem[_62 + 192]
        _73 = mem[_62 + 224]
        mem[u + 224] = 288
        _74 = mem[_73]
        mem[u + 288] = mem[_73]
        v = 0
        while v < _74:
            mem[v + u + 320] = mem[v + _73 + 32]
            v = v + 32
            continue 
        if ceil32(_74) <= _74:
            _83 = mem[_62 + 256]
            mem[u + 256] = ceil32(_74) + 320
            _84 = mem[_83]
            mem[ceil32(_74) + u + 320] = mem[_83]
            v = 0
            while v < _84:
                mem[v + ceil32(_74) + u + 352] = mem[v + _83 + 32]
                v = v + 32
                continue 
            if ceil32(_84) > _84:
                mem[ceil32(_74) + u + _84 + 352] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_84) + ceil32(_74) + u + 352
            continue 
        mem[u + _74 + 320] = 0
        _85 = mem[_62 + 256]
        mem[u + 256] = ceil32(_74) + 320
        _86 = mem[_85]
        mem[ceil32(_74) + u + 320] = mem[_85]
        v = 0
        while v < _86:
            mem[v + ceil32(_74) + u + 352] = mem[v + _85 + 32]
            v = v + 32
            continue 
        if ceil32(_86) > _86:
            mem[ceil32(_74) + u + _86 + 352] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_86) + ceil32(_74) + u + 352
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getSaleInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    mem[704] = stor[sha3(('name', 'stor4', 4) + (9 * arg1) + 7)].field_0
    idx = 704
    s = 0
    while stor[('name', 'stor4', 4) + (9 * arg1) + 7].length + 672 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * arg1) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 736] = stor[sha3(('name', 'stor4', 4) + (9 * arg1) + 8)].field_0
    idx = ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 736
    s = 0
    while ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + stor[('name', 'stor4', 4) + (9 * arg1) + 8].length + 704 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * arg1) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) <= stor[('name', 'stor4', 4) + (9 * arg1) + 7].length:
        mem[(2 * ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + 1088] = stor[('name', 'stor4', 4) + (9 * arg1) + 8].length
        mem[(2 * ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + 1120 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length)] = mem[ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 736 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length)]
        if ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) > stor[('name', 'stor4', 4) + (9 * arg1) + 8].length:
            mem[(2 * ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + stor[('name', 'stor4', 4) + (9 * arg1) + 8].length + 1120] = 0
        return 32, stor4[arg1].field_0, 
               stor4[arg1].field_256,
               stor4[arg1].field_512,
               address(stor4[arg1].field_768),
               address(stor4[arg1].field_1024),
               stor4[arg1].field_1280,
               stor4[arg1].field_1536,
               288,
               ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 320,
               stor[('name', 'stor4', 4) + (9 * arg1) + 7].length,
               mem[704 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)],
               stor[('name', 'stor4', 4) + (9 * arg1) + 8].length,
               mem[ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 736 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length)]
    mem[ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + stor[('name', 'stor4', 4) + (9 * arg1) + 7].length + 1088] = 0
    mem[(2 * ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + 1088] = stor[('name', 'stor4', 4) + (9 * arg1) + 8].length
    mem[(2 * ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + 1120 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length)] = mem[ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 736 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length)]
    if ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) > stor[('name', 'stor4', 4) + (9 * arg1) + 8].length:
        mem[(2 * ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length)) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + stor[('name', 'stor4', 4) + (9 * arg1) + 8].length + 1120] = 0
    return 32, stor4[arg1].field_0, 
           stor4[arg1].field_256,
           stor4[arg1].field_512,
           address(stor4[arg1].field_768),
           address(stor4[arg1].field_1024),
           stor4[arg1].field_1280,
           stor4[arg1].field_1536,
           288,
           ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + 320,
           stor[('name', 'stor4', 4) + (9 * arg1) + 7].length,
           mem[704 len stor[('name', 'stor4', 4) + (9 * arg1) + 7].length],
           0,
           mem[ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + stor[('name', 'stor4', 4) + (9 * arg1) + 7].length + 1120 len ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 8].length) + ceil32(stor[('name', 'stor4', 4) + (9 * arg1) + 7].length) - stor[('name', 'stor4', 4) + (9 * arg1) + 7].length]
}

function cancelSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor5:
        revert with 0, 'sales are closed'
    require arg1 < stor4.length
    if address(stor4[arg1].field_768) != msg.sender:
        revert with 0, 'seller not nft owner'
    require ext_code.size(address(stor4[arg1].field_1024))
    call address(stor4[arg1].field_1024).0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(stor4[arg1].field_768), stor4[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < stor4.length
    idx = 0
    while idx < stor11[address(stor4[arg1].field_768)].field_0:
        mem[0] = sha3(address(stor4[arg1].field_768), 11)
        if stor11[address(stor4[arg1].field_768)][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require stor11[address(stor4[arg1].field_768)].field_0 - 1 < stor11[address(stor4[arg1].field_768)].field_0
        require idx < stor11[address(stor4[arg1].field_768)].field_0
        stor11[address(stor4[arg1].field_768)][idx].field_0 = stor11[address(stor4[arg1].field_768)][stor11[address(stor4[arg1].field_768)].field_0].field_0
        require stor11[address(stor4[arg1].field_768)].field_0
        stor11[address(stor4[arg1].field_768)][stor11[address(stor4[arg1].field_768)].field_0].field_0 = 0
        stor11[address(stor4[arg1].field_768)].field_0--
        require stor4.length - 1 < stor4.length
        require arg1 < stor4.length
        stor4[arg1].field_0 = stor4[stor4.length].field_0
        stor4[arg1].field_256 = stor4[stor4.length].field_0
        stor4[arg1].field_512 = stor4[stor4.length].field_0
        address(stor4[arg1].field_768) = address(stor4[stor4.length].field_0)
        address(stor4[arg1].field_1024) = address(stor4[stor4.length].field_0)
        stor4[arg1].field_1280 = stor4[stor4.length].field_0
        stor4[arg1].field_1536 = stor4[stor4.length].field_0
        if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
            stor4[arg1].field_1792 = stor4[stor4.length].field_0
            idx = sha3((9 * arg1) + sha3(4) + 7)
            while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor4[arg1].field_1792 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
            if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                idx = sha3((9 * arg1) + sha3(4) + 7)
                while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3((9 * arg1) + sha3(4) + 7)
                idx = sha3((9 * stor4.length) + sha3(4) - 2)
                while sha3((9 * stor4.length) + sha3(4) - 2) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32) > idx:
                    stor[s] = stor[idx]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32)
                while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
        if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
            stor4[arg1].field_2048 = stor4[stor4.length].field_0
            idx = sha3((9 * arg1) + sha3(4) + 8)
            while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor4[arg1].field_2048 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
            if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                idx = sha3((9 * arg1) + sha3(4) + 8)
                while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3((9 * arg1) + sha3(4) + 8)
                idx = sha3((9 * stor4.length) + sha3(4) - 1)
                while sha3((9 * stor4.length) + sha3(4) - 1) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32) > idx:
                    stor[s] = stor[idx]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32)
                while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
        require arg1 < stor4.length
        stor4[arg1].field_256 = arg1
        idx = 0
        while idx < stor11[address(stor4[arg1].field_768)].field_0:
            mem[0] = sha3(address(stor4[arg1].field_768), 11)
            if stor11[address(stor4[arg1].field_768)][idx].field_0 == stor4.length - 1:
                require idx < stor11[address(stor4[arg1].field_768)].field_0
                mem[0] = sha3(address(stor4[arg1].field_768), 11)
                stor11[address(stor4[arg1].field_768)][idx].field_0 = arg1
            idx = idx + 1
            continue 
        require stor4.length
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        address(stor4[stor4.length].field_0) = 0
        address(stor4[stor4.length].field_0) = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
            idx = sha3((9 * stor4.length) + sha3(4) - 2)
            while sha3((9 * stor4.length) + sha3(4) - 2) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length].field_0 = 0
        if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
            idx = sha3((9 * stor4.length) + sha3(4) - 1)
            while sha3((9 * stor4.length) + sha3(4) - 1) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor4.length--
        emit SaleCanceled(stor4[arg1].field_512, arg1);
        stor0 = 1
    require stor4.length - 1 < stor4.length
    require arg1 < stor4.length
    stor4[arg1].field_0 = stor4[stor4.length].field_0
    stor4[arg1].field_256 = stor4[stor4.length].field_0
    stor4[arg1].field_512 = stor4[stor4.length].field_0
    address(stor4[arg1].field_768) = address(stor4[stor4.length].field_0)
    address(stor4[arg1].field_1024) = address(stor4[stor4.length].field_0)
    stor4[arg1].field_1280 = stor4[stor4.length].field_0
    stor4[arg1].field_1536 = stor4[stor4.length].field_0
    if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
        stor4[arg1].field_1792 = stor4[stor4.length].field_0
        idx = 0
        while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
            stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor4[arg1].field_1792 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
        if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
            idx = 0
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32 > idx:
                stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 2)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                idx = idx + 1
                continue 
    if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
        stor4[arg1].field_2048 = stor4[stor4.length].field_0
        idx = 0
        while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
            stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor4[arg1].field_2048 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
        if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
            idx = 0
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32 > idx:
                stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 1)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                idx = idx + 1
                continue 
    require arg1 < stor4.length
    stor4[arg1].field_256 = arg1
    idx = 0
    while idx < stor11[address(stor4[arg1].field_768)].field_0:
        mem[0] = sha3(address(stor4[arg1].field_768), 11)
        if stor11[address(stor4[arg1].field_768)][idx].field_0 == stor4.length - 1:
            require idx < stor11[address(stor4[arg1].field_768)].field_0
            mem[0] = sha3(address(stor4[arg1].field_768), 11)
            stor11[address(stor4[arg1].field_768)][idx].field_0 = arg1
        idx = idx + 1
        continue 
    require stor4.length
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_0 = 0
    address(stor4[stor4.length].field_0) = 0
    address(stor4[stor4.length].field_0) = 0
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_0 = 0
    if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
        idx = 0
        while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32 > idx:
            stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_0 = 0
    if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
        idx = 0
        while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32 > idx:
            stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor4.length--
    emit SaleCanceled(stor4[arg1].field_512, arg1);
    stor0 = 1
}

function buy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor5:
        revert with 0, 'sales are closed'
    require arg1 < stor4.length
    if stor4[arg1].field_1280 > block.timestamp:
        revert with 0, 'not yet for sale'
    if stor4[arg1].field_512 != arg2:
        revert with 0, 'wrong token, reload page'
    if msg.sender == address(stor4[arg1].field_768):
        revert with 0, 'cant buy from yourself'
    if not stor4[arg1].field_1536:
        if 0 > stor4[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < stor4[arg1].field_1536:
            revert with 0, 'your price is too low'
        call address(stor4[arg1].field_768) with:
           value stor4[arg1].field_1536 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor4[arg1].field_1024))
        call address(stor4[arg1].field_1024).0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 < stor4.length
        idx = 0
        while idx < stor11[address(stor4[arg1].field_768)].field_0:
            mem[0] = sha3(address(stor4[arg1].field_768), 11)
            if stor11[address(stor4[arg1].field_768)][idx].field_0 != arg1:
                idx = idx + 1
                continue 
            require stor11[address(stor4[arg1].field_768)].field_0 - 1 < stor11[address(stor4[arg1].field_768)].field_0
            require idx < stor11[address(stor4[arg1].field_768)].field_0
            stor11[address(stor4[arg1].field_768)][idx].field_0 = stor11[address(stor4[arg1].field_768)][stor11[address(stor4[arg1].field_768)].field_0].field_0
            require stor11[address(stor4[arg1].field_768)].field_0
            stor11[address(stor4[arg1].field_768)][stor11[address(stor4[arg1].field_768)].field_0].field_0 = 0
            stor11[address(stor4[arg1].field_768)].field_0--
            require stor4.length - 1 < stor4.length
            require arg1 < stor4.length
            stor4[arg1].field_0 = stor4[stor4.length].field_0
            stor4[arg1].field_256 = stor4[stor4.length].field_0
            stor4[arg1].field_512 = stor4[stor4.length].field_0
            address(stor4[arg1].field_768) = address(stor4[stor4.length].field_0)
            address(stor4[arg1].field_1024) = address(stor4[stor4.length].field_0)
            stor4[arg1].field_1280 = stor4[stor4.length].field_0
            stor4[arg1].field_1536 = stor4[stor4.length].field_0
            if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
                stor4[arg1].field_1792 = stor4[stor4.length].field_0
                idx = sha3((9 * arg1) + sha3(4) + 7)
                while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_1792 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
                if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                    idx = sha3((9 * arg1) + sha3(4) + 7)
                    while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3((9 * arg1) + sha3(4) + 7)
                    idx = sha3((9 * stor4.length) + sha3(4) - 2)
                    while sha3((9 * stor4.length) + sha3(4) - 2) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32) > idx:
                        stor[s] = stor[idx]
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32)
                    while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
                stor4[arg1].field_2048 = stor4[stor4.length].field_0
                idx = sha3((9 * arg1) + sha3(4) + 8)
                while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_2048 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
                if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                    idx = sha3((9 * arg1) + sha3(4) + 8)
                    while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3((9 * arg1) + sha3(4) + 8)
                    idx = sha3((9 * stor4.length) + sha3(4) - 1)
                    while sha3((9 * stor4.length) + sha3(4) - 1) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32) > idx:
                        stor[s] = stor[idx]
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32)
                    while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            require arg1 < stor4.length
            stor4[arg1].field_256 = arg1
            idx = 0
            while idx < stor11[address(stor4[arg1].field_768)].field_0:
                mem[0] = sha3(address(stor4[arg1].field_768), 11)
                if stor11[address(stor4[arg1].field_768)][idx].field_0 == stor4.length - 1:
                    require idx < stor11[address(stor4[arg1].field_768)].field_0
                    mem[0] = sha3(address(stor4[arg1].field_768), 11)
                    stor11[address(stor4[arg1].field_768)][idx].field_0 = arg1
                idx = idx + 1
                continue 
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            address(stor4[stor4.length].field_0) = 0
            address(stor4[stor4.length].field_0) = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
                idx = sha3((9 * stor4.length) + sha3(4) - 2)
                while sha3((9 * stor4.length) + sha3(4) - 2) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length].field_0 = 0
            if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
                idx = sha3((9 * stor4.length) + sha3(4) - 1)
                while sha3((9 * stor4.length) + sha3(4) - 1) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor4.length--
            emit Buy(stor4[arg1].field_512, stor4[arg1].field_1536, 0, stor4[arg1].field_0, msg.sender);
            stor0 = 1
        require stor4.length - 1 < stor4.length
        require arg1 < stor4.length
        stor4[arg1].field_0 = stor4[stor4.length].field_0
        stor4[arg1].field_256 = stor4[stor4.length].field_0
        stor4[arg1].field_512 = stor4[stor4.length].field_0
        address(stor4[arg1].field_768) = address(stor4[stor4.length].field_0)
        address(stor4[arg1].field_1024) = address(stor4[stor4.length].field_0)
        stor4[arg1].field_1280 = stor4[stor4.length].field_0
        stor4[arg1].field_1536 = stor4[stor4.length].field_0
        if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
            stor4[arg1].field_1792 = stor4[stor4.length].field_0
            idx = 0
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4[arg1].field_1792 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
            if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                idx = 0
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32 > idx:
                    stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 2)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                    idx = idx + 1
                    continue 
        if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
            stor4[arg1].field_2048 = stor4[stor4.length].field_0
            idx = 0
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4[arg1].field_2048 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
            if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                idx = 0
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32 > idx:
                    stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 1)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                    idx = idx + 1
                    continue 
        require arg1 < stor4.length
        stor4[arg1].field_256 = arg1
        idx = 0
        while idx < stor11[address(stor4[arg1].field_768)].field_0:
            mem[0] = sha3(address(stor4[arg1].field_768), 11)
            if stor11[address(stor4[arg1].field_768)][idx].field_0 == stor4.length - 1:
                require idx < stor11[address(stor4[arg1].field_768)].field_0
                mem[0] = sha3(address(stor4[arg1].field_768), 11)
                stor11[address(stor4[arg1].field_768)][idx].field_0 = arg1
            idx = idx + 1
            continue 
        require stor4.length
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        address(stor4[stor4.length].field_0) = 0
        address(stor4[stor4.length].field_0) = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
            idx = 0
            while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32 > idx:
                stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 2)].field_0 = 0
                idx = idx + 1
                continue 
        stor4[stor4.length].field_0 = 0
        if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
            idx = 0
            while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32 > idx:
                stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 1)].field_0 = 0
                idx = idx + 1
                continue 
        stor4.length--
        emit Buy(stor4[arg1].field_512, stor4[arg1].field_1536, 0, stor4[arg1].field_0, msg.sender);
    else:
        if feeRate * stor4[arg1].field_1536 / stor4[arg1].field_1536 != feeRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if feeRate * stor4[arg1].field_1536 / 1000 > stor4[arg1].field_1536:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < stor4[arg1].field_1536:
            revert with 0, 'your price is too low'
        if not feeRate * stor4[arg1].field_1536 / 1000:
            call address(stor4[arg1].field_768) with:
               value stor4[arg1].field_1536 - (feeRate * stor4[arg1].field_1536 / 1000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call feeReceiverAddress with:
               value feeRate * stor4[arg1].field_1536 / 1000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(stor4[arg1].field_768) with:
               value stor4[arg1].field_1536 - (feeRate * stor4[arg1].field_1536 / 1000) wei
                 gas 2300 * is_zero(value) wei
        require ext_code.size(address(stor4[arg1].field_1024))
        call address(stor4[arg1].field_1024).0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor4[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 < stor4.length
        idx = 0
        while idx < stor11[address(stor4[arg1].field_768)].field_0:
            mem[0] = sha3(address(stor4[arg1].field_768), 11)
            if stor11[address(stor4[arg1].field_768)][idx].field_0 != arg1:
                idx = idx + 1
                continue 
            require stor11[address(stor4[arg1].field_768)].field_0 - 1 < stor11[address(stor4[arg1].field_768)].field_0
            require idx < stor11[address(stor4[arg1].field_768)].field_0
            stor11[address(stor4[arg1].field_768)][idx].field_0 = stor11[address(stor4[arg1].field_768)][stor11[address(stor4[arg1].field_768)].field_0].field_0
            require stor11[address(stor4[arg1].field_768)].field_0
            stor11[address(stor4[arg1].field_768)][stor11[address(stor4[arg1].field_768)].field_0].field_0 = 0
            stor11[address(stor4[arg1].field_768)].field_0--
            require stor4.length - 1 < stor4.length
            require arg1 < stor4.length
            stor4[arg1].field_0 = stor4[stor4.length].field_0
            stor4[arg1].field_256 = stor4[stor4.length].field_0
            stor4[arg1].field_512 = stor4[stor4.length].field_0
            address(stor4[arg1].field_768) = address(stor4[stor4.length].field_0)
            address(stor4[arg1].field_1024) = address(stor4[stor4.length].field_0)
            stor4[arg1].field_1280 = stor4[stor4.length].field_0
            stor4[arg1].field_1536 = stor4[stor4.length].field_0
            if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
                stor4[arg1].field_1792 = stor4[stor4.length].field_0
                idx = sha3((9 * arg1) + sha3(4) + 7)
                while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_1792 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
                if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                    idx = sha3((9 * arg1) + sha3(4) + 7)
                    while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3((9 * arg1) + sha3(4) + 7)
                    idx = sha3((9 * stor4.length) + sha3(4) - 2)
                    while sha3((9 * stor4.length) + sha3(4) - 2) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32) > idx:
                        stor[s] = stor[idx]
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32)
                    while sha3((9 * arg1) + sha3(4) + 7) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
                stor4[arg1].field_2048 = stor4[stor4.length].field_0
                idx = sha3((9 * arg1) + sha3(4) + 8)
                while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                stor4[arg1].field_2048 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
                if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                    idx = sha3((9 * arg1) + sha3(4) + 8)
                    while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3((9 * arg1) + sha3(4) + 8)
                    idx = sha3((9 * stor4.length) + sha3(4) - 1)
                    while sha3((9 * stor4.length) + sha3(4) - 1) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32) > idx:
                        stor[s] = stor[idx]
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32)
                    while sha3((9 * arg1) + sha3(4) + 8) + (stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            require arg1 < stor4.length
            stor4[arg1].field_256 = arg1
            idx = 0
            while idx < stor11[address(stor4[arg1].field_768)].field_0:
                mem[0] = sha3(address(stor4[arg1].field_768), 11)
                if stor11[address(stor4[arg1].field_768)][idx].field_0 == stor4.length - 1:
                    require idx < stor11[address(stor4[arg1].field_768)].field_0
                    mem[0] = sha3(address(stor4[arg1].field_768), 11)
                    stor11[address(stor4[arg1].field_768)][idx].field_0 = arg1
                idx = idx + 1
                continue 
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            address(stor4[stor4.length].field_0) = 0
            address(stor4[stor4.length].field_0) = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            stor4[stor4.length].field_0 = 0
            if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
                idx = sha3((9 * stor4.length) + sha3(4) - 2)
                while sha3((9 * stor4.length) + sha3(4) - 2) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length].field_0 = 0
            if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
                idx = sha3((9 * stor4.length) + sha3(4) - 1)
                while sha3((9 * stor4.length) + sha3(4) - 1) + (stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor4.length--
            emit Buy(stor4[arg1].field_512, stor4[arg1].field_1536, feeRate * stor4[arg1].field_1536 / 1000, stor4[arg1].field_0, msg.sender);
            stor0 = 1
        require stor4.length - 1 < stor4.length
        require arg1 < stor4.length
        stor4[arg1].field_0 = stor4[stor4.length].field_0
        stor4[arg1].field_256 = stor4[stor4.length].field_0
        stor4[arg1].field_512 = stor4[stor4.length].field_0
        address(stor4[arg1].field_768) = address(stor4[stor4.length].field_0)
        address(stor4[arg1].field_1024) = address(stor4[stor4.length].field_0)
        stor4[arg1].field_1280 = stor4[stor4.length].field_0
        stor4[arg1].field_1536 = stor4[stor4.length].field_0
        if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
            stor4[arg1].field_1792 = stor4[stor4.length].field_0
            idx = 0
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4[arg1].field_1792 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
            if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                idx = 0
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32 > idx:
                    stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 2)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 7].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 7)].field_0 = 0
                    idx = idx + 1
                    continue 
        if 31 >= stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
            stor4[arg1].field_2048 = stor4[stor4.length].field_0
            idx = 0
            while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4[arg1].field_2048 = Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0) + 1
            if not Mask(255, 1, (256 * not bool(stor4[stor4.length].field_0)) - 1 and stor4[stor4.length].field_0):
                idx = 0
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32 > idx:
                    stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 1)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32
                while stor[(9 * arg1) + ('name', 'stor4', 4) + 8].length + 31 / 32 > idx:
                    stor[idx + sha3((9 * arg1) + ('name', 'stor4', 4) + 8)].field_0 = 0
                    idx = idx + 1
                    continue 
        require arg1 < stor4.length
        stor4[arg1].field_256 = arg1
        idx = 0
        while idx < stor11[address(stor4[arg1].field_768)].field_0:
            mem[0] = sha3(address(stor4[arg1].field_768), 11)
            if stor11[address(stor4[arg1].field_768)][idx].field_0 == stor4.length - 1:
                require idx < stor11[address(stor4[arg1].field_768)].field_0
                mem[0] = sha3(address(stor4[arg1].field_768), 11)
                stor11[address(stor4[arg1].field_768)][idx].field_0 = arg1
            idx = idx + 1
            continue 
        require stor4.length
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        address(stor4[stor4.length].field_0) = 0
        address(stor4[stor4.length].field_0) = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        stor4[stor4.length].field_0 = 0
        if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length:
            idx = 0
            while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 2].length + 31 / 32 > idx:
                stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 2)].field_0 = 0
                idx = idx + 1
                continue 
        stor4[stor4.length].field_0 = 0
        if 31 < stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length:
            idx = 0
            while stor[(9 * stor4.length) + ('name', 'stor4', 4) - 1].length + 31 / 32 > idx:
                stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) - 1)].field_0 = 0
                idx = idx + 1
                continue 
        stor4.length--
        emit Buy(stor4[arg1].field_512, stor4[arg1].field_1536, feeRate * stor4[arg1].field_1536 / 1000, stor4[arg1].field_0, msg.sender);
    stor0 = 1
}

function sub_be9c4ca1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.value < sub_35709028:
        revert with 0, 'your price is too low'
    if not stor5:
        revert with 0, 'sales are closed'
    if not tokenAddr:
        if not address(arg2):
            call feeReceiverAddress with:
               value sub_35709028 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = msg.sender
            mem[132] = arg1
            require ext_code.size(sub_64fde57cAddress)
            call sub_64fde57cAddress.0x6d0e0ba6 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 96] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
            require ext_code.size(sub_64fde57cAddress)
            staticcall sub_64fde57cAddress.0x8749fe53 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _57 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
            _72 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
            require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
            mem[(2 * ceil32(return_data.size)) + 96] = _72
            require _57 + _72 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_72)] = mem[ceil32(return_data.size) + _57 + 128 len ceil32(_72)]
            if ceil32(_72) > _72:
                mem[(2 * ceil32(return_data.size)) + _72 + 128] = 0
            require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
            require ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
            require mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] <= test266151307()
            require mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 <= test266151307()
            require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] + 32 <= return_data.size
        else:
            if rewardRate <= 0:
                call feeReceiverAddress with:
                   value sub_35709028 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[100] = msg.sender
                mem[132] = arg1
                require ext_code.size(sub_64fde57cAddress)
                call sub_64fde57cAddress.0x6d0e0ba6 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                require ext_code.size(sub_64fde57cAddress)
                staticcall sub_64fde57cAddress.0x8749fe53 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _63 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                _77 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                mem[(2 * ceil32(return_data.size)) + 96] = _77
                require _63 + _77 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_77)] = mem[ceil32(return_data.size) + _63 + 128 len ceil32(_77)]
                if ceil32(_77) > _77:
                    mem[(2 * ceil32(return_data.size)) + _77 + 128] = 0
                require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
                require ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                require mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] <= test266151307()
                require mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 <= test266151307()
                require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] + 32 <= return_data.size
            else:
                if not sub_35709028:
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    call feeReceiverAddress with:
                       value sub_35709028 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(arg2) with:
                         gas 2300 wei
                    mem[164] = msg.sender
                    mem[196] = arg1
                    require ext_code.size(sub_64fde57cAddress)
                    call sub_64fde57cAddress.0x6d0e0ba6 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    require ext_code.size(sub_64fde57cAddress)
                    staticcall sub_64fde57cAddress.0x8749fe53 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 64
                    _122 = mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 191 < ceil32(return_data.size) + return_data.size + 160
                    _136 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192
                    mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                    require _122 + _136 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_136)] = mem[ceil32(return_data.size) + _122 + 192 len ceil32(_136)]
                    if ceil32(_136) > _136:
                        mem[(2 * ceil32(return_data.size)) + _136 + 192] = 0
                else:
                    if rewardRate * sub_35709028 / sub_35709028 != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    call feeReceiverAddress with:
                       value sub_35709028 - (rewardRate * sub_35709028 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(arg2) with:
                       value rewardRate * sub_35709028 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    mem[164] = msg.sender
                    mem[196] = arg1
                    require ext_code.size(sub_64fde57cAddress)
                    call sub_64fde57cAddress.0x6d0e0ba6 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    require ext_code.size(sub_64fde57cAddress)
                    staticcall sub_64fde57cAddress.0x8749fe53 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 64
                    _131 = mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 191 < ceil32(return_data.size) + return_data.size + 160
                    _147 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192
                    mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                    require _131 + _147 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_147)] = mem[ceil32(return_data.size) + _131 + 192 len ceil32(_147)]
                    if ceil32(_147) > _147:
                        mem[(2 * ceil32(return_data.size)) + _147 + 192] = 0
                require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] <= test266151307()
                require ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 191 < ceil32(return_data.size) + return_data.size + 160
                require mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160] <= test266151307()
                require mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160]) + 32 <= test266151307()
                require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160] + 32 <= return_data.size
    else:
        if sub_b25bbbcf <= 0:
            if not address(arg2):
                call feeReceiverAddress with:
                   value sub_35709028 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[100] = msg.sender
                mem[132] = arg1
                require ext_code.size(sub_64fde57cAddress)
                call sub_64fde57cAddress.0x6d0e0ba6 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                require ext_code.size(sub_64fde57cAddress)
                staticcall sub_64fde57cAddress.0x8749fe53 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _64 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                _80 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                mem[(2 * ceil32(return_data.size)) + 96] = _80
                require _64 + _80 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)] = mem[ceil32(return_data.size) + _64 + 128 len ceil32(_80)]
                if ceil32(_80) > _80:
                    mem[(2 * ceil32(return_data.size)) + _80 + 128] = 0
                require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
                require ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                require mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] <= test266151307()
                require mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 <= test266151307()
                require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] + 32 <= return_data.size
            else:
                if rewardRate <= 0:
                    call feeReceiverAddress with:
                       value sub_35709028 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = msg.sender
                    mem[132] = arg1
                    require ext_code.size(sub_64fde57cAddress)
                    call sub_64fde57cAddress.0x6d0e0ba6 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 96] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                    require ext_code.size(sub_64fde57cAddress)
                    staticcall sub_64fde57cAddress.0x8749fe53 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _70 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _83 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                    mem[(2 * ceil32(return_data.size)) + 96] = _83
                    require _70 + _83 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_83)] = mem[ceil32(return_data.size) + _70 + 128 len ceil32(_83)]
                    if ceil32(_83) > _83:
                        mem[(2 * ceil32(return_data.size)) + _83 + 128] = 0
                    require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
                    require ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                    require mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] <= test266151307()
                    require mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96]) + 32 <= test266151307()
                    require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 132 len 28] + 96] + 32 <= return_data.size
                else:
                    if not sub_35709028:
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        call feeReceiverAddress with:
                           value sub_35709028 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg2) with:
                             gas 2300 wei
                        mem[164] = msg.sender
                        mem[196] = arg1
                        require ext_code.size(sub_64fde57cAddress)
                        call sub_64fde57cAddress.0x6d0e0ba6 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        require ext_code.size(sub_64fde57cAddress)
                        staticcall sub_64fde57cAddress.0x8749fe53 with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 160
                        require return_data.size >= 64
                        _129 = mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 191 < ceil32(return_data.size) + return_data.size + 160
                        _142 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                        require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192
                        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require _129 + _142 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_142)] = mem[ceil32(return_data.size) + _129 + 192 len ceil32(_142)]
                        if ceil32(_142) > _142:
                            mem[(2 * ceil32(return_data.size)) + _142 + 192] = 0
                    else:
                        if rewardRate * sub_35709028 / sub_35709028 != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        call feeReceiverAddress with:
                           value sub_35709028 - (rewardRate * sub_35709028 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg2) with:
                           value rewardRate * sub_35709028 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        mem[164] = msg.sender
                        mem[196] = arg1
                        require ext_code.size(sub_64fde57cAddress)
                        call sub_64fde57cAddress.0x6d0e0ba6 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        require ext_code.size(sub_64fde57cAddress)
                        staticcall sub_64fde57cAddress.0x8749fe53 with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 160
                        require return_data.size >= 64
                        _137 = mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 191 < ceil32(return_data.size) + return_data.size + 160
                        _152 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                        require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192
                        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require _137 + _152 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_152)] = mem[ceil32(return_data.size) + _137 + 192 len ceil32(_152)]
                        if ceil32(_152) > _152:
                            mem[(2 * ceil32(return_data.size)) + _152 + 192] = 0
                    require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] <= test266151307()
                    require ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 191 < ceil32(return_data.size) + return_data.size + 160
                    require mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160] <= test266151307()
                    require mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160]) + 32 <= test266151307()
                    require uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + mem[ceil32(return_data.size) + uint32(ext_call.return_data[0]), mem[ceil32(return_data.size) + 196 len 28] + 160] + 32 <= return_data.size
        else:
            mem[100] = msg.sender
            mem[132] = feeReceiverAddress
            mem[164] = sub_b25bbbcf
            require ext_code.size(tokenAddr)
            call tokenAddr.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feeReceiverAddress, sub_b25bbbcf
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not address(arg2):
                call feeReceiverAddress with:
                   value sub_35709028 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 100] = msg.sender
                mem[ceil32(return_data.size) + 132] = arg1
                require ext_code.size(sub_64fde57cAddress)
                call sub_64fde57cAddress.0x6d0e0ba6 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 96] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                require ext_code.size(sub_64fde57cAddress)
                staticcall sub_64fde57cAddress.0x8749fe53 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _123 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _138 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require _123 + _138 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_138)] = mem[(2 * ceil32(return_data.size)) + _123 + 128 len ceil32(_138)]
                if ceil32(_138) > _138:
                    mem[(4 * ceil32(return_data.size)) + _138 + 128] = 0
                require uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                require mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96] <= test266151307()
                require mem[64] + ceil32(mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96]) + 32 <= test266151307()
                require uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96] + 32 <= return_data.size
            else:
                if rewardRate <= 0:
                    call feeReceiverAddress with:
                       value sub_35709028 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(sub_64fde57cAddress)
                    call sub_64fde57cAddress.0x6d0e0ba6 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(sub_64fde57cAddress)
                    staticcall sub_64fde57cAddress.0x8749fe53 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _130 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _143 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                    require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require _130 + _143 + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_143)] = mem[(2 * ceil32(return_data.size)) + _130 + 128 len ceil32(_143)]
                    if ceil32(_143) > _143:
                        mem[(4 * ceil32(return_data.size)) + _143 + 128] = 0
                    require uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    require mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96] <= test266151307()
                    require mem[64] + ceil32(mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96]) + 32 <= test266151307()
                    require uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 132 len 28] + 96] + 32 <= return_data.size
                else:
                    if not sub_35709028:
                        mem[ceil32(return_data.size) + 96] = 26
                        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                        call feeReceiverAddress with:
                           value sub_35709028 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg2) with:
                             gas 2300 wei
                        mem[ceil32(return_data.size) + 164] = msg.sender
                        mem[ceil32(return_data.size) + 196] = arg1
                        require ext_code.size(sub_64fde57cAddress)
                        call sub_64fde57cAddress.0x6d0e0ba6 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(sub_64fde57cAddress)
                        staticcall sub_64fde57cAddress.0x8749fe53 with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 160
                        require return_data.size >= 64
                        _185 = mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 191 < (2 * ceil32(return_data.size)) + return_data.size + 160
                        _194 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                        require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192
                        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require _185 + _194 + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 192 len ceil32(_194)] = mem[(2 * ceil32(return_data.size)) + _185 + 192 len ceil32(_194)]
                        if ceil32(_194) > _194:
                            mem[(4 * ceil32(return_data.size)) + _194 + 192] = 0
                    else:
                        if rewardRate * sub_35709028 / sub_35709028 != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[ceil32(return_data.size) + 96] = 26
                        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                        call feeReceiverAddress with:
                           value sub_35709028 - (rewardRate * sub_35709028 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg2) with:
                           value rewardRate * sub_35709028 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        mem[ceil32(return_data.size) + 164] = msg.sender
                        mem[ceil32(return_data.size) + 196] = arg1
                        require ext_code.size(sub_64fde57cAddress)
                        call sub_64fde57cAddress.0x6d0e0ba6 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8749fe5300000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(sub_64fde57cAddress)
                        staticcall sub_64fde57cAddress.0x8749fe53 with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 160
                        require return_data.size >= 64
                        _189 = mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 191 < (2 * ceil32(return_data.size)) + return_data.size + 160
                        _208 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= test266151307()
                        require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 192
                        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
                        require _189 + _208 + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 192 len ceil32(_208)] = mem[(2 * ceil32(return_data.size)) + _189 + 192 len ceil32(_208)]
                        if ceil32(_208) > _208:
                            mem[(4 * ceil32(return_data.size)) + _208 + 192] = 0
                    require uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] + 191 < (2 * ceil32(return_data.size)) + return_data.size + 160
                    require mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] + 160] <= test266151307()
                    require mem[64] + ceil32(mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] + 160]) + 32 >= mem[64] and mem[64] + ceil32(mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] + 160]) + 32 <= test266151307()
                    require uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] + mem[(2 * ceil32(return_data.size)) + uint32(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 196 len 28] + 160] + 32 <= return_data.size
    emit 0xd36c15b7: ext_call.return_data[0], 0, block.timestamp, sub_35709028, sub_5748966c, sub_64fde57cAddress, msg.sender
    emit Buy(ext_call.return_data[0], sub_35709028, 0, sub_5748966c, msg.sender);
    sub_5748966c++
    stor0 = 1
}



}
