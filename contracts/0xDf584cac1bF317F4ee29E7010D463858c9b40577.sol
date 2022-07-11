contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, uint256 arg2)
#
address owner;
address paymentTokenAddress;
address tierContractAddress;
mapping of uint8 stor3;
mapping of uint256 sub_2ae1eb03;
array of uint256 sub_057cffb5;
mapping of uint8 stor6;
uint8 stor8;
uint64 saleStartTimestamp; offset 8
uint64 saleEndTimestamp; offset 72
uint64 withdrawTimestamp; offset 136
uint256 stor8;
mapping of uint256 stor9;
uint256 sub_f6c4389c;
array of address nftContracts;
mapping of uint8 stor12;
mapping of uint8 stor14;
array of struct sub_3eef90db;
array of struct sub_35d7cbb7;
mapping of uint8 stor17;
array of struct sub_f2d19a24;
mapping of uint8 stor19;
mapping of uint256 sub_70da64d6;
mapping of uint256 sub_88aed112;
mapping of uint256 sub_9ee44e53;
uint256 sub_18bf006a;
uint256 sub_9a14b37b;
array of address sub_fb150014;
array of address sub_13b6bd63;
mapping of uint8 stor27;
mapping of uint8 stor28;
uint256 sub_4b7eb60b;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_057cffb5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_057cffb5.length
    return sub_057cffb5[arg1]
}

function nftContracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < nftContracts.length
    return nftContracts[arg1]
}

function sub_0d35b996(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor17[arg1][arg2][arg3])
}

function sub_13b6bd63(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_13b6bd63.length
    return sub_13b6bd63[arg1]
}

function sub_18bf006a(?) {
    return sub_18bf006a
}

function sub_251d69e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function sub_2a94caf8(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_2ae1eb03(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2ae1eb03[arg1]
}

function paymentToken() {
    return paymentTokenAddress
}

function sub_35d7cbb7(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 < sub_35d7cbb7[arg1][arg2].field_0
    return sub_35d7cbb7[arg1][arg2][arg3].field_0
}

function saleStartTimestamp() {
    return saleStartTimestamp
}

function sub_3eef90db(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_3eef90db[arg1].field_0
    return sub_3eef90db[arg1][arg2].field_0
}

function sub_4b7eb60b(?) {
    return sub_4b7eb60b
}

function withdrawTimestamp() {
    return withdrawTimestamp
}

function sub_6fdcbef4(?) {
    return bool(uint8(stor8.field_0))
}

function sub_70da64d6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_70da64d6[arg1][arg2]
}

function sub_77550b3e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor19[arg1][arg2])
}

function sub_8784bbc5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor27[arg1])
}

function sub_88aed112(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_88aed112[arg1][arg2]
}

function owner() {
    return owner
}

function groups(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < groups.length
    return address(groups[arg1].field_0), groups[arg1].field_256, groups[arg1].field_512, groups[arg1].field_768
}

function sub_9a14b37b(?) {
    return sub_9a14b37b
}

function isAddressInWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_9ee44e53(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9ee44e53[arg1]
}

function tierContract() {
    return tierContractAddress
}

function saleEndTimestamp() {
    return saleEndTimestamp
}

function sub_d2630a48(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor28[arg1])
}

function sub_f2d19a24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_f2d19a24[arg1].field_0
    return address(sub_f2d19a24[arg1][arg2].field_0)
}

function sub_f6c4389c(?) {
    return sub_f6c4389c
}

function sub_fb150014(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fb150014.length
    return sub_fb150014[arg1]
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

function sub_4e42597f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f6c4389c = arg1
}

function sub_bd3380f6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4b7eb60b = arg1
}

function sub_eff56e15(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor3[address(arg1)]:
        return -1
    return sub_2ae1eb03[address(arg1)]
}

function sub_b903cc48(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor8.field_0) = not uint8(stor8.field_0) or Mask(248, 8, uint256(stor8.field_0))
}

function sub_2b025f89(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleEndTimestamp = uint64(arg1)
}

function sub_5049fd2a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleStartTimestamp = uint64(arg1)
}

function sub_f66910d3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_d619a452(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5e17ae48(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: invalid contract address.'
    if not stor12[address(arg1)]:
        nftContracts.length++
        stor175B[stor11.length] = address(arg1)
        stor12[address(arg1)] = 1
}

function transferStuckERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6bad2dca(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg3, arg4, 160, 3, 0x3078300000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6939fd94(?) {
    require calldata.size - 4 >= 32
    if arg1 >= groups.length:
        revert with 0, 50
    if groups[arg1].field_1280:
        mem[128] = stor[sha3((7 * arg1) + ('name', 'groups', 13) + 5)].field_0
        idx = 128
        s = 0
        while (32 * groups[arg1].field_1280) + 96 > idx:
            mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'groups', 13) + 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=groups[arg1].field_1280, data=mem[128 len 32 * groups[arg1].field_1280])
    mem[(32 * groups[arg1].field_1280) + 128] = 32
    mem[(32 * groups[arg1].field_1280) + 160] = groups[arg1].field_1280
    mem[(32 * groups[arg1].field_1280) + 192 len 32 * groups[arg1].field_1280] = mem[128 len 32 * groups[arg1].field_1280]
    return memory
      from (32 * groups[arg1].field_1280) + 128
       len (96 * groups[arg1].field_1280) + 64
}

function sub_78f037b6(?) {
    require calldata.size - 4 >= 32
    if arg1 >= groups.length:
        revert with 0, 50
    if groups[arg1].field_1024:
        mem[128] = stor[sha3((7 * arg1) + ('name', 'groups', 13) + 4)].field_0
        if (32 * groups[arg1].field_1024) + 32 > 64:
            mem[160] = stor[sha3((7 * arg1) + ('name', 'groups', 13) + 4)].field_256
            idx = 160
            s = 1
            while (32 * groups[arg1].field_1024) + 96 > idx:
                mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'groups', 13) + 4)].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * groups[arg1].field_1024) + 128] = 32
    mem[(32 * groups[arg1].field_1024) + 160] = groups[arg1].field_1024
    mem[(32 * groups[arg1].field_1024) + 192 len 32 * groups[arg1].field_1024] = mem[128 len 32 * groups[arg1].field_1024]
    return memory
      from (32 * groups[arg1].field_1024) + 128
       len (96 * groups[arg1].field_1024) + 64
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ef397ece(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_3eef90db[address(arg1)].field_0:
        mem[128] = sub_3eef90db[address(arg1)].field_0
        if (32 * sub_3eef90db[address(arg1)].field_0) + 32 > 64:
            mem[160] = sub_3eef90db[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * sub_3eef90db[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_3eef90db[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_3eef90db[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_3eef90db[address(arg1)].field_0) + 160] = sub_3eef90db[address(arg1)].field_0
    mem[(32 * sub_3eef90db[address(arg1)].field_0) + 192 len 32 * sub_3eef90db[address(arg1)].field_0] = mem[128 len 32 * sub_3eef90db[address(arg1)].field_0]
    return memory
      from (32 * sub_3eef90db[address(arg1)].field_0) + 128
       len (96 * sub_3eef90db[address(arg1)].field_0) + 64
}

function sub_c60d0482(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_35d7cbb7[address(arg1)][address(arg2)].field_0:
        mem[128] = sub_35d7cbb7[address(arg1)][address(arg2)].field_0
        idx = 128
        s = 0
        while (32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0) + 96 > idx:
            mem[idx + 32] = sub_35d7cbb7[address(arg1)][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_35d7cbb7[address(arg1)][address(arg2)].field_0, data=mem[128 len 32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0]), 
    mem[(32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0) + 128] = 32
    mem[(32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0) + 160] = sub_35d7cbb7[address(arg1)][address(arg2)].field_0
    mem[(32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0) + 192 len 32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0] = mem[128 len 32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0]
    return memory
      from (32 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0) + 128
       len (96 * sub_35d7cbb7[address(arg1)][address(arg2)].field_0) + 64
}

function resetGroupInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= saleStartTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: the token sale has begun.'
    if arg1 >= groups.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: invalid group ID.'
    if groups[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: nfts still in group.'
    if arg1 >= groups.length:
        revert with 0, 50
    address(groups[arg1].field_0) = 0
    groups[arg1].field_512 = 0
    groups[arg1].field_768 = 0
    groups[arg1].field_1280 = 0
    idx = 0
    while groups[arg1].field_1280 > idx:
        stor[idx + sha3((7 * arg1) + ('name', 'groups', 13) + 5)].field_0 = 0
        idx = idx + 1
        continue 
    if arg1 >= groups.length:
        revert with 0, 50
    groups[arg1].field_1536 = 0
    idx = 0
    while groups[arg1].field_1536 > idx:
        stor[idx + sha3((7 * arg1) + ('name', 'groups', 13) + 6)].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_ac79f420(?) {
    require calldata.size - 4 >= 32
    if arg1 >= groups.length:
        revert with 0, 50
    mem[64] = (32 * groups[arg1].field_1536) + 128
    mem[96] = groups[arg1].field_1536
    if not groups[arg1].field_1536:
        mem[(32 * groups[arg1].field_1536) + 128] = 32
        mem[(32 * groups[arg1].field_1536) + 160] = groups[arg1].field_1536
        idx = 0
        s = 128
        t = (32 * groups[arg1].field_1536) + 192
        while idx < groups[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * groups[arg1].field_1536) + 128
           len (96 * groups[arg1].field_1536) + 64
    mem[128] = address(stor[sha3((7 * arg1) + ('name', 'groups', 13) + 6)].field_0)
    idx = 128
    s = 0
    while (32 * groups[arg1].field_1536) + 96 > idx:
        mem[idx + 32] = address(stor[s + sha3((7 * arg1) + ('name', 'groups', 13) + 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * groups[arg1].field_1536) + 128] = 32
    mem[(32 * groups[arg1].field_1536) + 160] = groups[arg1].field_1536
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < groups[arg1].field_1536:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * groups[arg1].field_1536) + -mem[64] + 192
}

function sub_9368f2c1(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 68).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 68).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 68).length) + 133] = address(cd[36])
        mem[ceil32(32 * ('cd', 68).length) + 165] = _18
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(cd[36]), _18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawNft(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not withdrawTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: withdrawal is not available.'
    if block.timestamp <= withdrawTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: withdrawal is not yet available.'
    idx = 0
    while idx < sub_35d7cbb7[address(arg1)][msg.sender].field_0:
        mem[32] = sha3(address(arg1), 16)
        if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, sha3(address(arg1), 16))
        if sub_35d7cbb7[address(arg1)][msg.sender][idx].field_0 != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor17[address(arg1)][msg.sender][arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TokenSaleERC721: you have already withdrawn this nft.'
        stor17[address(arg1)][msg.sender][arg2] = 1
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x2aa1b4c9: address(arg1), arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: you have not purchased this nft.'
}

function sub_34a2fc05(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] >= groups.length:
        revert with 0, 'TokenSaleERC721: invalid group ID.'
    if ('cd', 36).length <= 0:
        revert with 0, 'TokenSaleERC721: nfts array is empty.'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4], 14)
        if not stor14[cd[4]][mem[(32 * idx) + 128]]:
            if cd[4] >= groups.length:
                revert with 0, 50
            if idx >= ('cd', 36).length:
                revert with 0, 50
            groups[cd[4]].field_1024++
            stor[groups[cd[4]].field_1024 + sha3((7 * cd[4]) + ('name', 'groups', 13) + 4)].field_0 = mem[(32 * idx) + 128]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(cd[4], 14)
            stor14[cd[4]][mem[(32 * idx) + 128]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_da9d6a80(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TokenSaleBase: different array length.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        sub_2ae1eb03[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_beee03ce(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= groups.length:
        revert with 0, 50
    if not address(groups[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: invalid group ID.'
    if arg1 >= groups.length:
        revert with 0, 50
    if groups[arg1].field_1024 > arg2:
        idx = 0
        while idx < arg2:
            if arg1 >= groups.length:
                revert with 0, 50
            if groups[arg1].field_1024 < 1:
                revert with 0, 17
            if groups[arg1].field_1024 - 1 < idx:
                revert with 0, 17
            if groups[arg1].field_1024 + -idx - 1 >= groups[arg1].field_1024:
                revert with 0, 50
            mem[32] = sha3(arg1, 14)
            stor14[arg1][stor[stor13[arg1].field_1024 - idx + sha3((7 * arg1) + ('name', 'stor13', 13) + 4)].field_0] = 0
            if arg1 >= groups.length:
                revert with 0, 50
            if not groups[arg1].field_1024:
                revert with 0, 49
            mem[0] = (7 * arg1) + sha3(13) + 4
            stor[sha3((7 * arg1) + ('name', 'groups', 13) + 4) + groups[arg1].field_1024].field_0 = 0
            groups[arg1].field_1024--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < groups[arg1].field_1024:
            if arg1 >= groups.length:
                revert with 0, 50
            if idx >= groups[arg1].field_1024:
                revert with 0, 50
            mem[0] = stor[idx + sha3((7 * arg1) + ('name', 'groups', 13) + 4)].field_0
            mem[32] = sha3(arg1, 14)
            stor14[arg1][stor[idx + sha3((7 * arg1) + ('name', 'stor13', 13) + 4)].field_0] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 >= groups.length:
            revert with 0, 50
        groups[arg1].field_1024 = 0
        idx = 0
        while groups[arg1].field_1024 > idx:
            stor[idx + sha3((7 * arg1) + ('name', 'groups', 13) + 4)].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_7fb63edb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = sub_f2d19a24[msg.sender].field_0
    if sub_f2d19a24[msg.sender].field_0:
        mem[128] = address(sub_f2d19a24[msg.sender].field_0)
        idx = 128
        s = 0
        while (32 * sub_f2d19a24[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = address(sub_f2d19a24[msg.sender][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if sub_f2d19a24[msg.sender].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * sub_f2d19a24[msg.sender].field_0) + 128] = sub_f2d19a24[msg.sender].field_0
    mem[64] = (64 * sub_f2d19a24[msg.sender].field_0) + 160
    if sub_f2d19a24[msg.sender].field_0:
        mem[(32 * sub_f2d19a24[msg.sender].field_0) + 160 len 32 * sub_f2d19a24[msg.sender].field_0] = call.data[calldata.size len 32 * sub_f2d19a24[msg.sender].field_0]
    idx = 0
    while idx < sub_f2d19a24[msg.sender].field_0:
        if idx >= sub_f2d19a24[msg.sender].field_0:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg1), 20)
        if idx >= sub_f2d19a24[msg.sender].field_0:
            revert with 0, 50
        mem[(32 * idx) + (32 * sub_f2d19a24[msg.sender].field_0) + 160] = sub_70da64d6[address(arg1)][mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * sub_f2d19a24[msg.sender].field_0) + 160] = 64
    mem[(64 * sub_f2d19a24[msg.sender].field_0) + 224] = sub_f2d19a24[msg.sender].field_0
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < sub_f2d19a24[msg.sender].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * sub_f2d19a24[msg.sender].field_0) + 192] = (32 * sub_f2d19a24[msg.sender].field_0) + 96
    mem[(98 * sub_f2d19a24[msg.sender].field_0) + 256] = mem[(32 * sub_f2d19a24[msg.sender].field_0) + 128]
    mem[(98 * sub_f2d19a24[msg.sender].field_0) + 288 len 32 * mem[(32 * sub_f2d19a24[msg.sender].field_0) + 128]] = mem[(32 * sub_f2d19a24[msg.sender].field_0) + 160 len 32 * mem[(32 * sub_f2d19a24[msg.sender].field_0) + 128]]
    return memory
      from mem[64]
       len (98 * sub_f2d19a24[msg.sender].field_0) + (32 * mem[(32 * sub_f2d19a24[msg.sender].field_0) + 128]) + -mem[64] + 288
}

function sub_306c78c5(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TokenSaleERC721: different tier array length.'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'TokenSaleERC721: different limit array length.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_2ae1eb03[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_07821924(?) {
    require calldata.size - 4 >= 192
    require cd[36] == address(cd[36])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 98 < 97 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 132).length) + 97] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = ceil32(32 * ('cd', 132).length) + 129
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[cd[68]]:
        revert with 0, 'TokenSaleERC721: this tier is not on token sale.'
    if not stor12[address(cd[36])]:
        revert with 0, 'TokenSaleERC721: nft contract is not on token sale.'
    if cd[100] <= 0:
        revert with 0, 'TokenSaleERC721: group price can not be a zero.'
    if ('cd', 132).length != ('cd', 164).length:
        revert with 0, 'TokenSaleERC721: different array length.'
    if cd[4] >= groups.length:
        revert with 0, 'TokenSaleERC721: invalid group ID.'
    address(groups[cd[4]].field_0) = address(cd[36])
    groups[cd[4]].field_512 = cd[68]
    groups[cd[4]].field_768 = cd[100]
    groups[cd[4]].field_1280 = ('cd', 132).length
    if not ('cd', 132).length:
        idx = 0
        while groups[cd[4]].field_1280 > idx:
            stor[idx + sha3((7 * cd[4]) + ('name', 'groups', 13) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 132).length) + 128 > idx:
            stor[s + sha3((7 * cd[4]) + ('name', 'groups', 13) + 5)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
        while groups[cd[4]].field_1280 > idx:
            stor[idx + sha3((7 * cd[4]) + ('name', 'groups', 13) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    if cd[4] >= groups.length:
        revert with 0, 50
    groups[cd[4]].field_1536 = ('cd', 164).length
    if not ('cd', 164).length:
        idx = 0
        while groups[cd[4]].field_1536 > idx:
            stor[idx + sha3((7 * cd[4]) + ('name', 'groups', 13) + 6)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 132).length) + 129
        while ceil32(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 129 > idx:
            address(stor[s + sha3((7 * cd[4]) + ('name', 'groups', 13) + 6)].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
        while groups[cd[4]].field_1536 > idx:
            stor[idx + sha3((7 * cd[4]) + ('name', 'groups', 13) + 6)].field_0 = 0
            idx = idx + 1
            continue 
}

function withdrawTokens() {
    if not withdrawTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: withdrawal is not available.'
    if block.timestamp <= withdrawTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: withdrawal is not yet available.'
    mem[0] = msg.sender
    mem[32] = 18
    mem[64] = (32 * sub_f2d19a24[msg.sender].field_0) + 128
    mem[96] = sub_f2d19a24[msg.sender].field_0
    if not sub_f2d19a24[msg.sender].field_0:
        idx = 0
        while idx < sub_f2d19a24[msg.sender].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _31 = sha3(mem[(32 * idx) + 140 len 20], sha3(msg.sender, 20))
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(msg.sender), 20)
            sub_70da64d6[address(msg.sender)][mem[(32 * idx) + 140 len 20]] = 0
            if idx >= mem[96]:
                revert with 0, 50
            _37 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor[_31]
            require ext_code.size(address(_37))
            call address(_37).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor[_31]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == bool(mem[_40])
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 32] = stor[_31]
            emit TokenWithdrawn(mem[mem[64]], stor[_31]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(msg.sender, 18)
        mem[128] = address(sub_f2d19a24[msg.sender].field_0)
        idx = 128
        s = 0
        while (32 * sub_f2d19a24[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = address(sub_f2d19a24[msg.sender][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_f2d19a24[msg.sender].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _69 = sha3(mem[(32 * idx) + 140 len 20], sha3(msg.sender, 20))
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(msg.sender), 20)
            sub_70da64d6[address(msg.sender)][mem[(32 * idx) + 140 len 20]] = 0
            if idx >= mem[96]:
                revert with 0, 50
            _75 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor[_69]
            require ext_code.size(address(_75))
            call address(_75).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor[_69]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_78] == bool(mem[_78])
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 32] = stor[_69]
            emit TokenWithdrawn(mem[mem[64]], stor[_69]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_e4732f94(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = ceil32(32 * ('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[cd[36]]:
        revert with 0, 'TokenSaleERC721: this tier is not on token sale.'
    if not stor12[address(cd[4])]:
        revert with 0, 'TokenSaleERC721: nft contract is not on token sale.'
    if cd[68] <= 0:
        revert with 0, 'TokenSaleERC721: group price can not be a zero.'
    if ('cd', 100).length != ('cd', 132).length:
        revert with 0, 'TokenSaleERC721: different array length.'
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = address(cd[4])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130] = 0
    groups.length++
    address(groups[groups.length].field_0) = address(cd[4])
    groups[groups.length].field_256 = 0
    groups[groups.length].field_512 = cd[36]
    groups[groups.length].field_768 = cd[68]
    groups[groups.length].field_1024 = 0
    idx = 0
    while groups[groups.length].field_1024 > idx:
        stor[idx + sha3((7 * groups.length) + ('name', 'groups', 13) + 4)].field_0 = 0
        idx = idx + 1
        continue 
    groups[groups.length].field_1280 = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while groups[groups.length].field_1280 > idx:
            stor[idx + sha3((7 * groups.length) + ('name', 'groups', 13) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 100).length) + 128 > idx:
            stor[s + sha3((7 * groups.length) + ('name', 'groups', 13) + 5)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        while groups[groups.length].field_1280 > idx:
            stor[idx + sha3((7 * groups.length) + ('name', 'groups', 13) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    groups[groups.length].field_1536 = ('cd', 132).length
    if not ('cd', 132).length:
        idx = 0
        while groups[groups.length].field_1536 > idx:
            stor[idx + sha3((7 * groups.length) + ('name', 'groups', 13) + 6)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 100).length) + 129
        while ceil32(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 129 > idx:
            address(stor[s + sha3((7 * groups.length) + ('name', 'groups', 13) + 6)].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
        while groups[groups.length].field_1536 > idx:
            stor[idx + sha3((7 * groups.length) + ('name', 'groups', 13) + 6)].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_16fbebe7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not withdrawTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: withdrawal is not available.'
    if block.timestamp <= withdrawTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenSaleERC721: withdrawal is not yet available.'
    if not sub_35d7cbb7[address(arg1)][msg.sender].field_0:
        idx = 0
        s = 0
        while idx < sub_35d7cbb7[address(arg1)][msg.sender].field_0:
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(msg.sender, sha3(address(arg1), 17))
            if stor17[address(arg1)][msg.sender][mem[(32 * idx) + 128]]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(msg.sender, sha3(address(arg1), 17))
            stor17[address(arg1)][msg.sender][mem[(32 * idx) + 128]] = 1
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            _44 = mem[(32 * idx) + 128]
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 132] = this.address
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 164] = msg.sender
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 196] = _44
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _44
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            _48 = mem[(32 * idx) + 128]
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 128] = address(arg1)
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 160] = _48
            emit 0x2aa1b4c9: address(arg1), _48
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[128] = sub_35d7cbb7[address(arg1)][msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_35d7cbb7[address(arg1)][msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < sub_35d7cbb7[address(arg1)][msg.sender].field_0:
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(msg.sender, sha3(address(arg1), 17))
            if stor17[address(arg1)][msg.sender][mem[(32 * idx) + 128]]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(msg.sender, sha3(address(arg1), 17))
            stor17[address(arg1)][msg.sender][mem[(32 * idx) + 128]] = 1
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            _86 = mem[(32 * idx) + 128]
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 132] = this.address
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 164] = msg.sender
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 196] = _86
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _86
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            if idx >= sub_35d7cbb7[address(arg1)][msg.sender].field_0:
                revert with 0, 50
            _90 = mem[(32 * idx) + 128]
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 128] = address(arg1)
            mem[(32 * sub_35d7cbb7[address(arg1)][msg.sender].field_0) + 160] = _90
            emit 0x2aa1b4c9: address(arg1), _90
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
    if s <= 0:
        revert with 0, 'TokenSaleERC721: nothing to withdraw.'
}

function sub_d8261414(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < nftContracts.length:
        mem[0] = address(arg1)
        mem[32] = sha3(nftContracts[idx], 16)
        if s > !sub_35d7cbb7[stor11[idx]][address(arg1)].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_35d7cbb7[stor11[idx]][address(arg1)].field_0
        continue 
    if stor3[address(arg1)]:
        if stor9[address(arg1)] < s * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length:
            revert with 0, 17
        return (stor9[address(arg1)] - (s * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length))
    if sub_f6c4389c < s * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length:
        revert with 0, 17
    return (sub_f6c4389c - (s * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length * nftContracts.length))
}

function getGroupInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 96
    mem[288] = 96
    if arg1 >= groups.length:
        revert with 0, 50
    mem[320] = address(groups[arg1].field_0)
    mem[352] = groups[arg1].field_256
    mem[384] = groups[arg1].field_512
    mem[416] = groups[arg1].field_768
    mem[544] = groups[arg1].field_1024
    if not groups[arg1].field_1024:
        mem[448] = 544
        mem[(32 * groups[arg1].field_1024) + 576] = groups[arg1].field_1280
        if not groups[arg1].field_1280:
            if groups[arg1].field_1536:
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640] = address(stor[sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_0)
                idx = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
                s = 0
                while (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 608 > idx:
                    mem[idx + 32] = address(stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
                mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
                idx = 0
                s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
                t = (64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 992
                while idx < groups[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return 32, address(groups[arg1].field_0), 
                       groups[arg1].field_256,
                       groups[arg1].field_512,
                       groups[arg1].field_768,
                       224,
                       (32 * groups[arg1].field_1024) + 256,
                       (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288,
                       groups[arg1].field_1024,
                       mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len (32 * groups[arg1].field_1536) + (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 64]
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 672] = address(groups[arg1].field_0)
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 704] = groups[arg1].field_256
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 736] = groups[arg1].field_512
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 768] = groups[arg1].field_768
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 800] = 224
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 896] = groups[arg1].field_1024
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 832] = (32 * groups[arg1].field_1024) + 256
            mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
            mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 864] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288
            mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
            idx = 0
            s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
            t = (64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + (32 * mem[(32 * groups[arg1].field_1024) + 576]) + 992
            while idx < groups[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640
               len (96 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 352
        mem[(32 * groups[arg1].field_1024) + 608] = stor[sha3(('name', 'groups', 13) + (7 * arg1) + 5)].field_0
        idx = (32 * groups[arg1].field_1024) + 608
        s = 0
        while (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 576 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[480] = (32 * groups[arg1].field_1024) + 576
        mem[64] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608] = groups[arg1].field_1536
        if not groups[arg1].field_1536:
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
            mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
            mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
            mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
            idx = 0
            s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
            t = (64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 992
            while idx < groups[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return 32, address(groups[arg1].field_0), 
                   groups[arg1].field_256,
                   groups[arg1].field_512,
                   groups[arg1].field_768,
                   224,
                   (32 * groups[arg1].field_1024) + 256,
                   (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288,
                   groups[arg1].field_1024,
                   mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len (32 * groups[arg1].field_1536) + (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 64]
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640] = address(stor[sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_0)
        idx = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
        s = 0
        while (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 608 > idx:
            mem[idx + 32] = address(stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[512] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 672] = address(groups[arg1].field_0)
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 704] = groups[arg1].field_256
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 736] = groups[arg1].field_512
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 768] = groups[arg1].field_768
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 800] = 224
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 896] = groups[arg1].field_1024
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 832] = (32 * groups[arg1].field_1024) + 256
        mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
        mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
        mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 864] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288
        mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
        idx = 0
        s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
        t = mem[64] + (32 * mem[544]) + (32 * mem[(32 * groups[arg1].field_1024) + 576]) + 352
        while idx < groups[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[576] = stor[sha3(('name', 'groups', 13) + (7 * arg1) + 4)].field_0
        idx = 576
        s = 0
        while (32 * groups[arg1].field_1024) + 544 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 4)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[448] = 544
        mem[(32 * groups[arg1].field_1024) + 576] = groups[arg1].field_1280
        if not groups[arg1].field_1280:
            mem[480] = (32 * groups[arg1].field_1024) + 576
            mem[64] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608] = groups[arg1].field_1536
            if not groups[arg1].field_1536:
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 672] = address(groups[arg1].field_0)
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 704] = groups[arg1].field_256
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 736] = groups[arg1].field_512
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 768] = groups[arg1].field_768
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 800] = 224
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 896] = groups[arg1].field_1024
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
                var21001 = groups[arg1].field_1024
                var21002 = (32 * groups[arg1].field_1024) + 576
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 832] = (32 * groups[arg1].field_1024) + 256
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 864] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288
                mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
                idx = 0
                s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
                t = (64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + (32 * mem[(32 * groups[arg1].field_1024) + 576]) + 992
                while idx < groups[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640
                   len (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 352
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640] = address(stor[sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_0)
            idx = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
            s = 0
            while (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 608 > idx:
                mem[idx + 32] = address(stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[512] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 672] = address(groups[arg1].field_0)
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 704] = groups[arg1].field_256
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 736] = groups[arg1].field_512
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 768] = groups[arg1].field_768
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 800] = 224
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 896] = groups[arg1].field_1024
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 832] = (32 * groups[arg1].field_1024) + 256
            mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
            mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 864] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288
            mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
            idx = 0
            s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
            t = mem[64] + (32 * mem[544]) + (32 * mem[(32 * groups[arg1].field_1024) + 576]) + 352
            while idx < groups[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[(32 * groups[arg1].field_1024) + 608] = stor[sha3(('name', 'groups', 13) + (7 * arg1) + 5)].field_0
            idx = (32 * groups[arg1].field_1024) + 608
            s = 0
            while (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 576 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 5)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[480] = (32 * groups[arg1].field_1024) + 576
            mem[64] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640
            mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608] = groups[arg1].field_1536
            if not groups[arg1].field_1536:
                mem[512] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 672] = address(groups[arg1].field_0)
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 704] = groups[arg1].field_256
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 736] = groups[arg1].field_512
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 768] = groups[arg1].field_768
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 800] = 224
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 896] = groups[arg1].field_1024
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 832] = (32 * groups[arg1].field_1024) + 256
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 864] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288
                mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
                idx = 0
                s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
                t = mem[64] + (32 * mem[544]) + (32 * groups[arg1].field_1280) + 352
                while idx < groups[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640] = address(stor[sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_0)
                idx = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
                s = 0
                while (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 608 > idx:
                    mem[idx + 32] = address(stor[s + sha3(('name', 'groups', 13) + (7 * arg1) + 6)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[512] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 608
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 640] = 32
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 672] = address(groups[arg1].field_0)
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 704] = groups[arg1].field_256
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 736] = groups[arg1].field_512
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 768] = groups[arg1].field_768
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 800] = 224
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 896] = groups[arg1].field_1024
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928 len 32 * groups[arg1].field_1024] = mem[576 len 32 * groups[arg1].field_1024]
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 832] = (32 * groups[arg1].field_1024) + 256
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 928] = groups[arg1].field_1280
                mem[(64 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960 len 32 * groups[arg1].field_1280] = mem[(32 * groups[arg1].field_1024) + 608 len 32 * groups[arg1].field_1280]
                mem[(32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 864] = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 288
                mem[(64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (32 * groups[arg1].field_1536) + 960] = groups[arg1].field_1536
                idx = 0
                s = (32 * groups[arg1].field_1024) + (32 * groups[arg1].field_1280) + 640
                t = mem[64] + (32 * mem[544]) + (32 * mem[(32 * groups[arg1].field_1024) + 576]) + 352
                while idx < groups[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    return memory
      from mem[64]
       len (64 * groups[arg1].field_1024) + (64 * groups[arg1].field_1280) + (64 * groups[arg1].field_1536) + -mem[64] + 992
}



}
