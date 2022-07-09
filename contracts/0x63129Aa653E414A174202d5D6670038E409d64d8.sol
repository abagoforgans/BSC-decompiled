contract main {




// =====================  Runtime code  =====================


#
#  - sub_9e6164ce(?)
#
const name = 'GADGET WAR'

const decimals = 18

const symbol = 'GWAR'


uint32 stor0;
address owner;
uint256 stor0;
address stor1;
uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
array of struct sub_7443c69c;
uint8 stor10;
uint256 totalAllocated;
uint256 totalSold;
uint8 stor13;
mapping of uint256 sub_9b70a245;
mapping of uint256 sub_1455e327;
mapping of uint256 sub_436577e5;
array of address sub_e2784eb1;
uint256 tokenPrice;
address sub_882cfb3fAddress;
uint8 sub_1c8aeb0c; offset 160
uint8 sub_3a7bf116; offset 168
address sub_89adfcbeAddress;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278005;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278006;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278007;

function sub_1455e327(?) {
    return sub_1455e327[arg1][arg2]
}

function totalSupply() {
    return totalSupply
}

function sub_1c8aeb0c(?) {
    return bool(sub_1c8aeb0c)
}

function publicSale() {
    return bool(stor13)
}

function sub_3a7bf116(?) {
    return bool(sub_3a7bf116)
}

function sub_436577e5(?) {
    return sub_436577e5[arg1]
}

function totalAllocated() {
    return totalAllocated
}

function sub_5b242ac4(?) {
    return bool(stor10)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7443c69c(?) {
    require arg1 < sub_7443c69c.length
    return sub_7443c69c[arg1].field_0, 
           sub_7443c69c[arg1].field_256,
           sub_7443c69c[arg1].field_512,
           sub_7443c69c[arg1].field_768,
           sub_7443c69c[arg1].field_1024,
           sub_7443c69c[arg1].field_1280,
           sub_7443c69c[arg1].field_1536,
           sub_7443c69c[arg1].field_1792,
           sub_7443c69c[arg1].field_2048
}

function tokenPrice() {
    return tokenPrice
}

function sub_882cfb3f(?) {
    return sub_882cfb3fAddress
}

function sub_89adfcbe(?) {
    return sub_89adfcbeAddress
}

function owner() {
    return address(owner)
}

function totalSold() {
    return totalSold
}

function sub_9b70a245(?) {
    return sub_9b70a245[arg1][arg2]
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function safeguard() {
    return bool(stor3)
}

function whitelistingStatus() {
    return bool(stor7)
}

function whitelisted(address arg1) {
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e2784eb1(?) {
    require arg1 < sub_e2784eb1.length
    return sub_e2784eb1[arg1]
}

function _fallback() payable {
    revert
}

function dropOwnership() {
    require msg.sender == address(owner)
    address(owner) = 0
}

function startPublicSale() {
    require msg.sender == address(owner)
    stor13 = 1
    return 1
}

function allocationDefined_() {
    require msg.sender == address(owner)
    stor10 = 1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    stor1 = arg1
}

function updateTokenPrice(uint256 arg1) {
    require msg.sender == address(owner)
    tokenPrice = arg1
    return 1
}

function sub_0b8a053f(?) {
    require msg.sender == address(owner)
    sub_89adfcbeAddress = arg1
    emit 0x9e3246f6: arg1
}

function changeSafeguardStatus() {
    require msg.sender == address(owner)
    if stor3:
        stor3 = 0
    else:
        stor3 = 1
}

function changeWhitelistingStatus() {
    require msg.sender == address(owner)
    if stor7:
        stor7 = 0
    else:
        stor7 = 1
}

function setAntisnipeAddress(address arg1) {
    require msg.sender == address(owner)
    sub_882cfb3fAddress = arg1
    emit 0x34863999: arg1
}

function whitelistUser(address arg1) {
    require msg.sender == address(owner)
    require 1 == bool(stor7)
    require arg1
    stor8[address(arg1)] = 1
}

function acceptOwnership() {
    require msg.sender == stor1
    emit OwnershipTransferred(address(owner), stor1);
    address(owner) = stor1
    stor1 = 0
}

function sub_081e1b58(?) {
    require msg.sender == address(owner)
    require sub_3a7bf116
    sub_3a7bf116 = 0
    emit 0xa7b7c474: block.timestamp, msg.sender
}

function setAntisnipeDisable() {
    require msg.sender == address(owner)
    require sub_1c8aeb0c
    sub_1c8aeb0c = 0
    emit 0x179e84ca: block.timestamp, msg.sender
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == address(owner)
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenAccounts(address(arg1), arg2);
}

function sub_f8073e4b(?) {
    require msg.sender == address(owner)
    if arg1 >= sub_7443c69c.length:
        revert with 0, 'Invalid Index'
    sub_7443c69c[arg1].field_1280 = arg2
    sub_7443c69c[arg1].field_1536 = arg3
    return 1
}

function sub_0b1cfbd3(?) {
    require msg.sender == address(owner)
    call address(owner) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decrease_allowance(address arg1, uint256 arg2) {
    require arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not stor3
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[msg.sender] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath sub failed'
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function increase_allowance(address arg1, uint256 arg2) {
    require arg1
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath add failed'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function whitelistManyUsers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(owner)
    require 1 == bool(stor7)
    if arg1.length > 150:
        revert with 0, 'Too many addresses'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor3
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(arg1)] -= arg2
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(arg1)][msg.sender] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath sub failed'
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
    return 1
}

function sub_01717711(?) {
    require msg.sender == address(owner)
    if sub_9b70a245[arg1][address(arg3)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new has already some amount allocated'
    if sub_9b70a245[arg1][address(arg2)] <= 0:
        revert with 0, 'old has no amount'
    sub_1455e327[arg1][arg3] = sub_1455e327[arg1][address(arg2)]
    sub_1455e327[arg1][address(arg2)] = 0
    sub_9b70a245[arg1][arg3] = sub_9b70a245[arg1][address(arg2)]
    sub_9b70a245[arg1][address(arg2)] = 0
    sub_e2784eb1.length++
    sub_e2784eb1[sub_e2784eb1.length] = arg3
    return 1
}

function sub_7312e7dd(?) {
    require msg.sender == address(owner)
    if stor10:
        revert with 0, 'allocation type defined'
    sub_7443c69c.length++
    sub_7443c69c[sub_7443c69c.length].field_0 = arg1
    stor6E15[stor9.length] = arg2
    stor6E15[stor9.length] = arg3
    stor6E15[stor9.length] = arg4
    stor6E15[stor9.length] = arg5
    stor6E15[stor9.length] = arg6
    stor6E15[stor9.length] = arg7
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = 0
    totalAllocated += arg3
    if totalAllocated > totalSupply:
        revert with 0, 'total supply crossed'
    emit 0xbaa8a8fa: arg1, arg2, arg3, arg4, arg5, arg6, arg7, sub_7443c69c.length - 1
    return 1
}

function sub_0eed574a(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == address(owner)
    if stor10:
        revert with 0, 'allocation type defined'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = mem[(32 * arg2.length) + (32 * idx) + 160] + s
        continue 
    require arg1 < sub_7443c69c.length
    if (mem[(64 * arg2.length) + 160] * arg2.length) + sub_7443c69c[arg1].field_1792 > sub_7443c69c[arg1].field_512:
        revert with 0, 'total amount crossed'
    require arg1 < sub_7443c69c.length
    sub_7443c69c[arg1].field_1792 += mem[(64 * arg2.length) + 160] * arg2.length
    if arg2.length > 150:
        revert with 0, 'Too many recipients'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if sub_9b70a245[arg1][mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'already some amount allocated'
        require idx < arg3.length
        require idx < arg2.length
        mem[32] = sha3(arg1, 14)
        sub_9b70a245[arg1][mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < arg2.length
        sub_e2784eb1.length++
        mem[0] = 17
        sub_e2784eb1[sub_e2784eb1.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    return 1
}

function deleteAllocation(uint256 arg1) {
    require msg.sender == address(owner)
    if stor10:
        revert with 0, 'allocation type defined'
    if arg1 >= sub_7443c69c.length:
        revert with 0, 'Invalid Index'
    totalAllocated -= sub_7443c69c[arg1].field_512
    idx = arg1
    while idx < sub_7443c69c.length - 1:
        require idx + 1 < sub_7443c69c.length
        require idx < sub_7443c69c.length
        mem[0] = 9
        sub_7443c69c[idx].field_0 = sub_7443c69c[idx].field_2304
        sub_7443c69c[idx].field_256 = sub_7443c69c[idx].field_2560
        sub_7443c69c[idx].field_512 = sub_7443c69c[idx].field_2816
        sub_7443c69c[idx].field_768 = sub_7443c69c[idx].field_3072
        sub_7443c69c[idx].field_1024 = sub_7443c69c[idx].field_3328
        sub_7443c69c[idx].field_1280 = sub_7443c69c[idx].field_3584
        sub_7443c69c[idx].field_1536 = sub_7443c69c[idx].field_3840
        sub_7443c69c[idx].field_1792 = sub_7443c69c[idx].field_4096
        sub_7443c69c[idx].field_2048 = sub_7443c69c[idx].field_4352
        idx = idx + 1
        continue 
    sub_7443c69c.length--
    if sub_7443c69c.length > sub_7443c69c.length - 1:
        idx = (9 * sub_7443c69c.length) - 9
        while 9 * sub_7443c69c.length > idx:
            sub_7443c69c[idx].field_0 = 0
            sub_7443c69c[idx].field_256 = 0
            sub_7443c69c[idx].field_512 = 0
            sub_7443c69c[idx].field_768 = 0
            sub_7443c69c[idx].field_1024 = 0
            sub_7443c69c[idx].field_1280 = 0
            sub_7443c69c[idx].field_1536 = 0
            sub_7443c69c[idx].field_1792 = 0
            sub_7443c69c[idx].field_2048 = 0
            idx = idx + 9
            continue 
    return 1
}

function getClaimableAmount(address arg1, uint256 arg2) {
    if arg2 >= sub_7443c69c.length:
        revert with 0, 'Invalid allocation index'
    if not stor10:
        return 0
    if sub_9b70a245[arg2][address(arg1)] <= 0:
        return 0
    if sub_7443c69c[arg2].field_768 + sub_7443c69c[arg2].field_256 >= block.timestamp:
        return 0
    if sub_7443c69c[arg2].field_768 + sub_7443c69c[arg2].field_256 + sub_7443c69c[arg2].field_1024 >= block.timestamp:
        if sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18 > sub_9b70a245[arg2][address(arg1)]:
            return (sub_9b70a245[arg2][address(arg1)] - sub_1455e327[arg2][address(arg1)])
        if sub_1455e327[arg2][address(arg1)] > sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18) - sub_1455e327[arg2][address(arg1)])
    if sub_7443c69c[arg2].field_768 + sub_7443c69c[arg2].field_256 + sub_7443c69c[arg2].field_1024 > block.timestamp:
        revert with 0, 'SafeMath sub failed'
    if block.timestamp - sub_7443c69c[arg2].field_768 - sub_7443c69c[arg2].field_256 - sub_7443c69c[arg2].field_1024 / 24 * 3600 <= 0:
        if sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18 > sub_9b70a245[arg2][address(arg1)]:
            return (sub_9b70a245[arg2][address(arg1)] - sub_1455e327[arg2][address(arg1)])
        if sub_1455e327[arg2][address(arg1)] > sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18) - sub_1455e327[arg2][address(arg1)])
    if (sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18) + (sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1536 / 100 * 10^18 * block.timestamp - sub_7443c69c[arg2].field_768 - sub_7443c69c[arg2].field_256 - sub_7443c69c[arg2].field_1024 / 24 * 3600) > sub_9b70a245[arg2][address(arg1)]:
        return (sub_9b70a245[arg2][address(arg1)] - sub_1455e327[arg2][address(arg1)])
    if sub_1455e327[arg2][address(arg1)] > (sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18) + (sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1536 / 100 * 10^18 * block.timestamp - sub_7443c69c[arg2].field_768 - sub_7443c69c[arg2].field_256 - sub_7443c69c[arg2].field_1024 / 24 * 3600):
        revert with 0, 'SafeMath sub failed'
    return ((sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1280 / 100 * 10^18) + (sub_9b70a245[arg2][address(arg1)] * sub_7443c69c[arg2].field_1536 / 100 * 10^18 * block.timestamp - sub_7443c69c[arg2].field_768 - sub_7443c69c[arg2].field_256 - sub_7443c69c[arg2].field_1024 / 24 * 3600) - sub_1455e327[arg2][address(arg1)])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(arg1)][msg.sender] -= arg3
    if arg1:
        if arg2:
            if not sub_3a7bf116:
                if sub_1c8aeb0c:
                    if sub_882cfb3fAddress:
                        require ext_code.size(sub_882cfb3fAddress)
                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            else:
                if not sub_89adfcbeAddress:
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                else:
                    mem[96] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    mem[132] = arg2
                    require ext_code.size(sub_89adfcbeAddress)
                    call sub_89adfcbeAddress.0x5f5a31a7 with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    require 0, address(arg2) << 64 <= 4294967296
                    require 0, address(arg2) << 64 + 32 <= return_data.size
                    require return_data.size >= mem[0, address(arg2) << 64 + 96] + 0, address(arg2) << 64 + 32 and mem[0, address(arg2) << 64 + 96] <= 4294967296
                    if not mem[96 len 4], address(arg1) << 64:
                        mem[ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = 32
                        mem[ceil32(return_data.size) + 132] = mem[0, address(arg2) << 64 + 96]
                        _76 = mem[0, address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 164 len ceil32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len ceil32(mem[0, address(arg2) << 64 + 96])]
                        if not _76 % 32:
                            revert with 0, 32, mem[ceil32(return_data.size) + 132 len _76 + 32]
                        mem[floor32(_76) + ceil32(return_data.size) + 164] = mem[floor32(_76) + ceil32(return_data.size) + -(_76 % 32) + 196 len _76 % 32]
                        revert with 0, 32, mem[ceil32(return_data.size) + 132 len floor32(_76) + 64]
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
    require not stor3
    if stor7:
        if not stor8[address(arg1)]:
            revert with 0, 'Restricted Address'
        if not stor8[address(arg2)]:
            revert with 0, 'Restricted Address'
    require arg2
    require not stor6[address(arg1)]
    require not stor6[address(arg2)]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function manualWithdrawTokens(uint256 arg1) {
    require msg.sender == address(owner)
    if this.address:
        if address(owner):
            if not sub_3a7bf116:
                if sub_1c8aeb0c:
                    if sub_882cfb3fAddress:
                        require ext_code.size(sub_882cfb3fAddress)
                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), address(owner), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            else:
                if not sub_89adfcbeAddress:
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), address(owner), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                else:
                    mem[96] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                    mem[100] = this.address
                    mem[132] = address(owner)
                    require ext_code.size(sub_89adfcbeAddress)
                    call sub_89adfcbeAddress.0x5f5a31a7 with:
                         gas gas_remaining wei
                        args address(this.address), address(owner)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    require 0, Mask(224, 0, stor0) <= 4294967296
                    require 0, Mask(224, 0, stor0) + 32 <= return_data.size
                    require return_data.size >= mem[0, Mask(224, 0, stor0) + 96] + 0, Mask(224, 0, stor0) + 32 and mem[0, Mask(224, 0, stor0) + 96] <= 4294967296
                    if not mem[96 len 4], address(this.address) << 64:
                        mem[ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = 32
                        mem[ceil32(return_data.size) + 132] = mem[0, Mask(224, 0, stor0) + 96]
                        _70 = mem[0, Mask(224, 0, stor0) + 96]
                        mem[ceil32(return_data.size) + 164 len ceil32(mem[0, Mask(224, 0, stor0) + 96])] = mem[0, Mask(224, 0, stor0) + 128 len ceil32(mem[0, Mask(224, 0, stor0) + 96])]
                        if not _70 % 32:
                            revert with 0, 32, mem[ceil32(return_data.size) + 132 len _70 + 32]
                        mem[floor32(_70) + ceil32(return_data.size) + 164] = mem[floor32(_70) + ceil32(return_data.size) + -(_70 % 32) + 196 len _70 % 32]
                        revert with 0, 32, mem[ceil32(return_data.size) + 132 len floor32(_70) + 64]
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), address(owner), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
    require not stor3
    if stor7:
        if not stor8[address(this.address)]:
            revert with 0, 'Restricted Address'
        if not stor8[address(stor0)]:
            revert with 0, 'Restricted Address'
    require address(owner)
    require not stor6[address(this.address)]
    require not stor6[address(stor0)]
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(this.address)] -= arg1
    if arg1 + balanceOf[address(stor0)] < balanceOf[address(stor0)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(stor0)] += arg1
    emit Transfer(arg1, this.address, address(owner));
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender:
        if arg1:
            if not sub_3a7bf116:
                if sub_1c8aeb0c:
                    if sub_882cfb3fAddress:
                        require ext_code.size(sub_882cfb3fAddress)
                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), msg.sender, address(arg1), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            else:
                if not sub_89adfcbeAddress:
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), msg.sender, address(arg1), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                else:
                    mem[96] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                    mem[100] = msg.sender
                    mem[132] = arg1
                    require ext_code.size(sub_89adfcbeAddress)
                    call sub_89adfcbeAddress.0x5f5a31a7 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    require uint32(msg.sender), address(arg1) << 64 <= 4294967296
                    require uint32(msg.sender), address(arg1) << 64 + 32 <= return_data.size
                    require return_data.size >= mem[uint32(msg.sender), address(arg1) << 64 + 96] + uint32(msg.sender), address(arg1) << 64 + 32 and mem[uint32(msg.sender), address(arg1) << 64 + 96] <= 4294967296
                    if not mem[96 len 4], Mask(224, 32, msg.sender) >> 32:
                        mem[ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = 32
                        mem[ceil32(return_data.size) + 132] = mem[uint32(msg.sender), address(arg1) << 64 + 96]
                        _70 = mem[uint32(msg.sender), address(arg1) << 64 + 96]
                        mem[ceil32(return_data.size) + 164 len ceil32(mem[uint32(msg.sender), address(arg1) << 64 + 96])] = mem[uint32(msg.sender), address(arg1) << 64 + 128 len ceil32(mem[uint32(msg.sender), address(arg1) << 64 + 96])]
                        if not _70 % 32:
                            revert with 0, 32, mem[ceil32(return_data.size) + 132 len _70 + 32]
                        mem[floor32(_70) + ceil32(return_data.size) + 164] = mem[floor32(_70) + ceil32(return_data.size) + -(_70 % 32) + 196 len _70 % 32]
                        revert with 0, 32, mem[ceil32(return_data.size) + 132 len floor32(_70) + 64]
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, address(arg1), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
    require not stor3
    if stor7:
        if not stor8[address(msg.sender)]:
            revert with 0, 'Restricted Address'
        if not stor8[address(arg1)]:
            revert with 0, 'Restricted Address'
    require arg1
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function airdropACTIVE(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == address(owner)
    if arg1.length > 150:
        revert with 0, 'Too many recipients'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _370 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _372 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not msg.sender:
            require not stor3
            if stor7:
                if not stor8[address(msg.sender)]:
                    revert with 0, 'Restricted Address'
                if not stor8[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'Restricted Address'
            require mem[(32 * idx) + 140 len 20]
            require not stor6[address(msg.sender)]
            require not stor6[address(mem[(32 * idx) + 128])]
            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath sub failed'
            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'SafeMath add failed'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[mem[64]], msg.sender, address(_370));
        else:
            if not mem[(32 * idx) + 140 len 20]:
                require not stor3
                if stor7:
                    if not stor8[address(msg.sender)]:
                        revert with 0, 'Restricted Address'
                    if not stor8[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'Restricted Address'
                require mem[(32 * idx) + 140 len 20]
                require not stor6[address(msg.sender)]
                require not stor6[address(mem[(32 * idx) + 128])]
                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath sub failed'
                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'SafeMath add failed'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[mem[64]], msg.sender, address(_370));
            else:
                if not sub_3a7bf116:
                    if not sub_1c8aeb0c:
                        require not stor3
                        if stor7:
                            if not stor8[address(msg.sender)]:
                                revert with 0, 'Restricted Address'
                            if not stor8[address(mem[(32 * idx) + 128])]:
                                revert with 0, 'Restricted Address'
                        require mem[(32 * idx) + 140 len 20]
                        require not stor6[address(msg.sender)]
                        require not stor6[address(mem[(32 * idx) + 128])]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath sub failed'
                        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                            revert with 0, 'SafeMath add failed'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 4
                        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Transfer(mem[mem[64]], msg.sender, address(_370));
                    else:
                        if not sub_882cfb3fAddress:
                            require not stor3
                            if stor7:
                                if not stor8[address(msg.sender)]:
                                    revert with 0, 'Restricted Address'
                                if not stor8[address(mem[(32 * idx) + 128])]:
                                    revert with 0, 'Restricted Address'
                            require mem[(32 * idx) + 140 len 20]
                            require not stor6[address(msg.sender)]
                            require not stor6[address(mem[(32 * idx) + 128])]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath sub failed'
                            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'SafeMath add failed'
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 4
                            balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
                            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[mem[64]], msg.sender, address(_370));
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = address(_370)
                            mem[mem[64] + 100] = _372
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.sender, address(_370), _372
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require not stor3
                            if stor7:
                                if not stor8[address(msg.sender)]:
                                    revert with 0, 'Restricted Address'
                                if not stor8[address(_370)]:
                                    revert with 0, 'Restricted Address'
                            require address(_370)
                            require not stor6[address(msg.sender)]
                            require not stor6[address(_370)]
                            if _372 > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath sub failed'
                            balanceOf[address(msg.sender)] -= _372
                            if _372 + balanceOf[address(_370)] < balanceOf[address(_370)]:
                                revert with 0, 'SafeMath add failed'
                            mem[0] = address(_370)
                            mem[32] = 4
                            balanceOf[address(_370)] += _372
                            mem[mem[64]] = _372
                            emit Transfer(_372, msg.sender, address(_370));
                else:
                    if not sub_89adfcbeAddress:
                        if not sub_1c8aeb0c:
                            require not stor3
                            if stor7:
                                if not stor8[address(msg.sender)]:
                                    revert with 0, 'Restricted Address'
                                if not stor8[address(mem[(32 * idx) + 128])]:
                                    revert with 0, 'Restricted Address'
                            require mem[(32 * idx) + 140 len 20]
                            require not stor6[address(msg.sender)]
                            require not stor6[address(mem[(32 * idx) + 128])]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath sub failed'
                            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                                revert with 0, 'SafeMath add failed'
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 4
                            balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
                            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[mem[64]], msg.sender, address(_370));
                        else:
                            if not sub_882cfb3fAddress:
                                require not stor3
                                if stor7:
                                    if not stor8[address(msg.sender)]:
                                        revert with 0, 'Restricted Address'
                                    if not stor8[address(mem[(32 * idx) + 128])]:
                                        revert with 0, 'Restricted Address'
                                require mem[(32 * idx) + 140 len 20]
                                require not stor6[address(msg.sender)]
                                require not stor6[address(mem[(32 * idx) + 128])]
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath sub failed'
                                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                                    revert with 0, 'SafeMath add failed'
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 4
                                balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
                                mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                emit Transfer(mem[mem[64]], msg.sender, address(_370));
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = address(_370)
                                mem[mem[64] + 100] = _372
                                require ext_code.size(sub_882cfb3fAddress)
                                call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.sender, address(_370), _372
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require not stor3
                                if stor7:
                                    if not stor8[address(msg.sender)]:
                                        revert with 0, 'Restricted Address'
                                    if not stor8[address(_370)]:
                                        revert with 0, 'Restricted Address'
                                require address(_370)
                                require not stor6[address(msg.sender)]
                                require not stor6[address(_370)]
                                if _372 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath sub failed'
                                balanceOf[address(msg.sender)] -= _372
                                if _372 + balanceOf[address(_370)] < balanceOf[address(_370)]:
                                    revert with 0, 'SafeMath add failed'
                                mem[0] = address(_370)
                                mem[32] = 4
                                balanceOf[address(_370)] += _372
                                mem[mem[64]] = _372
                                emit Transfer(_372, msg.sender, address(_370));
                    else:
                        mem[mem[64]] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_370)
                        require ext_code.size(sub_89adfcbeAddress)
                        call sub_89adfcbeAddress.0x5f5a31a7 with:
                             gas gas_remaining wei
                            args msg.sender, address(_370)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _384 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _393 = mem[_384 + 32]
                        require mem[_384 + 32] <= 4294967296
                        require mem[_384 + 32] + 32 <= return_data.size
                        require return_data.size >= mem[_384 + mem[_384 + 32]] + mem[_384 + 32] + 32 and mem[_384 + mem[_384 + 32]] <= 4294967296
                        if not mem[_384]:
                            mem[_384 + ceil32(return_data.size)] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_384 + ceil32(return_data.size) + 4] = 32
                            mem[_384 + ceil32(return_data.size) + 36] = mem[_384 + _393]
                            _442 = mem[_384 + _393]
                            idx = 0
                            while idx < _442:
                                mem[idx + _384 + ceil32(return_data.size) + 68] = mem[idx + _384 + _393 + 32]
                                idx = idx + 32
                                continue 
                            if not _442 % 32:
                                revert with memory
                                  from mem[64]
                                   len _442 + _384 + ceil32(return_data.size) + -mem[64] + 68
                            mem[floor32(_442) + _384 + ceil32(return_data.size) + 68] = mem[floor32(_442) + _384 + ceil32(return_data.size) + -(_442 % 32) + 100 len _442 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_442) + _384 + ceil32(return_data.size) + -mem[64] + 100
                        if sub_1c8aeb0c:
                            if sub_882cfb3fAddress:
                                mem[_384 + ceil32(return_data.size) + 4] = msg.sender
                                mem[_384 + ceil32(return_data.size) + 36] = msg.sender
                                mem[_384 + ceil32(return_data.size) + 68] = address(_370)
                                mem[_384 + ceil32(return_data.size) + 100] = _372
                                require ext_code.size(sub_882cfb3fAddress)
                                call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.sender, address(_370), _372
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        require not stor3
                        if stor7:
                            if not stor8[address(msg.sender)]:
                                revert with 0, 'Restricted Address'
                            if not stor8[address(_370)]:
                                revert with 0, 'Restricted Address'
                        require address(_370)
                        require not stor6[address(msg.sender)]
                        require not stor6[address(_370)]
                        if _372 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath sub failed'
                        balanceOf[address(msg.sender)] -= _372
                        if _372 + balanceOf[address(_370)] < balanceOf[address(_370)]:
                            revert with 0, 'SafeMath add failed'
                        mem[0] = address(_370)
                        mem[32] = 4
                        balanceOf[address(_370)] += _372
                        mem[_384 + ceil32(return_data.size)] = _372
                        emit Transfer(_372, msg.sender, address(_370));
        idx = idx + 1
        continue 
    return 1
}

function claimAllocation(uint256 arg1, uint256 arg2) {
    if not stor10:
        revert with 0, 'allocation type not defined'
    if sub_9b70a245[arg1][msg.sender] <= 0:
        revert with 0, 'nothing to claim'
    if arg2 > sub_9b70a245[arg1][msg.sender] - sub_1455e327[arg1][msg.sender]:
        revert with 0, 'claim is over'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    if arg1 >= sub_7443c69c.length:
        revert with 0, 'Invalid allocation index'
    mem[384] = sub_7443c69c[arg1].field_0
    mem[416] = sub_7443c69c[arg1].field_256
    mem[448] = sub_7443c69c[arg1].field_512
    mem[480] = sub_7443c69c[arg1].field_768
    mem[512] = sub_7443c69c[arg1].field_1024
    mem[544] = sub_7443c69c[arg1].field_1280
    mem[576] = sub_7443c69c[arg1].field_1536
    mem[608] = sub_7443c69c[arg1].field_1792
    mem[640] = sub_7443c69c[arg1].field_2048
    if not stor10:
        if arg2 > 0:
            revert with 0, 'Invalid Amount'
        require arg1 < sub_7443c69c.length
        if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
            revert with 0, 'amount reached limit'
        require arg1 < sub_7443c69c.length
        sub_7443c69c[arg1].field_2048 += arg2
        sub_1455e327[arg1][msg.sender] += arg2
        if address(owner):
            if msg.sender:
                if sub_3a7bf116:
                    if sub_89adfcbeAddress:
                        mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                        mem[676] = address(owner)
                        mem[708] = msg.sender
                        require ext_code.size(sub_89adfcbeAddress)
                        call sub_89adfcbeAddress.0x5f5a31a7 with:
                             gas gas_remaining wei
                            args address(owner), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 672
                        require return_data.size >= 64
                        require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                        require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                        require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                        if not mem[672 len 4], Mask(224, 0, stor0):
                            mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 676] = 32
                            mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                            _303 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                            mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                            if not _303 % 32:
                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len _303 + 32]
                            mem[floor32(_303) + ceil32(return_data.size) + 740] = mem[floor32(_303) + ceil32(return_data.size) + -(_303 % 32) + 772 len _303 % 32]
                            revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_303) + 64]
                if sub_1c8aeb0c:
                    if sub_882cfb3fAddress:
                        require ext_code.size(sub_882cfb3fAddress)
                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(owner), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
    else:
        if sub_9b70a245[arg1][address(msg.sender)] <= 0:
            if arg2 > 0:
                revert with 0, 'Invalid Amount'
            require arg1 < sub_7443c69c.length
            if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                revert with 0, 'amount reached limit'
            require arg1 < sub_7443c69c.length
            sub_7443c69c[arg1].field_2048 += arg2
            sub_1455e327[arg1][msg.sender] += arg2
            if address(owner):
                if msg.sender:
                    if sub_3a7bf116:
                        if sub_89adfcbeAddress:
                            mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                            mem[676] = address(owner)
                            mem[708] = msg.sender
                            require ext_code.size(sub_89adfcbeAddress)
                            call sub_89adfcbeAddress.0x5f5a31a7 with:
                                 gas gas_remaining wei
                                args address(owner), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 672
                            require return_data.size >= 64
                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                            require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                            if not mem[672 len 4], Mask(224, 0, stor0):
                                mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 676] = 32
                                mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                _351 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                if not _351 % 32:
                                    revert with 0, 32, mem[ceil32(return_data.size) + 708 len _351 + 32]
                                mem[floor32(_351) + ceil32(return_data.size) + 740] = mem[floor32(_351) + ceil32(return_data.size) + -(_351 % 32) + 772 len _351 % 32]
                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_351) + 64]
                    if sub_1c8aeb0c:
                        if sub_882cfb3fAddress:
                            require ext_code.size(sub_882cfb3fAddress)
                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(owner), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
        else:
            if sub_7443c69c[arg1].field_768 + sub_7443c69c[arg1].field_256 >= block.timestamp:
                if arg2 > 0:
                    revert with 0, 'Invalid Amount'
                require arg1 < sub_7443c69c.length
                if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                    revert with 0, 'amount reached limit'
                require arg1 < sub_7443c69c.length
                sub_7443c69c[arg1].field_2048 += arg2
                sub_1455e327[arg1][msg.sender] += arg2
                if address(owner):
                    if msg.sender:
                        if sub_3a7bf116:
                            if sub_89adfcbeAddress:
                                mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                mem[676] = address(owner)
                                mem[708] = msg.sender
                                require ext_code.size(sub_89adfcbeAddress)
                                call sub_89adfcbeAddress.0x5f5a31a7 with:
                                     gas gas_remaining wei
                                    args address(owner), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 672
                                require return_data.size >= 64
                                require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                if not mem[672 len 4], Mask(224, 0, stor0):
                                    mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 676] = 32
                                    mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                    _391 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                    mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                    if not _391 % 32:
                                        revert with 0, 32, mem[ceil32(return_data.size) + 708 len _391 + 32]
                                    mem[floor32(_391) + ceil32(return_data.size) + 740] = mem[floor32(_391) + ceil32(return_data.size) + -(_391 % 32) + 772 len _391 % 32]
                                    revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_391) + 64]
                        if sub_1c8aeb0c:
                            if sub_882cfb3fAddress:
                                require ext_code.size(sub_882cfb3fAddress)
                                call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(owner), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
            else:
                if sub_7443c69c[arg1].field_768 + sub_7443c69c[arg1].field_256 + sub_7443c69c[arg1].field_1024 >= block.timestamp:
                    if sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18 > sub_9b70a245[arg1][address(msg.sender)]:
                        if arg2 > sub_9b70a245[arg1][address(msg.sender)] - sub_1455e327[arg1][address(msg.sender)]:
                            revert with 0, 'Invalid Amount'
                        require arg1 < sub_7443c69c.length
                        if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                            revert with 0, 'amount reached limit'
                        require arg1 < sub_7443c69c.length
                        sub_7443c69c[arg1].field_2048 += arg2
                        sub_1455e327[arg1][msg.sender] += arg2
                        if address(owner):
                            if msg.sender:
                                if sub_3a7bf116:
                                    if sub_89adfcbeAddress:
                                        mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                        mem[676] = address(owner)
                                        mem[708] = msg.sender
                                        require ext_code.size(sub_89adfcbeAddress)
                                        call sub_89adfcbeAddress.0x5f5a31a7 with:
                                             gas gas_remaining wei
                                            args address(owner), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 672
                                        require return_data.size >= 64
                                        require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                        require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                        require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                        if not mem[672 len 4], Mask(224, 0, stor0):
                                            mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 676] = 32
                                            mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                            _610 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                            mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                            if not _610 % 32:
                                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len _610 + 32]
                                            mem[floor32(_610) + ceil32(return_data.size) + 740] = mem[floor32(_610) + ceil32(return_data.size) + -(_610 % 32) + 772 len _610 % 32]
                                            revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_610) + 64]
                                if sub_1c8aeb0c:
                                    if sub_882cfb3fAddress:
                                        require ext_code.size(sub_882cfb3fAddress)
                                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(owner), msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                    else:
                        if sub_1455e327[arg1][address(msg.sender)] > sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18:
                            revert with 0, 'SafeMath sub failed'
                        if arg2 > (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18) - sub_1455e327[arg1][address(msg.sender)]:
                            revert with 0, 'Invalid Amount'
                        require arg1 < sub_7443c69c.length
                        if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                            revert with 0, 'amount reached limit'
                        require arg1 < sub_7443c69c.length
                        sub_7443c69c[arg1].field_2048 += arg2
                        sub_1455e327[arg1][msg.sender] += arg2
                        if address(owner):
                            if msg.sender:
                                if sub_3a7bf116:
                                    if sub_89adfcbeAddress:
                                        mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                        mem[676] = address(owner)
                                        mem[708] = msg.sender
                                        require ext_code.size(sub_89adfcbeAddress)
                                        call sub_89adfcbeAddress.0x5f5a31a7 with:
                                             gas gas_remaining wei
                                            args address(owner), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 672
                                        require return_data.size >= 64
                                        require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                        require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                        require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                        if not mem[672 len 4], Mask(224, 0, stor0):
                                            mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 676] = 32
                                            mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                            _910 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                            mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                            if not _910 % 32:
                                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len _910 + 32]
                                            mem[floor32(_910) + ceil32(return_data.size) + 740] = mem[floor32(_910) + ceil32(return_data.size) + -(_910 % 32) + 772 len _910 % 32]
                                            revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_910) + 64]
                                if sub_1c8aeb0c:
                                    if sub_882cfb3fAddress:
                                        require ext_code.size(sub_882cfb3fAddress)
                                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(owner), msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                else:
                    if sub_7443c69c[arg1].field_768 + sub_7443c69c[arg1].field_256 + sub_7443c69c[arg1].field_1024 > block.timestamp:
                        revert with 0, 'SafeMath sub failed'
                    if block.timestamp - sub_7443c69c[arg1].field_768 - sub_7443c69c[arg1].field_256 - sub_7443c69c[arg1].field_1024 / 24 * 3600 <= 0:
                        if sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18 > sub_9b70a245[arg1][address(msg.sender)]:
                            if arg2 > sub_9b70a245[arg1][address(msg.sender)] - sub_1455e327[arg1][address(msg.sender)]:
                                revert with 0, 'Invalid Amount'
                            require arg1 < sub_7443c69c.length
                            if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                                revert with 0, 'amount reached limit'
                            require arg1 < sub_7443c69c.length
                            sub_7443c69c[arg1].field_2048 += arg2
                            sub_1455e327[arg1][msg.sender] += arg2
                            if address(owner):
                                if msg.sender:
                                    if sub_3a7bf116:
                                        if sub_89adfcbeAddress:
                                            mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                            mem[676] = address(owner)
                                            mem[708] = msg.sender
                                            require ext_code.size(sub_89adfcbeAddress)
                                            call sub_89adfcbeAddress.0x5f5a31a7 with:
                                                 gas gas_remaining wei
                                                args address(owner), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 672
                                            require return_data.size >= 64
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                            require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                            if not mem[672 len 4], Mask(224, 0, stor0):
                                                mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 676] = 32
                                                mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                _1530 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                                if not _1530 % 32:
                                                    revert with 0, 32, mem[ceil32(return_data.size) + 708 len _1530 + 32]
                                                mem[floor32(_1530) + ceil32(return_data.size) + 740] = mem[floor32(_1530) + ceil32(return_data.size) + -(_1530 % 32) + 772 len _1530 % 32]
                                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_1530) + 64]
                                    if sub_1c8aeb0c:
                                        if sub_882cfb3fAddress:
                                            require ext_code.size(sub_882cfb3fAddress)
                                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(owner), msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                        else:
                            if sub_1455e327[arg1][address(msg.sender)] > sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18:
                                revert with 0, 'SafeMath sub failed'
                            if arg2 > (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18) - sub_1455e327[arg1][address(msg.sender)]:
                                revert with 0, 'Invalid Amount'
                            require arg1 < sub_7443c69c.length
                            if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                                revert with 0, 'amount reached limit'
                            require arg1 < sub_7443c69c.length
                            sub_7443c69c[arg1].field_2048 += arg2
                            sub_1455e327[arg1][msg.sender] += arg2
                            if address(owner):
                                if msg.sender:
                                    if sub_3a7bf116:
                                        if sub_89adfcbeAddress:
                                            mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                            mem[676] = address(owner)
                                            mem[708] = msg.sender
                                            require ext_code.size(sub_89adfcbeAddress)
                                            call sub_89adfcbeAddress.0x5f5a31a7 with:
                                                 gas gas_remaining wei
                                                args address(owner), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 672
                                            require return_data.size >= 64
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                            require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                            if not mem[672 len 4], Mask(224, 0, stor0):
                                                mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 676] = 32
                                                mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                _1990 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                                if not _1990 % 32:
                                                    revert with 0, 32, mem[ceil32(return_data.size) + 708 len _1990 + 32]
                                                mem[floor32(_1990) + ceil32(return_data.size) + 740] = mem[floor32(_1990) + ceil32(return_data.size) + -(_1990 % 32) + 772 len _1990 % 32]
                                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_1990) + 64]
                                    if sub_1c8aeb0c:
                                        if sub_882cfb3fAddress:
                                            require ext_code.size(sub_882cfb3fAddress)
                                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(owner), msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                    else:
                        if (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18) + (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1536 / 100 * 10^18 * block.timestamp - sub_7443c69c[arg1].field_768 - sub_7443c69c[arg1].field_256 - sub_7443c69c[arg1].field_1024 / 24 * 3600) > sub_9b70a245[arg1][address(msg.sender)]:
                            if arg2 > sub_9b70a245[arg1][address(msg.sender)] - sub_1455e327[arg1][address(msg.sender)]:
                                revert with 0, 'Invalid Amount'
                            require arg1 < sub_7443c69c.length
                            if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                                revert with 0, 'amount reached limit'
                            require arg1 < sub_7443c69c.length
                            sub_7443c69c[arg1].field_2048 += arg2
                            sub_1455e327[arg1][msg.sender] += arg2
                            if address(owner):
                                if msg.sender:
                                    if sub_3a7bf116:
                                        if sub_89adfcbeAddress:
                                            mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                            mem[676] = address(owner)
                                            mem[708] = msg.sender
                                            require ext_code.size(sub_89adfcbeAddress)
                                            call sub_89adfcbeAddress.0x5f5a31a7 with:
                                                 gas gas_remaining wei
                                                args address(owner), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 672
                                            require return_data.size >= 64
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                            require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                            if not mem[672 len 4], Mask(224, 0, stor0):
                                                mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 676] = 32
                                                mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                _1713 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                                if not _1713 % 32:
                                                    revert with 0, 32, mem[ceil32(return_data.size) + 708 len _1713 + 32]
                                                mem[floor32(_1713) + ceil32(return_data.size) + 740] = mem[floor32(_1713) + ceil32(return_data.size) + -(_1713 % 32) + 772 len _1713 % 32]
                                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_1713) + 64]
                                    if sub_1c8aeb0c:
                                        if sub_882cfb3fAddress:
                                            require ext_code.size(sub_882cfb3fAddress)
                                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(owner), msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                        else:
                            if sub_1455e327[arg1][address(msg.sender)] > (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18) + (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1536 / 100 * 10^18 * block.timestamp - sub_7443c69c[arg1].field_768 - sub_7443c69c[arg1].field_256 - sub_7443c69c[arg1].field_1024 / 24 * 3600):
                                revert with 0, 'SafeMath sub failed'
                            if arg2 > (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1280 / 100 * 10^18) + (sub_9b70a245[arg1][address(msg.sender)] * sub_7443c69c[arg1].field_1536 / 100 * 10^18 * block.timestamp - sub_7443c69c[arg1].field_768 - sub_7443c69c[arg1].field_256 - sub_7443c69c[arg1].field_1024 / 24 * 3600) - sub_1455e327[arg1][address(msg.sender)]:
                                revert with 0, 'Invalid Amount'
                            require arg1 < sub_7443c69c.length
                            if sub_7443c69c[arg1].field_2048 + arg2 > sub_7443c69c[arg1].field_512:
                                revert with 0, 'amount reached limit'
                            require arg1 < sub_7443c69c.length
                            sub_7443c69c[arg1].field_2048 += arg2
                            sub_1455e327[arg1][msg.sender] += arg2
                            if address(owner):
                                if msg.sender:
                                    if sub_3a7bf116:
                                        if sub_89adfcbeAddress:
                                            mem[672] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                            mem[676] = address(owner)
                                            mem[708] = msg.sender
                                            require ext_code.size(sub_89adfcbeAddress)
                                            call sub_89adfcbeAddress.0x5f5a31a7 with:
                                                 gas gas_remaining wei
                                                args address(owner), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 672
                                            require return_data.size >= 64
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                            require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                            require return_data.size >= mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672] <= 4294967296
                                            if not mem[672 len 4], Mask(224, 0, stor0):
                                                mem[ceil32(return_data.size) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 676] = 32
                                                mem[ceil32(return_data.size) + 708] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                _2192 = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672]
                                                mem[ceil32(return_data.size) + 740 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])] = mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 704 len ceil32(mem[uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 672])]
                                                if not _2192 % 32:
                                                    revert with 0, 32, mem[ceil32(return_data.size) + 708 len _2192 + 32]
                                                mem[floor32(_2192) + ceil32(return_data.size) + 740] = mem[floor32(_2192) + ceil32(return_data.size) + -(_2192 % 32) + 772 len _2192 % 32]
                                                revert with 0, 32, mem[ceil32(return_data.size) + 708 len floor32(_2192) + 64]
                                    if sub_1c8aeb0c:
                                        if sub_882cfb3fAddress:
                                            require ext_code.size(sub_882cfb3fAddress)
                                            call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(owner), msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
    require not stor3
    if stor7:
        if not stor8[address(stor0)]:
            revert with 0, 'Restricted Address'
        if not stor8[address(msg.sender)]:
            revert with 0, 'Restricted Address'
    require msg.sender
    require not stor6[address(stor0)]
    require not stor6[address(msg.sender)]
    if arg2 > balanceOf[address(stor0)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(stor0)] -= arg2
    if arg2 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(msg.sender)] = arg2 + balanceOf[msg.sender]
    emit Transfer(arg2, address(owner), msg.sender);
    emit claimAllocationEv(arg1, arg2, msg.sender);
    return 1
}

function buyToken() payable {
    if not stor13:
        revert with 0, 'Sale not started yet'
    else:
        mem[128] = address(msg.sender)
        mem[96] = 20
        mem[148 len 0] = None
        if sha3(address(msg.sender, 0)) != 0xf0368292bb93b4c637d7d2e942895340c5411b65bc4f295e15f2cfb9d88dc4d3:
            mem[64] = ceil32(ext_code.size(msg.sender)) + 149
            mem[148] = ext_code.size(msg.sender)
            mem[180 len ext_code.size(msg.sender)] = ext_code.copy(msg.sender, 0 len ext_code.size(msg.sender))
            mem[ceil32(ext_code.size(msg.sender)) + 181 len floor32(ext_code.size(msg.sender))] = mem[180 len floor32(ext_code.size(msg.sender))]
            mem[ceil32(ext_code.size(msg.sender)) + floor32(ext_code.size(msg.sender)) + 181] = mem[floor32(ext_code.size(msg.sender)) + -(ext_code.size(msg.sender) % 32) + 212 len ext_code.size(msg.sender) % 32] or Mask(8 * -(ext_code.size(msg.sender) % 32) + 32, -(8 * -(ext_code.size(msg.sender) % 32) + 32) + 256, mem[ceil32(ext_code.size(msg.sender)) + floor32(ext_code.size(msg.sender)) + 181])
            mem[ceil32(ext_code.size(msg.sender)) + 149] = ext_code.size(msg.sender)
            mem[64] = ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 181
            mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 181 len floor32(ext_code.size(msg.sender))] = mem[ceil32(ext_code.size(msg.sender)) + 181 len floor32(ext_code.size(msg.sender))]
            mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + floor32(ext_code.size(msg.sender)) + 181] = mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + floor32(ext_code.size(msg.sender)) + 181] and 256^(-(ext_code.size(msg.sender) % 32) + 32) - 1 or mem[ceil32(ext_code.size(msg.sender)) + floor32(ext_code.size(msg.sender)) + 181] and !(256^(-(ext_code.size(msg.sender) % 32) + 32) - 1)
            if sha3(mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 181 len ext_code.size(msg.sender)]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Contract can not call'
            else:
                if uint32(ext_code.size(msg.sender)) > 0:
                    revert with 0, 'Contract can not call'
                else:
                    if msg.sender != tx.origin:
                        revert with 0, 'Contract can not call'
                    else:
                        require tokenPrice
                        if msg.value / tokenPrice <= 0:
                            revert with 0, 'pay enough amount'
                        else:
                            if (msg.value / tokenPrice) + totalAllocated + totalSold > totalSupply:
                                revert with 0, 'reached token limit'
                            else:
                                totalSold += msg.value / tokenPrice
                                mem[0] = msg.sender
                                mem[32] = 16
                                sub_436577e5[msg.sender] += msg.value / tokenPrice
                                if not address(owner):
                                    require not stor3
                                    if not stor7:
                                        require msg.sender
                                        require not stor6[address(stor0)]
                                        require not stor6[address(msg.sender)]
                                        if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                            revert with 0, 'SafeMath sub failed'
                                        else:
                                            balanceOf[address(stor0)] -= msg.value / tokenPrice
                                            if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath add failed'
                                            else:
                                                balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                return 1
                                    else:
                                        if not stor8[address(stor0)]:
                                            revert with 0, 'Restricted Address'
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                revert with 0, 'Restricted Address'
                                            else:
                                                require msg.sender
                                                require not stor6[address(stor0)]
                                                require not stor6[address(msg.sender)]
                                                if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                    revert with 0, 'SafeMath sub failed'
                                                else:
                                                    balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                    if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                        revert with 0, 'SafeMath add failed'
                                                    else:
                                                        balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                        emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                        emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                        return 1
                                else:
                                    if msg.sender:
                                        if not sub_3a7bf116:
                                            if not sub_1c8aeb0c:
                                                require not stor3
                                                if not stor7:
                                                    require msg.sender
                                                    require not stor6[address(stor0)]
                                                    require not stor6[address(msg.sender)]
                                                    if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                        revert with 0, 'SafeMath sub failed'
                                                    else:
                                                        balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                        if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                            revert with 0, 'SafeMath add failed'
                                                        else:
                                                            balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                            emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                            emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                            return 1
                                                else:
                                                    if not stor8[address(stor0)]:
                                                        revert with 0, 'Restricted Address'
                                                    else:
                                                        if not stor8[address(msg.sender)]:
                                                            revert with 0, 'Restricted Address'
                                                        else:
                                                            require msg.sender
                                                            require not stor6[address(stor0)]
                                                            require not stor6[address(msg.sender)]
                                                            if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                revert with 0, 'SafeMath sub failed'
                                                            else:
                                                                balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                    revert with 0, 'SafeMath add failed'
                                                                else:
                                                                    balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                    emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                    emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                    return 1
                                            else:
                                                if not sub_882cfb3fAddress:
                                                    require not stor3
                                                    if not stor7:
                                                        require msg.sender
                                                        require not stor6[address(stor0)]
                                                        require not stor6[address(msg.sender)]
                                                        if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                            revert with 0, 'SafeMath sub failed'
                                                        else:
                                                            balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                            if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                revert with 0, 'SafeMath add failed'
                                                            else:
                                                                balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                return 1
                                                    else:
                                                        if not stor8[address(stor0)]:
                                                            revert with 0, 'Restricted Address'
                                                        else:
                                                            if not stor8[address(msg.sender)]:
                                                                revert with 0, 'Restricted Address'
                                                            else:
                                                                require msg.sender
                                                                require not stor6[address(stor0)]
                                                                require not stor6[address(msg.sender)]
                                                                if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                    revert with 0, 'SafeMath sub failed'
                                                                else:
                                                                    balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                    if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                        revert with 0, 'SafeMath add failed'
                                                                    else:
                                                                        balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                        emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                        emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                        return 1
                                                else:
                                                    require ext_code.size(sub_882cfb3fAddress)
                                                    call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(owner), msg.sender, msg.value / tokenPrice
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0]
                                                        require not stor3
                                                        if not stor7:
                                                            require msg.sender
                                                            require not stor6[address(stor0)]
                                                            require not stor6[address(msg.sender)]
                                                            if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                revert with 0, 'SafeMath sub failed'
                                                            else:
                                                                balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                    revert with 0, 'SafeMath add failed'
                                                                else:
                                                                    balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                    emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                    emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                    return 1
                                                        else:
                                                            if not stor8[address(stor0)]:
                                                                revert with 0, 'Restricted Address'
                                                            else:
                                                                if not stor8[address(msg.sender)]:
                                                                    revert with 0, 'Restricted Address'
                                                                else:
                                                                    require msg.sender
                                                                    require not stor6[address(stor0)]
                                                                    require not stor6[address(msg.sender)]
                                                                    if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                        revert with 0, 'SafeMath sub failed'
                                                                    else:
                                                                        balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                        if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                            revert with 0, 'SafeMath add failed'
                                                                        else:
                                                                            balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                            emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                            emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                            return 1
                                        else:
                                            if not sub_89adfcbeAddress:
                                                if not sub_1c8aeb0c:
                                                    require not stor3
                                                    if not stor7:
                                                        require msg.sender
                                                        require not stor6[address(stor0)]
                                                        require not stor6[address(msg.sender)]
                                                        if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                            revert with 0, 'SafeMath sub failed'
                                                        else:
                                                            balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                            if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                revert with 0, 'SafeMath add failed'
                                                            else:
                                                                balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                return 1
                                                    else:
                                                        if not stor8[address(stor0)]:
                                                            revert with 0, 'Restricted Address'
                                                        else:
                                                            if not stor8[address(msg.sender)]:
                                                                revert with 0, 'Restricted Address'
                                                            else:
                                                                require msg.sender
                                                                require not stor6[address(stor0)]
                                                                require not stor6[address(msg.sender)]
                                                                if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                    revert with 0, 'SafeMath sub failed'
                                                                else:
                                                                    balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                    if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                        revert with 0, 'SafeMath add failed'
                                                                    else:
                                                                        balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                        emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                        emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                        return 1
                                                else:
                                                    if not sub_882cfb3fAddress:
                                                        require not stor3
                                                        if not stor7:
                                                            require msg.sender
                                                            require not stor6[address(stor0)]
                                                            require not stor6[address(msg.sender)]
                                                            if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                revert with 0, 'SafeMath sub failed'
                                                            else:
                                                                balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                    revert with 0, 'SafeMath add failed'
                                                                else:
                                                                    balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                    emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                    emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                    return 1
                                                        else:
                                                            if not stor8[address(stor0)]:
                                                                revert with 0, 'Restricted Address'
                                                            else:
                                                                if not stor8[address(msg.sender)]:
                                                                    revert with 0, 'Restricted Address'
                                                                else:
                                                                    require msg.sender
                                                                    require not stor6[address(stor0)]
                                                                    require not stor6[address(msg.sender)]
                                                                    if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                        revert with 0, 'SafeMath sub failed'
                                                                    else:
                                                                        balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                        if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                            revert with 0, 'SafeMath add failed'
                                                                        else:
                                                                            balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                            emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                            emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                            return 1
                                                    else:
                                                        require ext_code.size(sub_882cfb3fAddress)
                                                        call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(owner), msg.sender, msg.value / tokenPrice
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0]
                                                            require not stor3
                                                            if not stor7:
                                                                require msg.sender
                                                                require not stor6[address(stor0)]
                                                                require not stor6[address(msg.sender)]
                                                                if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                    revert with 0, 'SafeMath sub failed'
                                                                else:
                                                                    balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                    if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                        revert with 0, 'SafeMath add failed'
                                                                    else:
                                                                        balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                        emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                        emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                        return 1
                                                            else:
                                                                if not stor8[address(stor0)]:
                                                                    revert with 0, 'Restricted Address'
                                                                else:
                                                                    if not stor8[address(msg.sender)]:
                                                                        revert with 0, 'Restricted Address'
                                                                    else:
                                                                        require msg.sender
                                                                        require not stor6[address(stor0)]
                                                                        require not stor6[address(msg.sender)]
                                                                        if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                            revert with 0, 'SafeMath sub failed'
                                                                        else:
                                                                            balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                            if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                                revert with 0, 'SafeMath add failed'
                                                                            else:
                                                                                balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                                emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                                emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                                return 1
                                            else:
                                                mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 181] = 0x5f5a31a700000000000000000000000000000000000000000000000000000000
                                                mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 185] = address(owner)
                                                mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 217] = msg.sender
                                                require ext_code.size(sub_89adfcbeAddress)
                                                call sub_89adfcbeAddress.0x5f5a31a7 with:
                                                     gas gas_remaining wei
                                                    args address(owner), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 181 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 181
                                                    require return_data.size >= 64
                                                    require uint32(stor0), Mask(224, 32, msg.sender) >> 32 <= 4294967296
                                                    require uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                                                    require return_data.size >= mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 181] + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 32 and mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 181] <= 4294967296
                                                    if mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + 181 len 4], Mask(224, 0, stor0):
                                                        if not sub_1c8aeb0c:
                                                            require not stor3
                                                            if not stor7:
                                                                require msg.sender
                                                                require not stor6[address(stor0)]
                                                                require not stor6[address(msg.sender)]
                                                                if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                    revert with 0, 'SafeMath sub failed'
                                                                else:
                                                                    balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                    if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                        revert with 0, 'SafeMath add failed'
                                                                    else:
                                                                        balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                        emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                        emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                        return 1
                                                            else:
                                                                if not stor8[address(stor0)]:
                                                                    revert with 0, 'Restricted Address'
                                                                else:
                                                                    if not stor8[address(msg.sender)]:
                                                                        revert with 0, 'Restricted Address'
                                                                    else:
                                                                        require msg.sender
                                                                        require not stor6[address(stor0)]
                                                                        require not stor6[address(msg.sender)]
                                                                        if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                            revert with 0, 'SafeMath sub failed'
                                                                        else:
                                                                            balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                            if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                                revert with 0, 'SafeMath add failed'
                                                                            else:
                                                                                balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                                emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                                emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                                return 1
                                                        else:
                                                            if not sub_882cfb3fAddress:
                                                                require not stor3
                                                                if not stor7:
                                                                    require msg.sender
                                                                    require not stor6[address(stor0)]
                                                                    require not stor6[address(msg.sender)]
                                                                    if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                        revert with 0, 'SafeMath sub failed'
                                                                    else:
                                                                        balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                        if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                            revert with 0, 'SafeMath add failed'
                                                                        else:
                                                                            balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                            emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                            emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                            return 1
                                                                else:
                                                                    if not stor8[address(stor0)]:
                                                                        revert with 0, 'Restricted Address'
                                                                    else:
                                                                        if not stor8[address(msg.sender)]:
                                                                            revert with 0, 'Restricted Address'
                                                                        else:
                                                                            require msg.sender
                                                                            require not stor6[address(stor0)]
                                                                            require not stor6[address(msg.sender)]
                                                                            if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                                revert with 0, 'SafeMath sub failed'
                                                                            else:
                                                                                balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                                if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                                    revert with 0, 'SafeMath add failed'
                                                                                else:
                                                                                    balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                                    emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                                    emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                                    return 1
                                                            else:
                                                                require ext_code.size(sub_882cfb3fAddress)
                                                                call sub_882cfb3fAddress._SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, address(owner), msg.sender, msg.value / tokenPrice
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0]
                                                                    require not stor3
                                                                    if not stor7:
                                                                        require msg.sender
                                                                        require not stor6[address(stor0)]
                                                                        require not stor6[address(msg.sender)]
                                                                        if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                            revert with 0, 'SafeMath sub failed'
                                                                        else:
                                                                            balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                            if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                                revert with 0, 'SafeMath add failed'
                                                                            else:
                                                                                balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                                emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                                emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                                return 1
                                                                    else:
                                                                        if not stor8[address(stor0)]:
                                                                            revert with 0, 'Restricted Address'
                                                                        else:
                                                                            if not stor8[address(msg.sender)]:
                                                                                revert with 0, 'Restricted Address'
                                                                            else:
                                                                                require msg.sender
                                                                                require not stor6[address(stor0)]
                                                                                require not stor6[address(msg.sender)]
                                                                                if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                                                    revert with 0, 'SafeMath sub failed'
                                                                                else:
                                                                                    balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                                                    if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                                                        revert with 0, 'SafeMath add failed'
                                                                                    else:
                                                                                        balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                                                        emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                                                        emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                                                        return 1
                                                    else:
                                                        mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 181] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 185] = 32
                                                        mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 217] = mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 181]
                                                        _1514 = mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 181]
                                                        mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 249 len ceil32(mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 181])] = mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 213 len ceil32(mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + uint32(stor0), Mask(224, 32, msg.sender) >> 32 + 181])]
                                                        if not _1514 % 32:
                                                            revert with 0, 
                                                                        32,
                                                                        mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 217 len _1514 + 32]
                                                        else:
                                                            mem[floor32(_1514) + ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 249] = mem[floor32(_1514) + ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + -(_1514 % 32) + 281 len _1514 % 32]
                                                            revert with 0, 
                                                                        32,
                                                                        mem[ext_code.size(msg.sender) + ceil32(ext_code.size(msg.sender)) + ceil32(return_data.size) + 217 len floor32(_1514) + 64]
                                    else:
                                        require not stor3
                                        if not stor7:
                                            require msg.sender
                                            require not stor6[address(stor0)]
                                            require not stor6[address(msg.sender)]
                                            if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                revert with 0, 'SafeMath sub failed'
                                            else:
                                                balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath add failed'
                                                else:
                                                    balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                    emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                    emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                    return 1
                                        else:
                                            if not stor8[address(stor0)]:
                                                revert with 0, 'Restricted Address'
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    revert with 0, 'Restricted Address'
                                                else:
                                                    require msg.sender
                                                    require not stor6[address(stor0)]
                                                    require not stor6[address(msg.sender)]
                                                    if msg.value / tokenPrice > balanceOf[address(stor0)]:
                                                        revert with 0, 'SafeMath sub failed'
                                                    else:
                                                        balanceOf[address(stor0)] -= msg.value / tokenPrice
                                                        if (msg.value / tokenPrice) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                            revert with 0, 'SafeMath add failed'
                                                        else:
                                                            balanceOf[address(msg.sender)] = (msg.value / tokenPrice) + balanceOf[msg.sender]
                                                            emit Transfer((msg.value / tokenPrice), address(owner), msg.sender);
                                                            emit buyTokenEv(msg.sender, msg.value / tokenPrice, msg.value);
                                                            return 1
        else:
            if uint32(ext_code.size(msg.sender)) > 0:
                revert with 0, 'Contract can not call'
            else:
                if msg.sender != tx.origin:
                    revert with 0, 'Contract can not call'
                else:
                    revert with 0, 'Contract can not call'
}



}
