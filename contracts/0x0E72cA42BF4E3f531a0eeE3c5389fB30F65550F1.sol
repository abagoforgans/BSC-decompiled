contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
mapping of uint256 stor101;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address sub_206c17bbAddress;
address sub_226d2c64Address;
array of address sub_87f732e3;
array of address sub_9093a98c;
uint256 sub_d8c8492a;
uint256 sub_6692135a;
uint256 sub_53730ed9;
uint256 sub_e2990b68;
uint256 sub_435a6266;
mapping of uint256 sub_7a75a204;
mapping of uint8 stor220;
mapping of uint8 stor221;
uint256 sub_8f903620;
uint256 sub_e88bfbd1;
uint256 sub_91702282;
uint256 sub_edfc5c2f;
uint8 sub_b94dae52;
address sub_1495c18aAddress; offset 8
address sub_3d6f5e3dAddress;
mapping of uint8 stor228;
address sub_9ce6f438Address;
uint256 sub_3f124732;
uint8 sub_a5c068a4; offset 160
address sub_43fff4aaAddress;
uint256 stor656F;

function name() payable {
    return name[0 len name.length]
}

function sub_1495c18a(?) payable {
    return sub_1495c18aAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_206c17bb(?) payable {
    return sub_206c17bbAddress
}

function sub_226d2c64(?) payable {
    return sub_226d2c64Address
}

function decimals() payable {
    return decimals
}

function sub_3d6f5e3d(?) payable {
    return sub_3d6f5e3dAddress
}

function sub_3f124732(?) payable {
    return sub_3f124732
}

function sub_435a6266(?) payable {
    return sub_435a6266
}

function sub_43fff4aa(?) payable {
    return sub_43fff4aaAddress
}

function _isWhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor220[arg1])
}

function sub_53730ed9(?) payable {
    return sub_53730ed9
}

function sub_6692135a(?) payable {
    return sub_6692135a
}

function _isBlackListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor221[arg1])
}

function sub_7a75a204(?) payable {
    require calldata.size - 4 >= 32
    return sub_7a75a204[arg1]
}

function sub_87f732e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_87f732e3[arg1]
}

function owner() payable {
    return owner
}

function sub_8f903620(?) payable {
    return sub_8f903620
}

function sub_9093a98c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_9093a98c[arg1]
}

function sub_91702282(?) payable {
    return sub_91702282
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9ce6f438(?) payable {
    return sub_9ce6f438Address
}

function sub_a5c068a4(?) payable {
    return bool(sub_a5c068a4)
}

function sub_acadb2a9(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor228[arg1])
}

function sub_b94dae52(?) payable {
    return bool(sub_b94dae52)
}

function sub_d8c8492a(?) payable {
    return sub_d8c8492a
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e2990b68(?) payable {
    return sub_e2990b68
}

function sub_e88bfbd1(?) payable {
    return sub_e88bfbd1
}

function sub_edfc5c2f(?) payable {
    return sub_edfc5c2f
}

function _fallback() payable {
    revert
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    call arg1.token0() with:
         gas 5000 wei
    return bool(ext_call.success)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBlackList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor221[address(arg1)] = uint8(arg2)
}

function setWhiteList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor220[address(arg1)] = uint8(arg2)
}

function sub_420f500c(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    sub_edfc5c2f = arg1
}

function sub_89280ed3(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    sub_91702282 = arg1
}

function sub_8abeed3c(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    sub_8f903620 = arg1
}

function sub_a3be14e0(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    sub_e88bfbd1 = arg1
}

function sub_1539f526(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    sub_3d6f5e3dAddress = arg1
}

function sub_c9214cc1(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    sub_1495c18aAddress = arg1
}

function sub_25e8dd6b(?) payable {
    require calldata.size - 4 >= 64
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    stor220[address(arg1)] = uint8(arg2)
}

function sub_51a25bf2(?) payable {
    require calldata.size - 4 >= 64
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    stor221[address(arg1)] = uint8(arg2)
}

function sub_0a15913b(?) payable {
    require sub_6692135a < 5
    if sub_9093a98c[stor215] != tx.origin:
        revert with 0, 'SWAK: caller is not the end'
    if sub_6692135a + 1 < sub_6692135a:
        revert with 0, 'SafeMath: addition overflow'
    sub_6692135a++
    require 5 > sub_6692135a + 1
}

function sub_f1b9df70(?) payable {
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    if sub_d8c8492a + 1 < sub_d8c8492a:
        revert with 0, 'SafeMath: addition overflow'
    sub_d8c8492a++
    require 5 > sub_d8c8492a + 1
}

function sub_a5a31f20(?) payable {
    require calldata.size - 4 >= 64
    if sub_43fff4aaAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5357414b3a2063616c6c6572206973206e6f7420746865206661726d20636f6e7472616300,
                    mem[201 len 27]
    stor221[address(arg1)] = uint8(arg2)
}

function sub_f9d880e6(?) payable {
    require calldata.size - 4 >= 64
    require sub_6692135a < 5
    if sub_9093a98c[stor215] != tx.origin:
        revert with 0, 'SWAK: caller is not the end'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + stor101[address(arg1)] < stor101[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor101[address(arg1)] += arg2
    emit 0x72ddf252: arg2, 0, arg1
    stor220[address(arg1)] = 1
    sub_8f903620 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_86ffa950(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 220
        stor220[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function sub_24dd9b29(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 220
        stor220[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_43fff4aaAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5357414b3a2063616c6c6572206973206e6f7420746865206661726d20636f6e7472616300,
                    mem[201 len 27]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + stor101[address(arg1)] < stor101[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor101[address(arg1)] += arg2
    emit 0x72ddf252: arg2, 0, arg1
}

function sub_8ec98ed4(?) payable {
    require calldata.size - 4 >= 64
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 + stor101[address(arg1)] < stor101[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor101[address(arg1)] += arg2
    if arg2 > stor656F:
        revert with 0, 'SafeMath: subtraction overflow'
    stor656F -= arg2
    emit 0x72ddf252: arg2, 57005, arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_5f876e52(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_a5c068a4:
        if not stor220[msg.sender]:
            if not stor220[tx.origin]:
                require ext_code.size(sub_206c17bbAddress)
                staticcall sub_206c17bbAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args sub_226d2c64Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 10^18 * sub_8f903620
    return stor101[address(arg1)]
}

function sub_adef155e(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    if sub_a5c068a4:
        if not stor220[msg.sender]:
            if not stor220[tx.origin]:
                require ext_code.size(sub_206c17bbAddress)
                staticcall sub_206c17bbAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args sub_226d2c64Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 10^18 * sub_8f903620
    if 1 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor101[stor203]:
        if not arg1:
            revert with 0, 'SafeMath: division by zero'
        if not sub_226d2c64Address:
            revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
        if 0 / arg1 > stor101[stor203]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
        stor101[stor203] -= 0 / arg1
        if (0 / arg1) + stor656F < stor656F:
            revert with 0, 'SafeMath: addition overflow'
        stor656F += 0 / arg1
        emit 0x72ddf252: (0 / arg1), sub_226d2c64Address, 57005
    else:
        if -stor101[stor203] + (arg1 * stor101[stor203]) / stor101[stor203] != arg1 - 1:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not arg1:
            revert with 0, 'SafeMath: division by zero'
        if not sub_226d2c64Address:
            revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
        if -stor101[stor203] + (arg1 * stor101[stor203]) / arg1 > stor101[stor203]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
        stor101[stor203] -= -stor101[stor203] + (arg1 * stor101[stor203]) / arg1
        if (-stor101[stor203] + (arg1 * stor101[stor203]) / arg1) + stor656F < stor656F:
            revert with 0, 'SafeMath: addition overflow'
        stor656F += -stor101[stor203] + (arg1 * stor101[stor203]) / arg1
        emit 0x72ddf252: (-stor101[stor203] + (arg1 * stor101[stor203]) / arg1), sub_226d2c64Address, 57005
    require ext_code.size(sub_226d2c64Address)
    call sub_226d2c64Address.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_89ed18d7(?) payable {
    require calldata.size - 4 >= 32
    require sub_6692135a < 5
    if sub_9093a98c[stor215] != tx.origin:
        revert with 0, 'SWAK: caller is not the end'
    if sub_a5c068a4:
        if not stor220[msg.sender]:
            if not stor220[tx.origin]:
                require ext_code.size(sub_206c17bbAddress)
                staticcall sub_206c17bbAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args sub_226d2c64Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 10^18 * sub_8f903620
    if arg1 + 100 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if not stor101[stor203]:
        if not arg1 + 100:
            revert with 0, 'SafeMath: division by zero'
        if not sub_226d2c64Address:
            revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if 0 / arg1 + 100 > stor101[stor203]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        stor101[stor203] -= 0 / arg1 + 100
        if (0 / arg1 + 100) + stor656F < stor656F:
            revert with 0, 'SafeMath: addition overflow'
        stor656F += 0 / arg1 + 100
        emit 0x72ddf252: (0 / arg1 + 100), sub_226d2c64Address, 57005
    else:
        if arg1 * stor101[stor203] / stor101[stor203] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1 + 100:
            revert with 0, 'SafeMath: division by zero'
        if not sub_226d2c64Address:
            revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 * stor101[stor203] / arg1 + 100 > stor101[stor203]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        stor101[stor203] -= arg1 * stor101[stor203] / arg1 + 100
        if (arg1 * stor101[stor203] / arg1 + 100) + stor656F < stor656F:
            revert with 0, 'SafeMath: addition overflow'
        stor656F += arg1 * stor101[stor203] / arg1 + 100
        emit 0x72ddf252: (arg1 * stor101[stor203] / arg1 + 100), sub_226d2c64Address, 57005
    require ext_code.size(sub_226d2c64Address)
    call sub_226d2c64Address.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b93d84bb(?) payable {
    require calldata.size - 4 >= 32
    require sub_d8c8492a < 5
    if sub_87f732e3[stor214] != tx.origin:
        revert with 0, 32, 27, 0xe35357414b3a2063616c6c6572206973206e6f74207468652064657600000000
    if sub_a5c068a4:
        if not stor220[msg.sender]:
            if not stor220[tx.origin]:
                require ext_code.size(sub_206c17bbAddress)
                staticcall sub_206c17bbAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args sub_226d2c64Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 10^18 * sub_8f903620
    if arg1 + 100 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if not stor101[stor203]:
        if not arg1 + 100:
            revert with 0, 'SafeMath: division by zero'
        if not sub_226d2c64Address:
            revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if 0 / arg1 + 100 > stor101[stor203]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        stor101[stor203] -= 0 / arg1 + 100
        if (0 / arg1 + 100) + stor656F < stor656F:
            revert with 0, 'SafeMath: addition overflow'
        stor656F += 0 / arg1 + 100
        emit 0x72ddf252: (0 / arg1 + 100), sub_226d2c64Address, 57005
    else:
        if arg1 * stor101[stor203] / stor101[stor203] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1 + 100:
            revert with 0, 'SafeMath: division by zero'
        if not sub_226d2c64Address:
            revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 * stor101[stor203] / arg1 + 100 > stor101[stor203]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        stor101[stor203] -= arg1 * stor101[stor203] / arg1 + 100
        if (arg1 * stor101[stor203] / arg1 + 100) + stor656F < stor656F:
            revert with 0, 'SafeMath: addition overflow'
        stor656F += arg1 * stor101[stor203] / arg1 + 100
        emit 0x72ddf252: (arg1 * stor101[stor203] / arg1 + 100), sub_226d2c64Address, 57005
    require ext_code.size(sub_226d2c64Address)
    call sub_226d2c64Address.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
