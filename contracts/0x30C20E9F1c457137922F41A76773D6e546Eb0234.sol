contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256[] arg1)
#  - sub_99264a79(?)
#  - sub_a8bbe586(?)
#
address owner;
uint256 stor1;
address registryAddress;
array of struct sub_f75691c2;
mapping of struct userInfoMap;
mapping of struct sub_7dd68ad9;
array of struct sub_ce7dec25;
mapping of uint256 sub_126b170c;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;

function sub_0ceac3cd(?) payable {
    return sub_f75691c2.length
}

function sub_126b170c(?) payable {
    require calldata.size - 4 >= 64
    return sub_126b170c[arg1][arg2]
}

function registry() payable {
    return registryAddress
}

function sub_7dd68ad9(?) payable {
    require calldata.size - 4 >= 64
    return sub_7dd68ad9[arg1][arg2].field_0, sub_7dd68ad9[arg1][arg2].field_256
}

function owner() payable {
    return owner
}

function userInfoMap(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfoMap[arg1].field_0, userInfoMap[arg1].field_256
}

function sub_ce7dec25(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ce7dec25.length
    return sub_ce7dec25[arg1].field_0, sub_ce7dec25[arg1].field_256
}

function sub_f75691c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f75691c2.length
    return sub_f75691c2[arg1].field_0, 
           sub_f75691c2[arg1].field_256,
           sub_f75691c2[arg1].field_512,
           sub_f75691c2[arg1].field_768,
           sub_f75691c2[arg1].field_1024,
           sub_f75691c2[arg1].field_1280,
           sub_f75691c2[arg1].field_1536
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function stableToken() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xa9d75b2b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_a686f4d6(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.pendingReward(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addAsset(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < sub_ce7dec25.length:
        mem[0] = 6
        if sub_ce7dec25[idx].field_0 == arg1:
            revert with 0, 'adding duplicate asset'
        idx = idx + 1
        continue 
    sub_ce7dec25.length++
    sub_ce7dec25[sub_ce7dec25.length].field_0 = arg1
    storF652[stor6.length] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0df3b2fa(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xf20d3245 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdf3b2fa with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getClaimAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xf20d3245 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdde070e8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMultiplier(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xdfedce31 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x938c8028 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7f60fc87(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < sub_f75691c2.length:
        mem[0] = 3
        if sub_f75691c2[idx].field_0 == arg1:
            require idx < sub_f75691c2.length
            mem[0] = 3
            if sub_f75691c2[idx].field_256 == arg2:
                revert with 0, 'adding duplicate pool'
        idx = idx + 1
        continue 
    sub_f75691c2.length++
    sub_f75691c2[sub_f75691c2.length].field_0 = arg1
    storC257[stor3.length] = arg2
    storC257[stor3.length] = arg3
    storC257[stor3.length] = arg4
    storC257[stor3.length] = 0
    storC257[stor3.length] = 0
    storC257[stor3.length] = 0
}

function sub_bd4a0cb5(?) payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xf20d3245 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdf3b2fa with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + userInfoMap[address(msg.sender)].field_256 < userInfoMap[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + userInfoMap[address(msg.sender)].field_256)
}

function sub_15858e52(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.ship() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        require ext_code.size(registryAddress)
        staticcall registryAddress.base() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg1:
            require ext_code.size(registryAddress)
            staticcall registryAddress.0x136fe789 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function convert(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'Must use EOA'
    if stor1 != 1:
        revert with 0, 'no re-entry'
    stor1 = 0
    idx = 0
    while idx < sub_f75691c2.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 5)
        if sub_f75691c2[idx].field_768 == sub_f75691c2[idx].field_512:
            revert with 0, 'Case not handled'
        if sub_7dd68ad9[address(arg1)][idx].field_0:
            require ext_code.size(sub_f75691c2[idx].field_768)
            staticcall sub_f75691c2[idx].field_768.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f75691c2[idx].field_0)
            call sub_f75691c2[idx].field_0.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_f75691c2[idx].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(sub_f75691c2[idx].field_768)
            staticcall sub_f75691c2[idx].field_768.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_7dd68ad9[address(arg1)][idx].field_0:
                if sub_7dd68ad9[address(arg1)][idx].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / sub_7dd68ad9[address(arg1)][idx].field_0 != sub_f75691c2[idx].field_1280:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if sub_7dd68ad9[address(arg1)][idx].field_256 > sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / 10^12) - sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
            if not sub_7dd68ad9[address(arg1)][idx].field_0:
                sub_7dd68ad9[address(arg1)][idx].field_256 = 0
            else:
                if sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / sub_7dd68ad9[address(arg1)][idx].field_0 != sub_f75691c2[idx].field_1280:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                sub_7dd68ad9[address(arg1)][idx].field_256 = sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / 10^12
        idx = idx + 1
        continue 
    userInfoMap[address(arg1)].field_0 = 0
    idx = 0
    while idx < sub_ce7dec25.length:
        require ext_code.size(registryAddress)
        staticcall registryAddress.0xdfedce31 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = arg1
        mem[132] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x938c8028 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_ce7dec25.length
        if not userInfoMap[address(arg1)].field_0:
            if sub_126b170c[address(arg1)][idx] < sub_126b170c[address(arg1)][idx]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
        else:
            if sub_ce7dec25[idx].field_256 * userInfoMap[address(arg1)].field_0 / userInfoMap[address(arg1)].field_0 != sub_ce7dec25[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if not sub_ce7dec25[idx].field_256 * userInfoMap[address(arg1)].field_0:
                if sub_126b170c[address(arg1)][idx] < sub_126b170c[address(arg1)][idx]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = idx
                mem[32] = sha3(address(arg1), 7)
            else:
                if ext_call.return_data[0] * sub_ce7dec25[idx].field_256 * userInfoMap[address(arg1)].field_0 / sub_ce7dec25[idx].field_256 * userInfoMap[address(arg1)].field_0 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if (ext_call.return_data[0] * sub_ce7dec25[idx].field_256 * userInfoMap[address(arg1)].field_0 / 10^6 / 10^6) + sub_126b170c[address(arg1)][idx] < sub_126b170c[address(arg1)][idx]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = idx
                mem[32] = sha3(address(arg1), 7)
                sub_126b170c[address(arg1)][idx] += ext_call.return_data[0] * sub_ce7dec25[idx].field_256 * userInfoMap[address(arg1)].field_0 / 10^6 / 10^6
        idx = idx + 1
        continue 
    stor1 = 1
}

function sub_18b54d67(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    while idx < sub_f75691c2.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 5)
        if sub_f75691c2[idx].field_768 == sub_f75691c2[idx].field_512:
            revert with 0, 'Case not handled'
        if sub_7dd68ad9[address(arg1)][idx].field_0:
            mem[mem[64] + 4] = sub_f75691c2[idx].field_256
            require ext_code.size(sub_f75691c2[idx].field_0)
            staticcall sub_f75691c2[idx].field_0.pendingReward(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_f75691c2[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_f75691c2.length
            mem[0] = 3
            if 0 == ext_call.return_data[0]:
                if not sub_7dd68ad9[address(arg1)][idx].field_0:
                    if sub_7dd68ad9[address(arg1)][idx].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / sub_7dd68ad9[address(arg1)][idx].field_0 != sub_f75691c2[idx].field_1280:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if sub_7dd68ad9[address(arg1)][idx].field_256 > sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0 / 10^12) - sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                require ext_code.size(registryAddress)
                staticcall registryAddress.0xa9d75b2b with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == sub_f75691c2[idx].field_768:
                    if not ext_call.return_data[0]:
                        if sub_f75691c2[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_f75691c2[idx].field_1024
                        if (0 / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280 < sub_f75691c2[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_7dd68ad9[address(arg1)][idx].field_0:
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / sub_7dd68ad9[address(arg1)][idx].field_0 != (0 / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > (0 / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ((0 / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12) - sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if sub_f75691c2[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_f75691c2[idx].field_1024
                        if (10^12 * ext_call.return_data[0] / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280 < sub_f75691c2[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_7dd68ad9[address(arg1)][idx].field_0:
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (10^12 * ext_call.return_data[0] / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / sub_7dd68ad9[address(arg1)][idx].field_0 != (10^12 * ext_call.return_data[0] / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > (10^12 * ext_call.return_data[0] / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ((10^12 * ext_call.return_data[0] / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12) - sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                else:
                    _170 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_170]
                    mem[_170 + 32] = sub_f75691c2[idx].field_768
                    require ext_code.size(registryAddress)
                    staticcall registryAddress.0xa9d75b2b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[_170]
                    mem[_170 + 64] = ext_call.return_data[12 len 20]
                    require ext_code.size(registryAddress)
                    staticcall registryAddress.0x1694505e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_170 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_170 + 100] = ext_call.return_data[0]
                    mem[_170 + 132] = 64
                    mem[_170 + 164] = mem[_170]
                    s = 0
                    while s < 32 * mem[_170]:
                        mem[s + _170 + 196] = mem[s + _170 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], 64, mem[_170 + 164 len (32 * mem[_170]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_170 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _170 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _283 = mem[_170 + 96 len 4], ext_call.return_data[0 len 28]
                    require mem[_170 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[_170 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[_170 + mem[_170 + 96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[_170 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[_170 + mem[_170 + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[_170 + ceil32(return_data.size) + 96] = mem[_170 + mem[_170 + 96 len 4], ext_call.return_data[0 len 28] + 96]
                    _286 = mem[_170 + _283 + 96]
                    s = 0
                    while s < 32 * _286:
                        mem[s + _170 + ceil32(return_data.size) + 128] = mem[s + _170 + _283 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _286) + _170 + ceil32(return_data.size) + 128
                    require 1 < mem[_170 + ceil32(return_data.size) + 96]
                    if not mem[_170 + ceil32(return_data.size) + 160]:
                        if sub_f75691c2[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_f75691c2[idx].field_1024
                        if (0 / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280 < sub_f75691c2[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_7dd68ad9[address(arg1)][idx].field_0:
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / sub_7dd68ad9[address(arg1)][idx].field_0 != (0 / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _286) + _170 + ceil32(return_data.size) + 229 len 31]
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > (0 / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ((0 / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12) - sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^12 * mem[_170 + ceil32(return_data.size) + 160] / mem[_170 + ceil32(return_data.size) + 160] != 10^12:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _286) + _170 + ceil32(return_data.size) + 229 len 31]
                        if sub_f75691c2[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_f75691c2[idx].field_1024
                        if (10^12 * mem[_170 + ceil32(return_data.size) + 160] / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280 < sub_f75691c2[idx].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_7dd68ad9[address(arg1)][idx].field_0:
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (10^12 * mem[_170 + ceil32(return_data.size) + 160] / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / sub_7dd68ad9[address(arg1)][idx].field_0 != (10^12 * mem[_170 + ceil32(return_data.size) + 160] / sub_f75691c2[idx].field_1024) + sub_f75691c2[idx].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _286) + _170 + ceil32(return_data.size) + 229 len 31]
                            if sub_7dd68ad9[address(arg1)][idx].field_256 > (10^12 * mem[_170 + ceil32(return_data.size) + 160] / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ((10^12 * mem[_170 + ceil32(return_data.size) + 160] / sub_f75691c2[idx].field_1024 * sub_7dd68ad9[address(arg1)][idx].field_0) + (sub_f75691c2[idx].field_1280 * sub_7dd68ad9[address(arg1)][idx].field_0) / 10^12) - sub_7dd68ad9[address(arg1)][idx].field_256 + userInfoMap[address(arg1)].field_0 < userInfoMap[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xdfedce31 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x938c8028 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < sub_ce7dec25.length
    if not userInfoMap[address(arg1)].field_0:
        if sub_126b170c[address(arg1)][arg2] < sub_126b170c[address(arg1)][arg2]:
            revert with 0, 'SafeMath: addition overflow'
        return sub_126b170c[address(arg1)][arg2]
    if sub_ce7dec25[arg2].field_256 * userInfoMap[address(arg1)].field_0 / userInfoMap[address(arg1)].field_0 != sub_ce7dec25[arg2].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not sub_ce7dec25[arg2].field_256 * userInfoMap[address(arg1)].field_0:
        if sub_126b170c[address(arg1)][arg2] < sub_126b170c[address(arg1)][arg2]:
            revert with 0, 'SafeMath: addition overflow'
        return sub_126b170c[address(arg1)][arg2]
    if ext_call.return_data[0] * sub_ce7dec25[arg2].field_256 * userInfoMap[address(arg1)].field_0 / sub_ce7dec25[arg2].field_256 * userInfoMap[address(arg1)].field_0 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if (ext_call.return_data[0] * sub_ce7dec25[arg2].field_256 * userInfoMap[address(arg1)].field_0 / 10^6 / 10^6) + sub_126b170c[address(arg1)][arg2] < sub_126b170c[address(arg1)][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * sub_ce7dec25[arg2].field_256 * userInfoMap[address(arg1)].field_0 / 10^6 / 10^6) + sub_126b170c[address(arg1)][arg2])
}



}
