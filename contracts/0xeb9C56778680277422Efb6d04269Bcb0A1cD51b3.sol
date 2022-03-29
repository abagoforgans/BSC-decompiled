contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor8;
array of struct baseURI;
address owner;
uint256 tokenPrice;
uint256 softCapInTokens;
uint256 moneyCollectedAll;
uint256 moneyForCashback;
uint256 stor15;
uint256 maxSupply;
uint256 percentOfCashback;
mapping of uint256 cashbackOfToken;
mapping of uint256 withdrawForUserWhenRefund;
uint256 openCrowdsaleTime;
uint256 closeCrowdsaleTime;
array of uint256 defaultTokenURI;
uint256 maxTokensToBuyInTx;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function moneyCollectedAll() {
    return moneyCollectedAll
}

function closeCrowdsaleTime() {
    return closeCrowdsaleTime
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function maxTokensToBuyInTx() {
    return maxTokensToBuyInTx
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function cashbackOfToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return cashbackOfToken[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[183 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function defaultTokenURI() {
    return defaultTokenURI[0 len defaultTokenURI.length]
}

function percentOfCashback() {
    return percentOfCashback
}

function moneyForCashback() {
    return moneyForCashback
}

function withdrawForUserWhenRefund(address arg1) {
    require calldata.size - 4 >= 32
    return withdrawForUserWhenRefund[arg1]
}

function softCapInTokens() {
    return softCapInTokens
}

function maxSupply() {
    return maxSupply
}

function openCrowdsaleTime() {
    return openCrowdsaleTime
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isClosedCrowdsale() {
    if block.timestamp >= openCrowdsaleTime:
        if block.timestamp < closeCrowdsaleTime:
            if stor15 < maxSupply:
                return 0
    return 1
}

function setMaxTokensToBuyInTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTokensToBuyInTx = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function isRefund() {
    if block.timestamp >= openCrowdsaleTime:
        if block.timestamp >= closeCrowdsaleTime:
            if stor15 < softCapInTokens:
                return 1
        else:
            if stor15 < maxSupply:
                revert with 0, 'vipPaw: Crowdsale is not ended'
        return 0
    else:
        return 0
}

function setBaseUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setDefaultTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    defaultTokenURI[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    stor8[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[183 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[279 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function withdraw() {
    if block.timestamp >= openCrowdsaleTime:
        if block.timestamp < closeCrowdsaleTime:
            if stor15 < maxSupply:
                revert with 0, 'vipPaw: Crowdsale is not closed'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x737669705061773a2053656e646572206d757374206265206f776e6572206f662074686520636f6e74726163,
                    mem[208 len 20]
    if block.timestamp >= openCrowdsaleTime:
        if block.timestamp >= closeCrowdsaleTime:
            if stor15 < softCapInTokens:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x647669705061773a204f776e65722063616e206e6f74207769746864726177207768656e20697420697320726566756e,
                            mem[212 len 16]
        else:
            if stor15 < maxSupply:
                revert with 0, 'vipPaw: Crowdsale is not ended'
    if moneyForCashback > moneyCollectedAll:
        revert with 0, 'SafeMath: subtraction overflow'
    if moneyCollectedAll - moneyForCashback <= 0:
        revert with 0, 'vipPaw: Nothing to return'
    call msg.sender with:
       value moneyCollectedAll - moneyForCashback wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    moneyCollectedAll = moneyForCashback
}

function getCashback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not cashbackOfToken[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x747669705061773a205468657265206973206e6f20636173686261636b206f6e207468697320746f6b656e2069,
                    mem[209 len 19]
    if not stor3[arg1]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[183 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg1] - 1].field_256) != msg.sender:
        revert with 0, 32, 40, 0x737669705061773a2053656e646572206973206e6f74206f776e6572206f662074686520746f6b65, mem[300 len 24]
    call address(tokenByIndex[stor3[arg1] - 1].field_256) with:
       value cashbackOfToken[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if cashbackOfToken[arg1] > withdrawForUserWhenRefund[address(stor2[stor3[arg1] - 1].field_256)]:
        revert with 0, 'SafeMath: subtraction overflow'
    withdrawForUserWhenRefund[address(stor2[stor3[arg1] - 1].field_256)] -= cashbackOfToken[arg1]
    cashbackOfToken[arg1] = 0
    if cashbackOfToken[arg1] > moneyCollectedAll:
        revert with 0, 'SafeMath: subtraction overflow'
    moneyCollectedAll -= cashbackOfToken[arg1]
    if cashbackOfToken[arg1] > moneyForCashback:
        revert with 0, 'SafeMath: subtraction overflow'
    moneyForCashback -= cashbackOfToken[arg1]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[183 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor3[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[279 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x644552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    if not arg1:
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[375 len 9]
    else:
        if not arg2:
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[375 len 9]
        else:
            if not tokenPrice:
                if 0 > tokenPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cashbackOfToken[arg3] + tokenPrice < tokenPrice:
                    revert with 0, 'SafeMath: addition overflow'
                if cashbackOfToken[arg3] + tokenPrice > withdrawForUserWhenRefund[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                withdrawForUserWhenRefund[address(arg1)] = withdrawForUserWhenRefund[address(arg1)] - cashbackOfToken[arg3] - tokenPrice
                if cashbackOfToken[arg3] + tokenPrice + withdrawForUserWhenRefund[arg2] < withdrawForUserWhenRefund[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                withdrawForUserWhenRefund[address(arg2)] = cashbackOfToken[arg3] + tokenPrice + withdrawForUserWhenRefund[arg2]
            else:
                if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cashbackOfToken[arg3] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if cashbackOfToken[arg3] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > withdrawForUserWhenRefund[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                withdrawForUserWhenRefund[address(arg1)] = withdrawForUserWhenRefund[address(arg1)] - cashbackOfToken[arg3] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                if cashbackOfToken[arg3] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + withdrawForUserWhenRefund[arg2] < withdrawForUserWhenRefund[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                withdrawForUserWhenRefund[address(arg2)] = cashbackOfToken[arg3] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + withdrawForUserWhenRefund[arg2]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[567 len 9]
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'stor3', 3))))
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[64] = ceil32(stor8[arg1].length) + 128
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var24001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length:
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[96]) + -(mem[96] % 32) + 192 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1006 = mem[64]
        mem[64] = mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 160
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 160] = 32
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1083 = mem[_1006]
        mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1083 % 32:
            return 32, mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192 len _1083 + 32]
        mem[floor32(_1083) + mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 224] = mem[floor32(_1083) + mem[96] + ceil32(stor8[arg1].length) + baseURI.length + -(_1083 % 32) + 256 len _1083 % 32]
        return 32, mem[mem[96] + ceil32(stor8[arg1].length) + baseURI.length + 192 len floor32(_1083) + 64]
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + 192
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = '0'
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1048 = mem[_1002]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1048 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len _1048 + 32]
        mem[floor32(_1048) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288] = mem[floor32(_1048) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + -(_1048 % 32) + 320 len _1048 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len floor32(_1048) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1246 = mem[_1232]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1246 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1246 + 32], 
        mem[floor32(_1246) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1246) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1246 % 32) + 288 len _1246 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1246) + 64], 
    mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1249 = mem[_1236]
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1249 % 32:
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1249 + 32], 
    mem[floor32(_1249) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1249) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1249 % 32) + 288 len _1249 % 32]
    return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1249) + 64], 
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < openCrowdsaleTime:
        revert with 0, 'vipPaw: Crowdsale is closed'
    if block.timestamp >= closeCrowdsaleTime:
        revert with 0, 'vipPaw: Crowdsale is closed'
    if stor15 >= maxSupply:
        revert with 0, 'vipPaw: Crowdsale is closed'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x647669705061773a2057726f6e6720616d6f756e74206f6620746f6b656e7320746f2070757263686173,
                    mem[206 len 22]
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if stor15 > maxSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > maxSupply - stor15:
        revert with 0, 32, 42, 0x647669705061773a2057726f6e6720616d6f756e74206f6620746f6b656e7320746f2070757263686173, mem[270 len 22]
    if not tokenPrice:
        if msg.value:
            revert with 0, 'vipPaw: Wrong amount of money'
        if not tokenPrice:
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            idx = 0
            while idx < arg1:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[stor15]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor15]:
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1130 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1130] = defaultTokenURI.length
                        mem[_1130 + 32] = defaultTokenURI
                        s = _1130 + 32
                        t = sha3(22)
                        while _1130 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1130 + 32
                        while _1130 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1067 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1067] = stor15
                        mem[_1067 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1113 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1113] = defaultTokenURI.length
                        mem[_1113 + 32] = defaultTokenURI
                        s = _1113 + 32
                        t = sha3(22)
                        while _1113 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1113 + 32
                        while _1113 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor15] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1132 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1132] = defaultTokenURI.length
                        mem[_1132 + 32] = defaultTokenURI
                        s = _1132 + 32
                        t = sha3(22)
                        while _1132 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1132 + 32
                        while _1132 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1072 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1072] = stor15
                        mem[_1072 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1116 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1116] = defaultTokenURI.length
                        mem[_1116 + 32] = defaultTokenURI
                        s = _1116 + 32
                        t = sha3(22)
                        while _1116 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1116 + 32
                        while _1116 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                s = sha3(sha3(stor15, 8)) + (Mask(251, 0, defaultTokenURI.length + 31) >> 5)
                while sha3(sha3(stor15, 8)) + (stor8[stor15].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if stor15 + 1 < stor15:
                    revert with 0, 'SafeMath: addition overflow'
                stor15++
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if moneyForCashback < moneyForCashback:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            idx = 0
            while idx < arg1:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[stor15]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor15]:
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1126] = defaultTokenURI.length
                        mem[_1126 + 32] = defaultTokenURI
                        s = _1126 + 32
                        t = sha3(22)
                        while _1126 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1126 + 32
                        while _1126 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1057] = stor15
                        mem[_1057 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1107 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1107] = defaultTokenURI.length
                        mem[_1107 + 32] = defaultTokenURI
                        s = _1107 + 32
                        t = sha3(22)
                        while _1107 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1107 + 32
                        while _1107 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor15] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1128 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1128] = defaultTokenURI.length
                        mem[_1128 + 32] = defaultTokenURI
                        s = _1128 + 32
                        t = sha3(22)
                        while _1128 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1128 + 32
                        while _1128 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1062 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1062] = stor15
                        mem[_1062 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1110 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1110] = defaultTokenURI.length
                        mem[_1110 + 32] = defaultTokenURI
                        s = _1110 + 32
                        t = sha3(22)
                        while _1110 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1110 + 32
                        while _1110 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                s = sha3(sha3(stor15, 8)) + (Mask(251, 0, defaultTokenURI.length + 31) >> 5)
                while sha3(sha3(stor15, 8)) + (stor8[stor15].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if stor15 + 1 < stor15:
                    revert with 0, 'SafeMath: addition overflow'
                stor15++
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if not percentOfCashback * tokenPrice / 1000:
                if moneyForCashback < moneyForCashback:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg1 * percentOfCashback * tokenPrice / 1000 / percentOfCashback * tokenPrice / 1000 != arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (arg1 * percentOfCashback * tokenPrice / 1000) + moneyForCashback < moneyForCashback:
                    revert with 0, 'SafeMath: addition overflow'
                moneyForCashback += arg1 * percentOfCashback * tokenPrice / 1000
    else:
        if arg1 * tokenPrice / tokenPrice != arg1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg1 * tokenPrice != msg.value:
            revert with 0, 'vipPaw: Wrong amount of money'
        if not tokenPrice:
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            idx = 0
            while idx < arg1:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[stor15]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor15]:
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1122 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1122] = defaultTokenURI.length
                        mem[_1122 + 32] = defaultTokenURI
                        s = _1122 + 32
                        t = sha3(22)
                        while _1122 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1122 + 32
                        while _1122 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1047] = stor15
                        mem[_1047 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1101 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1101] = defaultTokenURI.length
                        mem[_1101 + 32] = defaultTokenURI
                        s = _1101 + 32
                        t = sha3(22)
                        while _1101 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1101 + 32
                        while _1101 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor15] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1124 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1124] = defaultTokenURI.length
                        mem[_1124 + 32] = defaultTokenURI
                        s = _1124 + 32
                        t = sha3(22)
                        while _1124 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1124 + 32
                        while _1124 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1052 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1052] = stor15
                        mem[_1052 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = 0
                        _1104 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1104] = defaultTokenURI.length
                        mem[_1104 + 32] = defaultTokenURI
                        s = _1104 + 32
                        t = sha3(22)
                        while _1104 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1104 + 32
                        while _1104 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                s = sha3(sha3(stor15, 8)) + (Mask(251, 0, defaultTokenURI.length + 31) >> 5)
                while sha3(sha3(stor15, 8)) + (stor8[stor15].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if stor15 + 1 < stor15:
                    revert with 0, 'SafeMath: addition overflow'
                stor15++
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if moneyForCashback < moneyForCashback:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            idx = 0
            while idx < arg1:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor3[stor15]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor15]:
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1118 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1118] = defaultTokenURI.length
                        mem[_1118 + 32] = defaultTokenURI
                        s = _1118 + 32
                        t = sha3(22)
                        while _1118 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1118 + 32
                        while _1118 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1037] = stor15
                        mem[_1037 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1095 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1095] = defaultTokenURI.length
                        mem[_1095 + 32] = defaultTokenURI
                        s = _1095 + 32
                        t = sha3(22)
                        while _1095 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1095 + 32
                        while _1095 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor15] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = stor15
                    mem[32] = 3
                    if stor3[stor15]:
                        require stor3[stor15] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[stor15] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor3[stor15] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1120 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1120] = defaultTokenURI.length
                        mem[_1120 + 32] = defaultTokenURI
                        s = _1120 + 32
                        t = sha3(22)
                        while _1120 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1120 + 32
                        while _1120 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                    else:
                        _1042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1042] = stor15
                        mem[_1042 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[stor15] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15);
                        mem[0] = stor15
                        mem[32] = 18
                        cashbackOfToken[stor15] = percentOfCashback * tokenPrice / 1000
                        _1098 = mem[64]
                        mem[64] = mem[64] + ceil32(defaultTokenURI.length) + 32
                        mem[_1098] = defaultTokenURI.length
                        mem[_1098 + 32] = defaultTokenURI
                        s = _1098 + 32
                        t = sha3(22)
                        while _1098 + defaultTokenURI.length > s:
                            mem[s + 32] = tokenOfOwnerByIndex[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if not stor3[stor15]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor15, 8)
                        stor8[stor15].field_0 = (2 * defaultTokenURI.length) + 1
                        t = sha3(sha3(stor15, 8))
                        s = _1098 + 32
                        while _1098 + defaultTokenURI.length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                s = sha3(sha3(stor15, 8)) + (Mask(251, 0, defaultTokenURI.length + 31) >> 5)
                while sha3(sha3(stor15, 8)) + (stor8[stor15].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if stor15 + 1 < stor15:
                    revert with 0, 'SafeMath: addition overflow'
                stor15++
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if not percentOfCashback * tokenPrice / 1000:
                if moneyForCashback < moneyForCashback:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg1 * percentOfCashback * tokenPrice / 1000 / percentOfCashback * tokenPrice / 1000 != arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (arg1 * percentOfCashback * tokenPrice / 1000) + moneyForCashback < moneyForCashback:
                    revert with 0, 'SafeMath: addition overflow'
                moneyForCashback += arg1 * percentOfCashback * tokenPrice / 1000
    if msg.value + moneyCollectedAll < moneyCollectedAll:
        revert with 0, 'SafeMath: addition overflow'
    moneyCollectedAll += msg.value
    if msg.value + withdrawForUserWhenRefund[address(msg.sender)] < withdrawForUserWhenRefund[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    withdrawForUserWhenRefund[address(msg.sender)] += msg.value
    emit TokensPurchased(msg.sender, arg1, block.timestamp);
}

function burnTokensToRefund(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < openCrowdsaleTime:
        if block.timestamp < openCrowdsaleTime:
            revert with 0, 'vipPaw: Can not refund'
        if block.timestamp < closeCrowdsaleTime:
            if stor15 < maxSupply:
                revert with 0, 'vipPaw: Crowdsale is not ended'
            revert with 0, 'vipPaw: Can not refund'
        if stor15 >= softCapInTokens:
            revert with 0, 'vipPaw: Can not refund'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[206 len 22]
        mem[0] = msg.sender
        mem[32] = 1
        if tokenOfOwnerByIndex[address(msg.sender)] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x657669705061773a204e65656420746f2068617665207669702070617720636172647320746f20726566756e,
                        mem[208 len 20]
        if tokenOfOwnerByIndex[address(msg.sender)] < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x737669705061773a20446f6573206e6f7420686176652074686973206d75636820746f6b656e,
                        mem[202 len 26]
        if arg1:
            if not tokenPrice:
                mem[64] = 160
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                idx = 0
                s = 0
                s = 0
                t = 0
                while idx < arg1:
                    if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _16626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16626] = 30
                    mem[_16626 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > tokenPrice:
                        _16788 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16788 + 68] = mem[idx + _16626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16788 + 68] = mem[_16788 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16788 + -mem[64] + 100
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice < tokenPrice:
                        revert with 0, 'SafeMath: addition overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _17394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17394] = 30
                    mem[_17394 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice > moneyCollectedAll:
                        _17556 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17556 + 68] = mem[idx + _17394 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17556 + 68] = mem[_17556 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17556 + -mem[64] + 100
                    moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _17955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17955] = 30
                    mem[_17955 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                        _18132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _18132 + 68] = mem[idx + _17955 + 32]
                            idx = idx + 32
                            continue 
                        mem[_18132 + 68] = mem[_18132 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _18132 + -mem[64] + 100
                    moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    cashbackOfToken[stor1[address(msg.sender)]] = 0
                    _18546 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_18546] = 41
                    mem[_18546 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    if not stor3[stor1[address(msg.sender)]]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 41
                        mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                        idx = 32
                        while idx < 41:
                            mem[idx + mem[64] + 68] = mem[idx + _18546 + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 4
                    approved[stor1[address(msg.sender)]] = 0
                    if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                        _19555 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19555] = 41
                        mem[_19555 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19555 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    else:
                        _19634 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19634] = 41
                        mem[_19634 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19634 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                        stor8[stor1[address(msg.sender)]].field_0 = 0
                        if 31 < stor8[stor1[address(msg.sender)]].length:
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                            while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 3
                    if stor3[stor1[address(msg.sender)]]:
                        require tokenByIndex.length - 1 < tokenByIndex.length
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                        stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                        require tokenByIndex.length
                        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                        tokenByIndex.length--
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        stor3[stor1[address(msg.sender)]] = 0
                    emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tokenOfOwnerByIndex[address(msg.sender)]
                    s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s
                    t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice
                    continue 
            else:
                if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                mem[64] = 160
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                idx = 0
                s = 0
                s = 0
                t = 0
                while idx < arg1:
                    if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _16625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16625] = 30
                    mem[_16625 + 32] = 'SafeMath: subtraction overflow'
                    if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                        _16785 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16785 + 68] = mem[idx + _16625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16785 + 68] = mem[_16785 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16785 + -mem[64] + 100
                    if cashbackOfToken[stor1[address(msg.sender)]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _17393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17393] = 30
                    mem[_17393 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > moneyCollectedAll:
                        _17553 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17553 + 68] = mem[idx + _17393 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17553 + 68] = mem[_17553 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17553 + -mem[64] + 100
                    moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _17953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17953] = 30
                    mem[_17953 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                        _18129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _18129 + 68] = mem[idx + _17953 + 32]
                            idx = idx + 32
                            continue 
                        mem[_18129 + 68] = mem[_18129 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _18129 + -mem[64] + 100
                    moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    cashbackOfToken[stor1[address(msg.sender)]] = 0
                    _18545 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_18545] = 41
                    mem[_18545 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    if not stor3[stor1[address(msg.sender)]]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 41
                        mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                        idx = 32
                        while idx < 41:
                            mem[idx + mem[64] + 68] = mem[idx + _18545 + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 4
                    approved[stor1[address(msg.sender)]] = 0
                    if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                        _19553 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19553] = 41
                        mem[_19553 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19553 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    else:
                        _19633 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19633] = 41
                        mem[_19633 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19633 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                        stor8[stor1[address(msg.sender)]].field_0 = 0
                        if 31 < stor8[stor1[address(msg.sender)]].length:
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                            while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 3
                    if stor3[stor1[address(msg.sender)]]:
                        require tokenByIndex.length - 1 < tokenByIndex.length
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                        stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                        require tokenByIndex.length
                        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                        tokenByIndex.length--
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        stor3[stor1[address(msg.sender)]] = 0
                    emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tokenOfOwnerByIndex[address(msg.sender)]
                    s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s
                    t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000)
                    continue 
        else:
            if not tokenPrice:
                mem[64] = 160
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                idx = 0
                s = 0
                s = 0
                t = 0
                while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                    if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _16628 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16628] = 30
                    mem[_16628 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > tokenPrice:
                        _16794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16794 + 68] = mem[idx + _16628 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16794 + 68] = mem[_16794 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16794 + -mem[64] + 100
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice < tokenPrice:
                        revert with 0, 'SafeMath: addition overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _17396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17396] = 30
                    mem[_17396 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice > moneyCollectedAll:
                        _17562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17562 + 68] = mem[idx + _17396 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17562 + 68] = mem[_17562 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17562 + -mem[64] + 100
                    moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _17959 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17959] = 30
                    mem[_17959 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                        _18138 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _18138 + 68] = mem[idx + _17959 + 32]
                            idx = idx + 32
                            continue 
                        mem[_18138 + 68] = mem[_18138 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _18138 + -mem[64] + 100
                    moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    cashbackOfToken[stor1[address(msg.sender)]] = 0
                    _18548 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_18548] = 41
                    mem[_18548 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    if not stor3[stor1[address(msg.sender)]]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 41
                        mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                        idx = 32
                        while idx < 41:
                            mem[idx + mem[64] + 68] = mem[idx + _18548 + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 4
                    approved[stor1[address(msg.sender)]] = 0
                    if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                        _19559 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19559] = 41
                        mem[_19559 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19559 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    else:
                        _19636 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19636] = 41
                        mem[_19636 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19636 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                        stor8[stor1[address(msg.sender)]].field_0 = 0
                        if 31 < stor8[stor1[address(msg.sender)]].length:
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                            while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 3
                    if stor3[stor1[address(msg.sender)]]:
                        require tokenByIndex.length - 1 < tokenByIndex.length
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                        stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                        require tokenByIndex.length
                        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                        tokenByIndex.length--
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        stor3[stor1[address(msg.sender)]] = 0
                    emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tokenOfOwnerByIndex[address(msg.sender)]
                    s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s
                    t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice
                    continue 
            else:
                if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                mem[64] = 160
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                idx = 0
                s = 0
                s = 0
                t = 0
                while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                    if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _16627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16627] = 30
                    mem[_16627 + 32] = 'SafeMath: subtraction overflow'
                    if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                        _16791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16791 + 68] = mem[idx + _16627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16791 + 68] = mem[_16791 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16791 + -mem[64] + 100
                    if cashbackOfToken[stor1[address(msg.sender)]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    _17395 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17395] = 30
                    mem[_17395 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > moneyCollectedAll:
                        _17559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17559 + 68] = mem[idx + _17395 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17559 + 68] = mem[_17559 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17559 + -mem[64] + 100
                    moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    _17957 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17957] = 30
                    mem[_17957 + 32] = 'SafeMath: subtraction overflow'
                    if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                        _18135 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _18135 + 68] = mem[idx + _17957 + 32]
                            idx = idx + 32
                            continue 
                        mem[_18135 + 68] = mem[_18135 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _18135 + -mem[64] + 100
                    moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 18
                    cashbackOfToken[stor1[address(msg.sender)]] = 0
                    _18547 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_18547] = 41
                    mem[_18547 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    if not stor3[stor1[address(msg.sender)]]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 41
                        mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                        idx = 32
                        while idx < 41:
                            mem[idx + mem[64] + 68] = mem[idx + _18547 + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 4
                    approved[stor1[address(msg.sender)]] = 0
                    if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                        _19557 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19557] = 41
                        mem[_19557 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19557 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    else:
                        _19635 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_19635] = 41
                        mem[_19635 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _19635 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                    ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                    require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                    emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                        stor8[stor1[address(msg.sender)]].field_0 = 0
                        if 31 < stor8[stor1[address(msg.sender)]].length:
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                            while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                        require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                        tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 3
                    if stor3[stor1[address(msg.sender)]]:
                        require tokenByIndex.length - 1 < tokenByIndex.length
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                        tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                        stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                        require tokenByIndex.length
                        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                        tokenByIndex.length--
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        stor3[stor1[address(msg.sender)]] = 0
                    emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tokenOfOwnerByIndex[address(msg.sender)]
                    s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s
                    t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000)
                    continue 
    else:
        if block.timestamp >= closeCrowdsaleTime:
            if block.timestamp < openCrowdsaleTime:
                revert with 0, 'vipPaw: Can not refund'
            if block.timestamp < closeCrowdsaleTime:
                if stor15 < maxSupply:
                    revert with 0, 'vipPaw: Crowdsale is not ended'
                revert with 0, 'vipPaw: Can not refund'
            if stor15 >= softCapInTokens:
                revert with 0, 'vipPaw: Can not refund'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[206 len 22]
            mem[0] = msg.sender
            mem[32] = 1
            if tokenOfOwnerByIndex[address(msg.sender)] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x657669705061773a204e65656420746f2068617665207669702070617720636172647320746f20726566756e,
                            mem[208 len 20]
            if tokenOfOwnerByIndex[address(msg.sender)] < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x737669705061773a20446f6573206e6f7420686176652074686973206d75636820746f6b656e,
                            mem[202 len 26]
            if arg1:
                if not tokenPrice:
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < arg1:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16578] = 30
                        mem[_16578 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > tokenPrice:
                            _16644 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16644 + 68] = mem[idx + _16578 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16644 + 68] = mem[_16644 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16644 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice < tokenPrice:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17346] = 30
                        mem[_17346 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice > moneyCollectedAll:
                            _17412 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17412 + 68] = mem[idx + _17346 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17412 + 68] = mem[_17412 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17412 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17859] = 30
                        mem[_17859 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _17988 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17988 + 68] = mem[idx + _17859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17988 + 68] = mem[_17988 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17988 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18498 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18498] = 41
                        mem[_18498 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18498 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19459 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19459] = 41
                            mem[_19459 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19459 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19586 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19586] = 41
                            mem[_19586 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19586 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice
                        continue 
                else:
                    if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < arg1:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16577] = 30
                        mem[_16577 + 32] = 'SafeMath: subtraction overflow'
                        if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                            _16641 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16641 + 68] = mem[idx + _16577 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16641 + 68] = mem[_16641 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16641 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17345] = 30
                        mem[_17345 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > moneyCollectedAll:
                            _17409 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17409 + 68] = mem[idx + _17345 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17409 + 68] = mem[_17409 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17409 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17857] = 30
                        mem[_17857 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _17985 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17985 + 68] = mem[idx + _17857 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17985 + 68] = mem[_17985 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17985 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18497 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18497] = 41
                        mem[_18497 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18497 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19457 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19457] = 41
                            mem[_19457 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19457 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19585 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19585] = 41
                            mem[_19585 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19585 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000)
                        continue 
            else:
                if not tokenPrice:
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16580] = 30
                        mem[_16580 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > tokenPrice:
                            _16650 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16650 + 68] = mem[idx + _16580 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16650 + 68] = mem[_16650 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16650 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice < tokenPrice:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17348] = 30
                        mem[_17348 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice > moneyCollectedAll:
                            _17418 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17418 + 68] = mem[idx + _17348 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17418 + 68] = mem[_17418 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17418 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17863 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17863] = 30
                        mem[_17863 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _17994 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17994 + 68] = mem[idx + _17863 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17994 + 68] = mem[_17994 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17994 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18500 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18500] = 41
                        mem[_18500 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18500 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19463 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19463] = 41
                            mem[_19463 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19463 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19588 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19588] = 41
                            mem[_19588 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19588 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice
                        continue 
                else:
                    if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16579] = 30
                        mem[_16579 + 32] = 'SafeMath: subtraction overflow'
                        if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                            _16647 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16647 + 68] = mem[idx + _16579 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16647 + 68] = mem[_16647 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16647 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17347] = 30
                        mem[_17347 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > moneyCollectedAll:
                            _17415 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17415 + 68] = mem[idx + _17347 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17415 + 68] = mem[_17415 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17415 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17861 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17861] = 30
                        mem[_17861 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _17991 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17991 + 68] = mem[idx + _17861 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17991 + 68] = mem[_17991 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17991 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18499 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18499] = 41
                        mem[_18499 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18499 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19461 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19461] = 41
                            mem[_19461 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19461 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19587 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19587] = 41
                            mem[_19587 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19587 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000)
                        continue 
        else:
            if stor15 < maxSupply:
                revert with 0, 'vipPaw: Crowdsale is not closed'
            if block.timestamp < openCrowdsaleTime:
                revert with 0, 'vipPaw: Can not refund'
            if block.timestamp < closeCrowdsaleTime:
                if stor15 < maxSupply:
                    revert with 0, 'vipPaw: Crowdsale is not ended'
                revert with 0, 'vipPaw: Can not refund'
            if stor15 >= softCapInTokens:
                revert with 0, 'vipPaw: Can not refund'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[206 len 22]
            mem[0] = msg.sender
            mem[32] = 1
            if tokenOfOwnerByIndex[address(msg.sender)] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x657669705061773a204e65656420746f2068617665207669702070617720636172647320746f20726566756e,
                            mem[208 len 20]
            if tokenOfOwnerByIndex[address(msg.sender)] < arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x737669705061773a20446f6573206e6f7420686176652074686973206d75636820746f6b656e,
                            mem[202 len 26]
            if arg1:
                if not tokenPrice:
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < arg1:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16610] = 30
                        mem[_16610 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > tokenPrice:
                            _16740 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16740 + 68] = mem[idx + _16610 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16740 + 68] = mem[_16740 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16740 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice < tokenPrice:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17378] = 30
                        mem[_17378 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice > moneyCollectedAll:
                            _17508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17508 + 68] = mem[idx + _17378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17508 + 68] = mem[_17508 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17508 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17923 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17923] = 30
                        mem[_17923 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _18084 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _18084 + 68] = mem[idx + _17923 + 32]
                                idx = idx + 32
                                continue 
                            mem[_18084 + 68] = mem[_18084 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _18084 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18530 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18530] = 41
                        mem[_18530 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18530 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19523 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19523] = 41
                            mem[_19523 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19523 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19618 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19618] = 41
                            mem[_19618 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice
                        continue 
                else:
                    if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < arg1:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16609] = 30
                        mem[_16609 + 32] = 'SafeMath: subtraction overflow'
                        if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                            _16737 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16737 + 68] = mem[idx + _16609 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16737 + 68] = mem[_16737 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16737 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17377 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17377] = 30
                        mem[_17377 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > moneyCollectedAll:
                            _17505 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17505 + 68] = mem[idx + _17377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17505 + 68] = mem[_17505 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17505 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17921] = 30
                        mem[_17921 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _18081 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _18081 + 68] = mem[idx + _17921 + 32]
                                idx = idx + 32
                                continue 
                            mem[_18081 + 68] = mem[_18081 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _18081 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18529 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18529] = 41
                        mem[_18529 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18529 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19521 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19521] = 41
                            mem[_19521 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19521 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19617 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19617] = 41
                            mem[_19617 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19617 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000)
                        continue 
            else:
                if not tokenPrice:
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16612 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16612] = 30
                        mem[_16612 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > tokenPrice:
                            _16746 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16746 + 68] = mem[idx + _16612 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16746 + 68] = mem[_16746 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16746 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice < tokenPrice:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17380] = 30
                        mem[_17380 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice > moneyCollectedAll:
                            _17514 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17514 + 68] = mem[idx + _17380 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17514 + 68] = mem[_17514 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17514 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17927 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17927] = 30
                        mem[_17927 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _18090 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _18090 + 68] = mem[idx + _17927 + 32]
                                idx = idx + 32
                                continue 
                            mem[_18090 + 68] = mem[_18090 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _18090 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18532 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18532] = 41
                        mem[_18532 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18532 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19527 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19527] = 41
                            mem[_19527 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19527 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19620 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19620] = 41
                            mem[_19620 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19620 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice
                        continue 
                else:
                    if percentOfCashback * tokenPrice / tokenPrice != percentOfCashback:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    mem[64] = 160
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    idx = 0
                    s = 0
                    s = 0
                    t = 0
                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                        if 0 >= tokenOfOwnerByIndex[address(msg.sender)]:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _16611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16611] = 30
                        mem[_16611 + 32] = 'SafeMath: subtraction overflow'
                        if percentOfCashback * tokenPrice / 1000 > tokenPrice:
                            _16743 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16743 + 68] = mem[idx + _16611 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16743 + 68] = mem[_16743 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16743 + -mem[64] + 100
                        if cashbackOfToken[stor1[address(msg.sender)]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        _17379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17379] = 30
                        mem[_17379 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) > moneyCollectedAll:
                            _17511 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17511 + 68] = mem[idx + _17379 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17511 + 68] = mem[_17511 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17511 + -mem[64] + 100
                        moneyCollectedAll = moneyCollectedAll - cashbackOfToken[stor1[address(msg.sender)]] - tokenPrice + (percentOfCashback * tokenPrice / 1000)
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        _17925 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_17925] = 30
                        mem[_17925 + 32] = 'SafeMath: subtraction overflow'
                        if cashbackOfToken[stor1[address(msg.sender)]] > moneyForCashback:
                            _18087 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _18087 + 68] = mem[idx + _17925 + 32]
                                idx = idx + 32
                                continue 
                            mem[_18087 + 68] = mem[_18087 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _18087 + -mem[64] + 100
                        moneyForCashback -= cashbackOfToken[stor1[address(msg.sender)]]
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 18
                        cashbackOfToken[stor1[address(msg.sender)]] = 0
                        _18531 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_18531] = 41
                        mem[_18531 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                        if not stor3[stor1[address(msg.sender)]]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 41
                            mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                            idx = 32
                            while idx < 41:
                                mem[idx + mem[64] + 68] = mem[idx + _18531 + 32]
                                idx = idx + 32
                                continue 
                            mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 4
                        approved[stor1[address(msg.sender)]] = 0
                        if not address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256):
                            _19525 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19525] = 41
                            mem[_19525 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19525 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        else:
                            _19619 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_19619] = 41
                            mem[_19619 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                            if not stor3[stor1[address(msg.sender)]]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 41
                                mem[mem[64] + 68] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973
                                idx = 32
                                while idx < 41:
                                    mem[idx + mem[64] + 68] = mem[idx + _19619 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[mem[64] + 100] = mem[mem[64] + 123 len 9]
                                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e65786973, mem[mem[64] + 100]
                        ('stor', ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))), ('name', 'stor3', 3)))
                        require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                        emit Approval(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if Mask(255, 1, stor8[stor1[address(msg.sender)]].field_0 and (256 * not bool(stor8[stor1[address(msg.sender)]].field_0)) - 1):
                            stor8[stor1[address(msg.sender)]].field_0 = 0
                            if 31 < stor8[stor1[address(msg.sender)]].length:
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8))
                                while sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)], 8)) + (stor8[stor1[address(msg.sender)]].length + 31 / 32) > t:
                                    stor[t] = 0
                                    t = t + 1
                                    continue 
                        if tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]:
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]]
                            require tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]] = 0
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)]--
                            tokenOfOwnerByIndex[address(stor2[stor3[tokenOfOwnerByIndex[address(msg.sender)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(msg.sender)]] = 0
                        mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 3
                        if stor3[stor1[address(msg.sender)]]:
                            require tokenByIndex.length - 1 < tokenByIndex.length
                            require stor3[stor1[address(msg.sender)]] - 1 < tokenByIndex.length
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
                            tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
                            stor3[stor2[stor2.length - 1].field_0] = stor3[stor1[address(msg.sender)]]
                            require tokenByIndex.length
                            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
                            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
                            tokenByIndex.length--
                            mem[0] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[32] = 3
                            stor3[stor1[address(msg.sender)]] = 0
                        emit Transfer(address(tokenByIndex[stor3[stor1[address(msg.sender)]] - 1].field_256), 0, tokenOfOwnerByIndex[address(msg.sender)]);
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = tokenOfOwnerByIndex[address(msg.sender)]
                        s = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000) + s
                        t = cashbackOfToken[stor1[address(msg.sender)]] + tokenPrice - (percentOfCashback * tokenPrice / 1000)
                        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if s > withdrawForUserWhenRefund[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    withdrawForUserWhenRefund[address(msg.sender)] -= s
}



}
