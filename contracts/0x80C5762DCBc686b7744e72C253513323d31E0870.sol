contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - buyLootBoxTokens(uint256 arg1)
#  - sub_36417e23(?)
#  - buyNFTTokens(uint256 arg1)
#  - checkDividendsOwed(address arg1)
#  - initialize()
#  - claimAllDividends()
#  - sub_a35ce586(?)
#  - transfer(address arg1, uint256 arg2)
#  - sub_e9295270(?)
#
const decimals = 18


address owner;
uint8 paused;
address stor251;
address stor252;
mapping of uint256 stor253;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor257;
array of struct stor258;
mapping of uint256 sub_9bef9200;
mapping of uint256 sub_fc76a001;
uint256 stor262;
uint256 stor263;
address stor264;
mapping of uint256 sub_3a23e621;
mapping of uint256 sub_4b52b30b;
mapping of uint256 stor267;
mapping of uint256 sub_11b9743c;
array of address stor275;
mapping of uint256 stor276;
mapping of uint8 stor277;
mapping of uint256 sub_80fbfd5d;
uint256 sub_faadb97f;
uint256 stor280;
uint8 stor281;
mapping of uint256 sub_7ae10b3c;
mapping of uint256 sub_68f86e6f;
uint256 sub_74029045;
uint256 stor292;
uint8 stor293;
mapping of uint8 stor294;
mapping of uint8 stor295;
mapping of uint256 stor296;
mapping of struct stor297;
mapping of uint256 stor298;
mapping of uint256 stor299;
uint256 stor300;
uint256 numHolders;
uint256 sub_5a65fd67;
uint256 lotteryAmount;
uint256 stor305;
mapping of uint8 stor312;
address stor313;
array of struct stor315;
mapping of uint256 sub_fcc55aec;
array of uint256 stor318;
array of uint256 stor319;
uint256 currentDividendsID;
mapping of address sub_d54d0056;
address sub_34b77719Address;
uint256 stor368;
mapping of uint256 sub_ab849317;
mapping of uint256 sub_13df94a0;
mapping of address sub_d28634e1;
mapping of uint256 sub_18c6c6ce;
uint256 lotteryID;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;

function sub_11b9743c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_11b9743c[arg1]
}

function sub_13df94a0(?) {
    require calldata.size - 4 >= 32
    return sub_13df94a0[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_18c6c6ce(?) {
    require calldata.size - 4 >= 64
    return sub_18c6c6ce[arg1][arg2]
}

function currentDividendsID() {
    return currentDividendsID
}

function sub_34b77719(?) {
    return address(sub_34b77719Address)
}

function sub_3a23e621(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3a23e621[arg1]
}

function sub_4b52b30b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b52b30b[arg1]
}

function sub_56c3ba41(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    return bool(stor277[arg1][arg2][arg3])
}

function sub_5a65fd67(?) {
    return sub_5a65fd67
}

function paused() {
    return bool(paused)
}

function lotteryAmount() {
    return lotteryAmount
}

function sub_68f86e6f(?) {
    require calldata.size - 4 >= 32
    return sub_68f86e6f[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_74029045(?) {
    return sub_74029045
}

function sub_7ae10b3c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_7ae10b3c[arg1][arg2][arg3]
}

function sub_80fbfd5d(?) {
    require calldata.size - 4 >= 32
    return sub_80fbfd5d[arg1]
}

function owner() {
    return owner
}

function lotteryID() {
    return lotteryID
}

function sub_9bef9200(?) {
    require calldata.size - 4 >= 32
    return sub_9bef9200[arg1]
}

function sub_ab849317(?) {
    require calldata.size - 4 >= 32
    return sub_ab849317[arg1]
}

function numHolders() {
    return numHolders
}

function sub_d28634e1(?) {
    require calldata.size - 4 >= 64
    return sub_d28634e1[arg1][arg2]
}

function sub_d54d0056(?) {
    require calldata.size - 4 >= 32
    return sub_d54d0056[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_faadb97f(?) {
    return sub_faadb97f
}

function sub_fc76a001(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fc76a001[arg1]
}

function sub_fcc55aec(?) {
    require calldata.size - 4 >= 32
    return sub_fcc55aec[arg1]
}

function _fallback() payable {
    revert
}

function sub_f88d113f(?) {
    require msg.sender == owner
}

function renounceOwnership() {
    require msg.sender == owner
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function _snapshot() {
    require msg.sender == owner
    currentDividendsID++
    emit Snapshot(currentDividendsID);
    return currentDividendsID
}

function rawFulfillRandomness(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor252
    sub_9bef9200[arg1] = arg2
}

function excludeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor312[address(arg1)] = 1
    stor295[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drawGridlock2() {
    require msg.sender == owner
    require not stor293
    require sub_9bef9200[stor292]
    if 1 > !(sub_9bef9200[stor292] % 12):
        revert with 0, 17
    sub_68f86e6f[stor291] = (sub_9bef9200[stor292] % 12) + 1
    if sub_74029045 == -1:
        revert with 0, 17
    sub_74029045++
    stor293 = 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require allowance[msg.sender][address(arg1)] >= arg2
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function totalSupplyAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= currentDividendsID
    if stor318.length:
        idx = stor318.length
        while 0 < idx:
            if 0 > !(idx xor 0 / 2):
                revert with 0, 17
            if idx xor 0 / 2 >= stor318.length:
                revert with 0, 50
            mem[0] = 318
            if stor318[0.5 / idx xor 0] > arg1:
                idx = idx xor 0 / 2
                continue 
            if 1 > !(idx xor 0 / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor318.length:
        return totalSupply
    if 0 >= stor319.length:
        revert with 0, 50
    return stor319
}

function balanceOfAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    require arg2 > 0
    require arg2 <= currentDividendsID
    if uint256(stor315[address(arg1)].field_0):
        idx = uint256(stor315[mem[0]].field_0)
        while 0 < idx:
            if 0 > !(idx xor 0 / 2):
                revert with 0, 17
            if idx xor 0 / 2 >= uint256(stor315[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 315)
            if uint256(stor315[address(arg1)][0.5 / idx xor 0].field_0) > arg2:
                idx = idx xor 0 / 2
                continue 
            if 1 > !(idx xor 0 / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == uint256(stor315[address(arg1)].field_0):
        return balanceOf[address(arg1)]
    if 0 >= uint256(stor315[address(arg1)].field_256):
        revert with 0, 50
    return uint256(stor315[address(arg1)][1].field_0)
}

function airdropLootBox(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require msg.sender == owner
    mem[96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    require ext_code.size(stor264)
    call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    require mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        require address(stor3608) == address(stor3608)
        require ext_code.size(arg1)
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function buyNFTBNB(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 549999:
        require 10000 * 10^18 == msg.value
    else:
        if arg1 <= 789999:
            require 10^17 == msg.value
        else:
            if arg1 <= 909999:
                require 2 * 10^17 == msg.value
            else:
                if arg1 <= 969999:
                    require 4 * 10^17 == msg.value
                else:
                    require 10000 * 10^18 == msg.value
    if lotteryAmount > !(msg.value / 3):
        revert with 0, 17
    lotteryAmount += msg.value / 3
    call owner with:
       value msg.value / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < msg.value / 3:
        revert with 0, 17
    if msg.value - (msg.value / 3) < msg.value / 3:
        revert with 0, 17
    if 1 > !currentDividendsID:
        revert with 0, 17
    if sub_13df94a0[stor320 + 1] > !(msg.value - (2 * msg.value / 3)):
        revert with 0, 17
    sub_13df94a0[stor320 + 1] = sub_13df94a0[stor320 + 1] + msg.value - (2 * msg.value / 3)
    require ext_code.size(stor264)
    call stor264.buyNFT(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function drawGridlock1() {
    require msg.sender == owner
    require stor293
    require ext_code.size(stor251)
    staticcall stor251.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor263
    mem[ceil32(return_data.size) + 196] = stor252
    mem[ceil32(return_data.size) + 228] = stor263
    mem[ceil32(return_data.size) + 260] = 96
    mem[ceil32(return_data.size) + 292] = 64
    mem[ceil32(return_data.size) + 324 len 64] = stor262, 0
    require ext_code.size(stor251)
    call stor251.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor252, stor263, 96, 64, stor262, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = stor262
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = this.address
    mem[(2 * ceil32(return_data.size)) + 320] = stor253[stor262]
    if 1 > !stor253[stor262]:
        revert with 0, 17
    stor253[stor262]++
    stor292 = sha3(stor262, sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128]))
    stor293 = 0
}

function mintOwedLootPrizes() {
    require sub_4b52b30b[msg.sender]
    require stor267[msg.sender]
    mem[96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = stor267[msg.sender]
    mem[164] = sub_4b52b30b[msg.sender]
    require ext_code.size(stor264)
    call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, stor267[msg.sender], sub_4b52b30b[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
    sub_4b52b30b[msg.sender] = 0
    stor267[address(msg.sender)] = 0
}

function drawNumberdome1() {
    require msg.sender == owner
    require stor281
    require ext_code.size(stor251)
    staticcall stor251.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor263
    mem[ceil32(return_data.size) + 196] = stor252
    mem[ceil32(return_data.size) + 228] = stor263
    mem[ceil32(return_data.size) + 260] = 96
    mem[ceil32(return_data.size) + 292] = 64
    mem[ceil32(return_data.size) + 324 len 64] = stor262, 0
    require ext_code.size(stor251)
    call stor251.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor252, stor263, 96, 64, stor262, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = stor262
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = this.address
    mem[(2 * ceil32(return_data.size)) + 320] = stor253[stor262]
    if 1 > !stor253[stor262]:
        revert with 0, 17
    stor253[stor262]++
    stor280 = sha3(stor262, sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128]))
    stor281 = 0
}

function mintOwedLootBoxes() {
    require sub_3a23e621[msg.sender]
    require sub_9bef9200[stor261[msg.sender]]
    mem[96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = sub_9bef9200[stor261[msg.sender]]
    mem[164] = sub_3a23e621[msg.sender]
    require ext_code.size(stor264)
    call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, sub_9bef9200[stor261[msg.sender]], sub_3a23e621[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
    sub_3a23e621[address(msg.sender)] = 0
}

function buyUpgradeNFT() payable {
    require 10^16 == msg.value
    require not sub_11b9743c[msg.sender]
    require ext_code.size(stor251)
    staticcall stor251.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor263
    mem[ceil32(return_data.size) + 196] = stor252
    mem[ceil32(return_data.size) + 228] = stor263
    mem[ceil32(return_data.size) + 260] = 96
    mem[ceil32(return_data.size) + 292] = 64
    mem[ceil32(return_data.size) + 324 len 64] = stor262, 0
    require ext_code.size(stor251)
    call stor251.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor252, stor263, 96, 64, stor262, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = stor262
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = this.address
    mem[(2 * ceil32(return_data.size)) + 320] = stor253[stor262]
    if 1 > !stor253[stor262]:
        revert with 0, 17
    stor253[stor262]++
    sub_fc76a001[msg.sender] = sha3(stor262, sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128]))
    sub_11b9743c[msg.sender] = 1
}

function pickLotteryWinningNumber() {
    require msg.sender == owner
    require ext_code.size(stor251)
    staticcall stor251.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor263
    mem[ceil32(return_data.size) + 196] = stor252
    mem[ceil32(return_data.size) + 228] = stor263
    mem[ceil32(return_data.size) + 260] = 96
    mem[ceil32(return_data.size) + 292] = 64
    mem[ceil32(return_data.size) + 324 len 64] = stor262, 0
    require ext_code.size(stor251)
    call stor251.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor252, stor263, 96, 64, stor262, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = stor262
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = this.address
    mem[(2 * ceil32(return_data.size)) + 320] = stor253[stor262]
    if 1 > !stor253[stor262]:
        revert with 0, 17
    stor253[stor262]++
    stor305 = sha3(stor262, sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128]))
    require msg.sender == owner
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function sub_1087c5e9(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require sub_9bef9200[stor261[msg.sender]]
    require sub_11b9743c[msg.sender]
    require ('cd', 36).length == ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = sub_fc76a001[address(msg.sender)]
        mem[32] = 260
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 100] = sub_9bef9200[stor261[address(msg.sender)]]
        require ext_code.size(stor264)
        call stor264.upgradeNFT(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], sub_9bef9200[stor261[address(msg.sender)]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_11b9743c[address(msg.sender)] = 0
}

function buyLootBoxBNB(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not sub_3a23e621[msg.sender]
    if 1 == arg1:
        require 16 * 10^16 == msg.value
    else:
        if 5 == arg1:
            require 65 * 10^16 == msg.value
        else:
            if 10 == arg1:
                require 113 * 10^16 == msg.value
            else:
                if arg1 != 50:
                    require 100000 * 10^18 == msg.value
                else:
                    require 561 * 10^16 == msg.value
    if lotteryAmount > !(msg.value / 3):
        revert with 0, 17
    lotteryAmount += msg.value / 3
    call owner with:
       value msg.value / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < msg.value / 3:
        revert with 0, 17
    if msg.value - (msg.value / 3) < msg.value / 3:
        revert with 0, 17
    if 1 > !currentDividendsID:
        revert with 0, 17
    if sub_13df94a0[stor320 + 1] > !(msg.value - (2 * msg.value / 3)):
        revert with 0, 17
    sub_13df94a0[stor320 + 1] = sub_13df94a0[stor320 + 1] + msg.value - (2 * msg.value / 3)
    require ext_code.size(stor251)
    staticcall stor251.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor263
    mem[ceil32(return_data.size) + 196] = stor252
    mem[ceil32(return_data.size) + 228] = stor263
    mem[ceil32(return_data.size) + 260] = 96
    mem[ceil32(return_data.size) + 292] = 64
    mem[ceil32(return_data.size) + 324 len 64] = stor262, 0
    require ext_code.size(stor251)
    call stor251.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args stor252, stor263, 96, 64, stor262, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 224] = stor262
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = this.address
    mem[(2 * ceil32(return_data.size)) + 320] = stor253[stor262]
    if 1 > !stor253[stor262]:
        revert with 0, 17
    stor253[stor262]++
    sub_fc76a001[msg.sender] = sha3(stor262, sha3(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 128]))
    sub_3a23e621[address(msg.sender)] = arg1
}

function name() {
    if bool(stor257.length):
        if bool(stor257.length) == uint255(stor257.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor257.length):
            if bool(stor257.length) == uint255(stor257.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor257.length):
                if 31 < uint255(stor257.length) * 0.5:
                    mem[128] = uint256(stor257.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor257.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor257[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor257.length), data=mem[128 len ceil32(uint255(stor257.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor257.length.field_8)
        else:
            if bool(stor257.length) == stor257.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor257.length.field_1 % 128:
                if 31 < stor257.length.field_1 % 128:
                    mem[128] = uint256(stor257.field_0)
                    idx = 128
                    s = 0
                    while stor257.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor257[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor257.length), data=mem[128 len ceil32(uint255(stor257.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor257.length.field_8)
        mem[ceil32(uint255(stor257.length) * 0.5) + 192 len ceil32(uint255(stor257.length) * 0.5)] = mem[128 len ceil32(uint255(stor257.length) * 0.5)]
        if ceil32(uint255(stor257.length) * 0.5) > uint255(stor257.length) * 0.5:
            mem[(uint255(stor257.length) * 0.5) + ceil32(uint255(stor257.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor257.length), data=mem[128 len ceil32(uint255(stor257.length) * 0.5)], mem[(2 * ceil32(uint255(stor257.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor257.length) * 0.5)]), 
    if bool(stor257.length) == stor257.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor257.length):
        if bool(stor257.length) == uint255(stor257.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor257.length):
            if 31 < uint255(stor257.length) * 0.5:
                mem[128] = uint256(stor257.field_0)
                idx = 128
                s = 0
                while (uint255(stor257.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor257[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor257.length % 128, data=mem[128 len ceil32(stor257.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor257.length.field_8)
    else:
        if bool(stor257.length) == stor257.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor257.length.field_1 % 128:
            if 31 < stor257.length.field_1 % 128:
                mem[128] = uint256(stor257.field_0)
                idx = 128
                s = 0
                while stor257.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor257[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor257.length % 128, data=mem[128 len ceil32(stor257.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor257.length.field_8)
    mem[ceil32(stor257.length.field_1 % 128) + 192 len ceil32(stor257.length.field_1 % 128)] = mem[128 len ceil32(stor257.length.field_1 % 128)]
    if ceil32(stor257.length.field_1 % 128) > stor257.length.field_1 % 128:
        mem[stor257.length.field_1 % 128 + ceil32(stor257.length.field_1 % 128) + 192] = 0
    return Array(len=stor257.length % 128, data=mem[128 len ceil32(stor257.length.field_1 % 128)], mem[(2 * ceil32(stor257.length.field_1 % 128)) + 192 len 2 * ceil32(stor257.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor258.length):
        if bool(stor258.length) == uint255(stor258.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor258.length):
            if bool(stor258.length) == uint255(stor258.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor258.length):
                if 31 < uint255(stor258.length) * 0.5:
                    mem[128] = uint256(stor258.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor258.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor258[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor258.length), data=mem[128 len ceil32(uint255(stor258.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor258.length.field_8)
        else:
            if bool(stor258.length) == stor258.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor258.length.field_1 % 128:
                if 31 < stor258.length.field_1 % 128:
                    mem[128] = uint256(stor258.field_0)
                    idx = 128
                    s = 0
                    while stor258.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor258[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor258.length), data=mem[128 len ceil32(uint255(stor258.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor258.length.field_8)
        mem[ceil32(uint255(stor258.length) * 0.5) + 192 len ceil32(uint255(stor258.length) * 0.5)] = mem[128 len ceil32(uint255(stor258.length) * 0.5)]
        if ceil32(uint255(stor258.length) * 0.5) > uint255(stor258.length) * 0.5:
            mem[(uint255(stor258.length) * 0.5) + ceil32(uint255(stor258.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor258.length), data=mem[128 len ceil32(uint255(stor258.length) * 0.5)], mem[(2 * ceil32(uint255(stor258.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor258.length) * 0.5)]), 
    if bool(stor258.length) == stor258.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor258.length):
        if bool(stor258.length) == uint255(stor258.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor258.length):
            if 31 < uint255(stor258.length) * 0.5:
                mem[128] = uint256(stor258.field_0)
                idx = 128
                s = 0
                while (uint255(stor258.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor258[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor258.length % 128, data=mem[128 len ceil32(stor258.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor258.length.field_8)
    else:
        if bool(stor258.length) == stor258.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor258.length.field_1 % 128:
            if 31 < stor258.length.field_1 % 128:
                mem[128] = uint256(stor258.field_0)
                idx = 128
                s = 0
                while stor258.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor258[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor258.length % 128, data=mem[128 len ceil32(stor258.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor258.length.field_8)
    mem[ceil32(stor258.length.field_1 % 128) + 192 len ceil32(stor258.length.field_1 % 128)] = mem[128 len ceil32(stor258.length.field_1 % 128)]
    if ceil32(stor258.length.field_1 % 128) > stor258.length.field_1 % 128:
        mem[stor258.length.field_1 % 128 + ceil32(stor258.length.field_1 % 128) + 192] = 0
    return Array(len=stor258.length % 128, data=mem[128 len ceil32(stor258.length.field_1 % 128)], mem[(2 * ceil32(stor258.length.field_1 % 128)) + 192 len 2 * ceil32(stor258.length.field_1 % 128)]), 
}

function claimGridlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_68f86e6f[arg1]
    require sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]
    if sub_7ae10b3c[msg.sender][arg1][stor290[arg1]] and 12 > -1 / sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]:
        revert with 0, 17
    sub_7ae10b3c[msg.sender][arg1][stor290[arg1]] = 0
    require msg.sender
    require not paused
    if not uint256(stor315[address(msg.sender)].field_0):
        if 0 < currentDividendsID:
            uint256(stor315[address(msg.sender)].field_0)++
            uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) = currentDividendsID
            uint256(stor315[address(msg.sender)].field_256)++
            uint256(stor[uint256(stor315[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor315', 315)))].field_0) = balanceOf[address(msg.sender)]
    else:
        if uint256(stor315[address(msg.sender)].field_0) < 1:
            revert with 0, 17
        if uint256(stor315[address(msg.sender)].field_0) - 1 >= uint256(stor315[address(msg.sender)].field_0):
            revert with 0, 50
        if uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) < currentDividendsID:
            uint256(stor315[address(msg.sender)].field_0)++
            uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) = currentDividendsID
            uint256(stor315[address(msg.sender)].field_256)++
            uint256(stor[uint256(stor315[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor315', 315)))].field_0) = balanceOf[address(msg.sender)]
    if not stor318.length:
        if 0 < currentDividendsID:
            stor318.length++
            stor318[stor318.length] = currentDividendsID
            stor319.length++
            stor319[stor319.length] = totalSupply
    else:
        if stor318.length < 1:
            revert with 0, 17
        if stor318.length - 1 >= stor318.length:
            revert with 0, 50
        if stor318[stor318.length] < currentDividendsID:
            stor318.length++
            stor318[stor318.length] = currentDividendsID
            stor319.length++
            stor319[stor319.length] = totalSupply
    if totalSupply > !(12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]):
        revert with 0, 17
    totalSupply += 12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]
    if balanceOf[address(msg.sender)] > !(12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]):
        revert with 0, 17
    balanceOf[address(msg.sender)] += 12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]
    if not stor295[address(msg.sender)]:
        if not stor294[address(msg.sender)]:
            if balanceOf[address(msg.sender)]:
                require not stor294[address(msg.sender)]
                s = 1
                while 100 <= stor298[1]:
                    if s == -1:
                        revert with 0, 17
                    mem[0] = s + 1
                    mem[32] = 298
                    s = s + 1
                    continue 
                if not address(stor297[s][1].field_0):
                    uint8(stor297[s][1].field_0) = 1
                    Mask(152, 0, stor297[s][1].field_8) = 0
                address(stor297[s][msg.sender].field_0) = address(stor297[s][1].field_0)
                address(stor297[s][1].field_0) = msg.sender
                stor296[address(msg.sender)] = s
                stor294[address(msg.sender)] = 1
                if 1 > !stor298[s]:
                    revert with 0, 17
                stor298[s]++
                if numHolders == -1:
                    revert with 0, 17
                numHolders++
        if stor299[stor296[address(msg.sender)]] > !(12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]):
            revert with 0, 17
        stor299[stor296[address(msg.sender)]] += 12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]
        if sub_5a65fd67 > !(12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]):
            revert with 0, 17
        sub_5a65fd67 += 12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]
    emit Transfer((12 * sub_7ae10b3c[msg.sender][arg1][stor290[arg1]]), 0, msg.sender);
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    require ext_code.size(arg1)
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            require address(stor3608) == address(stor3608)
            require ext_code.size(arg1)
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            require address(stor3608) == address(stor3608)
            require ext_code.size(arg1)
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function playNumberdome(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor281
    require 111 <= arg1
    require arg1 <= 555
    require not stor277[stor279][arg1][msg.sender]
    require msg.sender
    require not paused
    if msg.sender:
        if not uint256(stor315[address(msg.sender)].field_0):
            if 0 < currentDividendsID:
                uint256(stor315[address(msg.sender)].field_0)++
                uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) = currentDividendsID
                uint256(stor315[address(msg.sender)].field_256)++
                uint256(stor[uint256(stor315[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor315', 315)))].field_0) = balanceOf[address(msg.sender)]
        else:
            if uint256(stor315[address(msg.sender)].field_0) < 1:
                revert with 0, 17
            if uint256(stor315[address(msg.sender)].field_0) - 1 >= uint256(stor315[address(msg.sender)].field_0):
                revert with 0, 50
            if uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) < currentDividendsID:
                uint256(stor315[address(msg.sender)].field_0)++
                uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) = currentDividendsID
                uint256(stor315[address(msg.sender)].field_256)++
                uint256(stor[uint256(stor315[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor315', 315)))].field_0) = balanceOf[address(msg.sender)]
    else:
        if not uint256(stor315[0].field_0):
            if 0 < currentDividendsID:
                uint256(stor315[0].field_0)++
                uint256(stor315[0][uint256(stor315[0].field_0)].field_0) = currentDividendsID
                uint256(stor315[0].field_256)++
                uint256(stor[uint256(stor315[0].field_256) + ('array', 1, ('map', 0, ('name', 'stor315', 315)))].field_0) = balanceOf[0]
        else:
            if uint256(stor315[0].field_0) < 1:
                revert with 0, 17
            if uint256(stor315[0].field_0) - 1 >= uint256(stor315[0].field_0):
                revert with 0, 50
            if uint256(stor315[0][uint256(stor315[0].field_0)].field_0) < currentDividendsID:
                uint256(stor315[0].field_0)++
                uint256(stor315[0][uint256(stor315[0].field_0)].field_0) = currentDividendsID
                uint256(stor315[0].field_256)++
                uint256(stor[uint256(stor315[0].field_256) + ('array', 1, ('map', 0, ('name', 'stor315', 315)))].field_0) = balanceOf[0]
    if not stor318.length:
        if 0 < currentDividendsID:
            stor318.length++
            stor318[stor318.length] = currentDividendsID
            stor319.length++
            stor319[stor319.length] = totalSupply
    else:
        if stor318.length < 1:
            revert with 0, 17
        if stor318.length - 1 >= stor318.length:
            revert with 0, 50
        if stor318[stor318.length] < currentDividendsID:
            stor318.length++
            stor318[stor318.length] = currentDividendsID
            stor319.length++
            stor319[stor319.length] = totalSupply
    require balanceOf[address(msg.sender)] >= 10000 * 10^18
    balanceOf[address(msg.sender)] -= 10000 * 10^18
    if not stor295[address(msg.sender)]:
        if stor299[stor296[address(msg.sender)]] < 10000 * 10^18:
            revert with 0, 17
        stor299[stor296[address(msg.sender)]] -= 10000 * 10^18
        if sub_5a65fd67 < 10000 * 10^18:
            revert with 0, 17
        sub_5a65fd67 -= 10000 * 10^18
        if not balanceOf[address(msg.sender)]:
            require stor294[address(msg.sender)]
            s = 1
            while address(stor297[stor296[address(msg.sender)]][1].field_0) != 1:
                if address(stor297[stor296[address(msg.sender)]][address(s)].field_0) != msg.sender:
                    mem[0] = address(stor297[stor296[address(msg.sender)]][address(s)].field_0)
                    mem[32] = sha3(stor296[address(msg.sender)], 297)
                    s = address(stor297[stor296[address(msg.sender)]][address(s)].field_0)
                    continue 
                address(stor297[stor296[address(msg.sender)]][address(s)].field_0) = address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0)
                address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0) = 0
                stor296[address(msg.sender)] = 0
                stor294[address(msg.sender)] = 0
                if stor298[stor296[address(msg.sender)]] < 1:
                    revert with 0, 17
                stor298[stor296[address(msg.sender)]]--
                if not numHolders:
                    revert with 0, 17
                numHolders--
                if totalSupply < 10000 * 10^18:
                    revert with 0, 17
                totalSupply -= 10000 * 10^18
                emit Transfer(10000 * 10^18, msg.sender, 0);
                uint256(stor275[stor279][arg1])++
                uint256(stor275[stor279][arg1][uint256(stor275[stor279][arg1])]) = msg.sender or Mask(96, 160, uint256(stor275[stor279][arg1][uint256(stor275[stor279][arg1])]))
                stor277[stor279][arg1][msg.sender] = 1
                if 1 > !stor276[stor279][arg1]:
                    revert with 0, 17
                stor276[stor279][arg1]++
            address(stor297[stor296[address(msg.sender)]][0].field_0) = address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0)
            address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0) = 0
            stor296[address(msg.sender)] = 0
            stor294[address(msg.sender)] = 0
            if stor298[stor296[address(msg.sender)]] < 1:
                revert with 0, 17
            stor298[stor296[address(msg.sender)]]--
            if not numHolders:
                revert with 0, 17
            numHolders--
    if totalSupply < 10000 * 10^18:
        revert with 0, 17
    totalSupply -= 10000 * 10^18
    emit Transfer(10000 * 10^18, msg.sender, 0);
    uint256(stor275[stor279][arg1])++
    uint256(stor275[stor279][arg1][uint256(stor275[stor279][arg1])]) = msg.sender or Mask(96, 160, uint256(stor275[stor279][arg1][uint256(stor275[stor279][arg1])]))
    stor277[stor279][arg1][msg.sender] = 1
    if 1 > !stor276[stor279][arg1]:
        revert with 0, 17
    stor276[stor279][arg1]++
}

function drawNumberdome2() {
    require msg.sender == owner
    require not stor281
    require sub_9bef9200[stor280]
    mem[0] = stor280
    mem[32] = 260
    mem[96] = 3
    mem[64] = 224
    mem[128 len 96] = call.data[calldata.size len 96]
    idx = 0
    while idx < 3:
        mem[mem[64] + 32] = sub_9bef9200[stor280]
        mem[mem[64] + 64] = idx
        _1172 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if 1 > !(sha3(mem[_1172 + 32 len mem[_1172]]) % 5):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = (sha3(mem[_1172 + 32 len mem[_1172]]) % 5) + 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if 2 >= mem[96]:
        revert with 0, 50
    _1175 = mem[192]
    if 1 >= mem[96]:
        revert with 0, 50
    _1177 = mem[160]
    if mem[160] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if 0 >= mem[96]:
        revert with 0, 50
    _1179 = mem[128]
    if mem[128] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if 100 * mem[128] > !(10 * mem[160]):
        revert with 0, 17
    if (100 * mem[128]) + (10 * mem[160]) > !mem[192]:
        revert with 0, 17
    sub_80fbfd5d[stor279] = (100 * mem[128]) + (10 * mem[160]) + mem[192]
    _1183 = sha3((100 * mem[128]) + (10 * mem[160]) + mem[192], sha3(sub_faadb97f, 276))
    if stor276[stor279][(100 * mem[128]) + (10 * mem[160]) + mem[192]]:
        idx = 0
        while idx < uint256(stor[_1183]):
            if idx >= uint256(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175]):
                revert with 0, 50
            require address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])
            require not paused
            if not uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0):
                if 0 < currentDividendsID:
                    uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0)++
                    uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])][uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0)].field_0) = currentDividendsID
                    uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_256)++
                    uint256(stor[uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_256) + ('array', 1, ('map', ('type', 160, ('stor', ('array', ('var', 0), ('map', ('add', ('mul', 100, ('var', '_1179')), ('mul', 10, ('var', '_1177')), ('var', '_1175')), ('map', ('stor', ('name', 'stor279', 279)), ('name', 'stor275', 275)))))), ('name', 'stor315', 315)))].field_0) = balanceOf[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]
            else:
                if uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0) < 1:
                    revert with 0, 17
                if uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0) - 1 >= uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0):
                    revert with 0, 50
                if uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])][uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0)].field_0) < currentDividendsID:
                    uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0)++
                    uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])][uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0)].field_0) = currentDividendsID
                    uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_256)++
                    uint256(stor[uint256(stor315[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_256) + ('array', 1, ('map', ('type', 160, ('stor', ('array', ('var', 0), ('map', ('add', ('mul', 100, ('var', '_1179')), ('mul', 10, ('var', '_1177')), ('var', '_1175')), ('map', ('stor', ('name', 'stor279', 279)), ('name', 'stor275', 275)))))), ('name', 'stor315', 315)))].field_0) = balanceOf[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]
            if not stor318.length:
                if 0 < currentDividendsID:
                    stor318.length++
                    stor318[stor318.length] = currentDividendsID
                    stor319.length++
                    stor319[stor319.length] = totalSupply
            else:
                if stor318.length < 1:
                    revert with 0, 17
                if stor318.length - 1 >= stor318.length:
                    revert with 0, 50
                if stor318[stor318.length] < currentDividendsID:
                    stor318.length++
                    stor318[stor318.length] = currentDividendsID
                    stor319.length++
                    stor319[stor319.length] = totalSupply
            if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffef74d5d3d7fd6f6bfffff:
                revert with 0, 17
            totalSupply += 1250000 * 10^18
            if balanceOf[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])] > 0xfffffffffffffffffffffffffffffffffffffffffffef74d5d3d7fd6f6bfffff:
                revert with 0, 17
            balanceOf[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])] += 1250000 * 10^18
            if not stor295[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]:
                if not stor294[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]:
                    if balanceOf[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]:
                        require not stor294[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]
                        s = 1
                        while 100 <= stor298[1]:
                            if s == -1:
                                revert with 0, 17
                            mem[0] = s + 1
                            mem[32] = 298
                            s = s + 1
                            continue 
                        if not address(stor297[s][1].field_0):
                            uint8(stor297[s][1].field_0) = 1
                            Mask(152, 0, stor297[s][1].field_8) = 0
                        address(stor297[s][address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])].field_0) = address(stor297[s][1].field_0)
                        address(stor297[s][1].field_0) = address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])
                        stor296[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])] = s
                        stor294[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])] = 1
                        if 1 > !stor298[s]:
                            revert with 0, 17
                        stor298[s]++
                        if numHolders == -1:
                            revert with 0, 17
                        numHolders++
                if stor299[stor296[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]] > 0xfffffffffffffffffffffffffffffffffffffffffffef74d5d3d7fd6f6bfffff:
                    revert with 0, 17
                stor299[stor296[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]] += 1250000 * 10^18
                if sub_5a65fd67 > 0xfffffffffffffffffffffffffffffffffffffffffffef74d5d3d7fd6f6bfffff:
                    revert with 0, 17
                sub_5a65fd67 += 1250000 * 10^18
            mem[mem[64]] = 1250000 * 10^18
            emit Transfer(1250000 * 10^18, 0, address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx]));
            stor267[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])] = sub_9bef9200[stor280]
            if 1 > !sub_4b52b30b[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]:
                revert with 0, 17
            mem[0] = address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])
            mem[32] = 266
            sub_4b52b30b[address(stor275[stor279][(100 * _1179) + (10 * _1177) + _1175][idx])]++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if sub_faadb97f == -1:
        revert with 0, 17
    sub_faadb97f++
    stor281 = 1
}

function sub_bbadba1d(?) {
    require msg.sender == owner
    require ext_code.size(stor264)
    call stor264.0x18160ddd with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 1 > !(sub_9bef9200[stor305] % ext_call.return_data[0]):
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = (sub_9bef9200[stor305] % ext_call.return_data[0]) + 1
    require ext_code.size(stor264)
    call stor264.tokenByIndex(uint256 arg1) with:
         gas gas_remaining wei
        args ((sub_9bef9200[stor305] % ext_call.return_data[0]) + 1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(stor264)
    call stor264._rarity(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(stor264)
    call stor264.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(sub_34b77719Address) = ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != 0x8fa734e43b2a25904bb3b3fbe9f93534796fa632:
        sub_d28634e1[stor373][4] = address(sub_34b77719Address)
        if not ext_call.return_data[0]:
            sub_18c6c6ce[stor373][4] = 1
            if 1 > !lotteryID:
                revert with 0, 17
            lotteryID++
            mem[0] = stor305
            mem[32] = 260
            mem[(6 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
            mem[(6 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
            mem[(6 * ceil32(return_data.size)) + 164] = 1
            require ext_code.size(stor264)
            call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(sub_34b77719Address), sub_9bef9200[stor305], 1
        else:
            if 1 == ext_call.return_data[0]:
                sub_18c6c6ce[stor373][4] = 2
                if 1 > !lotteryID:
                    revert with 0, 17
                lotteryID++
                mem[0] = stor305
                mem[32] = 260
                mem[(6 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                mem[(6 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                mem[(6 * ceil32(return_data.size)) + 164] = 2
                require ext_code.size(stor264)
                call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(sub_34b77719Address), sub_9bef9200[stor305], 2
            else:
                if 2 == ext_call.return_data[0]:
                    sub_18c6c6ce[stor373][4] = 4
                    if 1 > !lotteryID:
                        revert with 0, 17
                    lotteryID++
                    mem[0] = stor305
                    mem[32] = 260
                    mem[(6 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                    mem[(6 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                    mem[(6 * ceil32(return_data.size)) + 164] = 4
                    require ext_code.size(stor264)
                    call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(sub_34b77719Address), sub_9bef9200[stor305], 4
                else:
                    if 3 == ext_call.return_data[0]:
                        sub_18c6c6ce[stor373][4] = 8
                        if 1 > !lotteryID:
                            revert with 0, 17
                        lotteryID++
                        mem[0] = stor305
                        mem[32] = 260
                        mem[(6 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                        mem[(6 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                        mem[(6 * ceil32(return_data.size)) + 164] = 8
                        require ext_code.size(stor264)
                        call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(sub_34b77719Address), sub_9bef9200[stor305], 8
                    else:
                        if ext_call.return_data[0] != 4:
                            sub_18c6c6ce[stor373][4] = 0
                            if 1 > !lotteryID:
                                revert with 0, 17
                            lotteryID++
                            mem[0] = stor305
                            mem[32] = 260
                            mem[(6 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                            mem[(6 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                            mem[(6 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(stor264)
                            call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(sub_34b77719Address), sub_9bef9200[stor305], 0
                        else:
                            sub_18c6c6ce[stor373][4] = 16
                            if 1 > !lotteryID:
                                revert with 0, 17
                            lotteryID++
                            mem[0] = stor305
                            mem[32] = 260
                            mem[(6 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                            mem[(6 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                            mem[(6 * ceil32(return_data.size)) + 164] = 16
                            require ext_code.size(stor264)
                            call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(sub_34b77719Address), sub_9bef9200[stor305], 16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 127
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96]) + 97 > test266151307():
            revert with 0, 65
        require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96]) + 32 <= return_data.size
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(0x8fa734e43b2a25904bb3b3fbe9f93534796fa632)
        call 0x8fa734e43b2a25904bb3b3fbe9f93534796fa632.0x40bb154d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        address(sub_34b77719Address) = ext_call.return_data[12 len 20]
        sub_d28634e1[stor373][4] = address(sub_34b77719Address)
        if not ext_call.return_data[0]:
            sub_18c6c6ce[stor373][4] = 1
            if 1 > !lotteryID:
                revert with 0, 17
            lotteryID++
            mem[0] = stor305
            mem[32] = 260
            mem[(7 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
            mem[(7 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
            mem[(7 * ceil32(return_data.size)) + 164] = 1
            require ext_code.size(stor264)
            call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(sub_34b77719Address), sub_9bef9200[stor305], 1
        else:
            if 1 == ext_call.return_data[0]:
                sub_18c6c6ce[stor373][4] = 2
                if 1 > !lotteryID:
                    revert with 0, 17
                lotteryID++
                mem[0] = stor305
                mem[32] = 260
                mem[(7 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                mem[(7 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                mem[(7 * ceil32(return_data.size)) + 164] = 2
                require ext_code.size(stor264)
                call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(sub_34b77719Address), sub_9bef9200[stor305], 2
            else:
                if 2 == ext_call.return_data[0]:
                    sub_18c6c6ce[stor373][4] = 4
                    if 1 > !lotteryID:
                        revert with 0, 17
                    lotteryID++
                    mem[0] = stor305
                    mem[32] = 260
                    mem[(7 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                    mem[(7 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                    mem[(7 * ceil32(return_data.size)) + 164] = 4
                    require ext_code.size(stor264)
                    call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(sub_34b77719Address), sub_9bef9200[stor305], 4
                else:
                    if 3 == ext_call.return_data[0]:
                        sub_18c6c6ce[stor373][4] = 8
                        if 1 > !lotteryID:
                            revert with 0, 17
                        lotteryID++
                        mem[0] = stor305
                        mem[32] = 260
                        mem[(7 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                        mem[(7 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                        mem[(7 * ceil32(return_data.size)) + 164] = 8
                        require ext_code.size(stor264)
                        call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(sub_34b77719Address), sub_9bef9200[stor305], 8
                    else:
                        if ext_call.return_data[0] != 4:
                            sub_18c6c6ce[stor373][4] = 0
                            if 1 > !lotteryID:
                                revert with 0, 17
                            lotteryID++
                            mem[0] = stor305
                            mem[32] = 260
                            mem[(7 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                            mem[(7 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                            mem[(7 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(stor264)
                            call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(sub_34b77719Address), sub_9bef9200[stor305], 0
                        else:
                            sub_18c6c6ce[stor373][4] = 16
                            if 1 > !lotteryID:
                                revert with 0, 17
                            lotteryID++
                            mem[0] = stor305
                            mem[32] = 260
                            mem[(7 * ceil32(return_data.size)) + 96] = 0xc6e7cce000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 100] = address(sub_34b77719Address)
                            mem[(7 * ceil32(return_data.size)) + 132] = sub_9bef9200[stor305]
                            mem[(7 * ceil32(return_data.size)) + 164] = 16
                            require ext_code.size(stor264)
                            call stor264.Lootbox(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(sub_34b77719Address), sub_9bef9200[stor305], 16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) <= test266151307()
        require (7 * ceil32(return_data.size)) + return_data.size + 96 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 127
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96]) + 97 > test266151307():
            revert with 0, 65
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor368) + 96]) + 32 <= return_data.size
}

function sub_509ad682(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require stor293
    require 12 == ('cd', 4).length
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] and 10^18 > -1 / mem[(32 * idx) + 128]:
            revert with 0, 17
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_74029045, sha3(msg.sender, 289))
        if sub_7ae10b3c[msg.sender][stor291][idx + 1] > !(10^18 * mem[(32 * idx) + 128]):
            revert with 0, 17
        sub_7ae10b3c[msg.sender][stor291][idx + 1] += 10^18 * mem[(32 * idx) + 128]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] and 10^18 > -1 / mem[(32 * idx) + 128]:
            revert with 0, 17
        if s > !(10^18 * mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (10^18 * mem[(32 * idx) + 128])
        continue 
    require msg.sender
    require not paused
    if not msg.sender:
        if not uint256(stor315[0].field_0):
            if 0 < currentDividendsID:
                uint256(stor315[0].field_0)++
                uint256(stor315[0][uint256(stor315[0].field_0)].field_0) = currentDividendsID
                uint256(stor315[0].field_256)++
                uint256(stor[uint256(stor315[0].field_256) + ('array', 1, ('map', 0, ('name', 'stor315', 315)))].field_0) = balanceOf[0]
        else:
            if uint256(stor315[0].field_0) < 1:
                revert with 0, 17
            if uint256(stor315[0].field_0) - 1 >= uint256(stor315[0].field_0):
                revert with 0, 50
            if uint256(stor315[0][uint256(stor315[0].field_0)].field_0) < currentDividendsID:
                uint256(stor315[0].field_0)++
                uint256(stor315[0][uint256(stor315[0].field_0)].field_0) = currentDividendsID
                uint256(stor315[0].field_256)++
                uint256(stor[uint256(stor315[0].field_256) + ('array', 1, ('map', 0, ('name', 'stor315', 315)))].field_0) = balanceOf[0]
        if not stor318.length:
            if 0 < currentDividendsID:
                stor318.length++
                stor318[stor318.length] = currentDividendsID
                stor319.length++
                stor319[stor319.length] = totalSupply
        else:
            if stor318.length < 1:
                revert with 0, 17
            if stor318.length - 1 >= stor318.length:
                revert with 0, 50
            if stor318[stor318.length] < currentDividendsID:
                stor318.length++
                stor318[stor318.length] = currentDividendsID
                stor319.length++
                stor319[stor319.length] = totalSupply
    else:
        if not uint256(stor315[address(msg.sender)].field_0):
            if 0 < currentDividendsID:
                uint256(stor315[address(msg.sender)].field_0)++
                uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) = currentDividendsID
                uint256(stor315[address(msg.sender)].field_256)++
                uint256(stor[uint256(stor315[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor315', 315)))].field_0) = balanceOf[address(msg.sender)]
        else:
            if uint256(stor315[address(msg.sender)].field_0) < 1:
                revert with 0, 17
            if uint256(stor315[address(msg.sender)].field_0) - 1 >= uint256(stor315[address(msg.sender)].field_0):
                revert with 0, 50
            if uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) < currentDividendsID:
                uint256(stor315[address(msg.sender)].field_0)++
                uint256(stor315[address(msg.sender)][uint256(stor315[address(msg.sender)].field_0)].field_0) = currentDividendsID
                uint256(stor315[address(msg.sender)].field_256)++
                uint256(stor[uint256(stor315[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor315', 315)))].field_0) = balanceOf[address(msg.sender)]
        if not s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            if not uint256(stor315[0].field_0):
                if 0 < currentDividendsID:
                    uint256(stor315[0].field_0)++
                    uint256(stor315[0][uint256(stor315[0].field_0)].field_0) = currentDividendsID
                    uint256(stor315[0].field_256)++
                    uint256(stor[uint256(stor315[0].field_256) + ('array', 1, ('map', 0, ('name', 'stor315', 315)))].field_0) = balanceOf[0]
            else:
                if uint256(stor315[0].field_0) < 1:
                    revert with 0, 17
                if uint256(stor315[0].field_0) - 1 >= uint256(stor315[0].field_0):
                    revert with 0, 50
                if uint256(stor315[0][uint256(stor315[0].field_0)].field_0) < currentDividendsID:
                    uint256(stor315[0].field_0)++
                    uint256(stor315[0][uint256(stor315[0].field_0)].field_0) = currentDividendsID
                    uint256(stor315[0].field_256)++
                    uint256(stor[uint256(stor315[0].field_256) + ('array', 1, ('map', 0, ('name', 'stor315', 315)))].field_0) = balanceOf[0]
        else:
            if not stor318.length:
                if 0 < currentDividendsID:
                    stor318.length++
                    stor318[stor318.length] = currentDividendsID
                    stor319.length++
                    stor319[stor319.length] = totalSupply
            else:
                if stor318.length < 1:
                    revert with 0, 17
                if stor318.length - 1 >= stor318.length:
                    revert with 0, 50
                if stor318[stor318.length] < currentDividendsID:
                    stor318.length++
                    stor318[stor318.length] = currentDividendsID
                    stor319.length++
                    stor319[stor319.length] = totalSupply
    require balanceOf[address(msg.sender)] >= s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    balanceOf[address(msg.sender)] += -1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    if not stor295[address(msg.sender)]:
        if stor299[stor296[address(msg.sender)]] < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            revert with 0, 17
        stor299[stor296[address(msg.sender)]] += -1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
        if sub_5a65fd67 < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
            revert with 0, 17
        sub_5a65fd67 += -1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
        if not balanceOf[address(msg.sender)]:
            require stor294[address(msg.sender)]
            t = 1
            while address(stor297[stor296[address(msg.sender)]][1].field_0) != 1:
                if address(stor297[stor296[address(msg.sender)]][address(t)].field_0) != msg.sender:
                    mem[0] = address(stor297[stor296[address(msg.sender)]][address(t)].field_0)
                    mem[32] = sha3(stor296[address(msg.sender)], 297)
                    t = address(stor297[stor296[address(msg.sender)]][address(t)].field_0)
                    continue 
                address(stor297[stor296[address(msg.sender)]][address(t)].field_0) = address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0)
                address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0) = 0
                stor296[address(msg.sender)] = 0
                stor294[address(msg.sender)] = 0
                if stor298[stor296[address(msg.sender)]] < 1:
                    revert with 0, 17
                stor298[stor296[address(msg.sender)]]--
                if not numHolders:
                    revert with 0, 17
                numHolders--
                if totalSupply < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
                    revert with 0, 17
                totalSupply += -1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                emit Transfer((s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length), msg.sender, 0);
            address(stor297[stor296[address(msg.sender)]][0].field_0) = address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0)
            address(stor297[stor296[address(msg.sender)]][address(msg.sender)].field_0) = 0
            stor296[address(msg.sender)] = 0
            stor294[address(msg.sender)] = 0
            if stor298[stor296[address(msg.sender)]] < 1:
                revert with 0, 17
            stor298[stor296[address(msg.sender)]]--
            if not numHolders:
                revert with 0, 17
            numHolders--
    if totalSupply < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
        revert with 0, 17
    totalSupply += -1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    emit Transfer((s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length), msg.sender, 0);
}

function sub_8bafdde3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require sub_9bef9200[stor305]
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpaused(msg.sender);
    mem[128] = sub_9bef9200[stor305]
    mem[160] = arg1
    mem[96] = 64
    if not sub_5a65fd67:
        revert with 0, 18
    stor300 = sha3(sub_9bef9200[stor305], arg1) % sub_5a65fd67
    if var32001 > !var32002:
        revert with 0, 17
    if var36001 >= stor300:
        if stor298[var36003] > test266151307():
            revert with 0, 65
        mem[192] = stor298[var36003]
        mem[64] = (32 * stor298[var36003]) + 224
        if not stor298[var36003]:
            mem[0] = 1
            mem[32] = sha3(var36003, 297)
            s = 0
            idx = address(stor[sha3(mem[0 len 64])])
            while address(idx) != 1:
                if s >= stor298[var36003]:
                    revert with 0, 50
                mem[(32 * s) + 224] = address(idx)
                mem[0] = address(idx)
                mem[32] = sha3(var36003, 297)
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = address(stor297[var36003][address(idx)].field_0)
                continue 
            s = 0
            t = var36004
            while s < stor298[var36003]:
                if s >= stor298[var36003]:
                    revert with 0, 50
                if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                    revert with 0, 17
                if s >= stor298[var36003]:
                    revert with 0, 50
                if t + balanceOf[mem[(32 * s) + 236 len 20]] < stor300:
                    mem[0] = mem[(32 * s) + 236 len 20]
                    mem[32] = 254
                    if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + balanceOf[mem[(32 * s) + 236 len 20]]
                    continue 
                sub_d54d0056[arg1] = mem[(32 * s) + 236 len 20]
                if 1 == arg1:
                    if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                    s = 0
                    t = (32 * stor298[var36003]) + 256
                    u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var36003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value 66 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _5343 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320]
                    require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                    require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                    _5359 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                    if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                        revert with 0, 65
                    mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321
                    mem[(32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                    require _5343 + (32 * _5359) + 32 <= return_data.size
                    s = (32 * stor298[var36003]) + ceil32(return_data.size) + _5343 + 352
                    t = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 352
                    idx = 0
                    while idx < _5359:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if lotteryAmount < 66 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 66 * lotteryAmount / 100
                else:
                    if arg1 != 2:
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        if arg1 != 3:
                            sub_18c6c6ce[stor373][arg1] = 0
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                            s = 0
                            t = (32 * stor298[var36003]) + 256
                            u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var36003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _5340 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320]
                            require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                            require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                            _5356 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                            if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321
                            mem[(32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                            require _5340 + (32 * _5356) + 32 <= return_data.size
                            s = (32 * stor298[var36003]) + ceil32(return_data.size) + _5340 + 352
                            t = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 352
                            idx = 0
                            while idx < _5356:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < 0:
                                revert with 0, 17
                        else:
                            sub_18c6c6ce[stor373][arg1] = lotteryAmount
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                            s = 0
                            t = (32 * stor298[var36003]) + 256
                            u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var36003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value lotteryAmount wei
                                 gas gas_remaining wei
                                args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _5341 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320]
                            require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                            require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                            _5357 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                            if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321
                            mem[(32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                            require _5341 + (32 * _5357) + 32 <= return_data.size
                            s = (32 * stor298[var36003]) + ceil32(return_data.size) + _5341 + 352
                            t = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 352
                            idx = 0
                            while idx < _5357:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < lotteryAmount:
                                revert with 0, 17
                            lotteryAmount = 0
                    else:
                        if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                        s = 0
                        t = (32 * stor298[var36003]) + 256
                        u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var36003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value 60 * lotteryAmount / 100 wei
                             gas gas_remaining wei
                            args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                        require return_data.size >= 32
                        _5342 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320]
                        require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                        require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                        _5358 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                        if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                            revert with 0, 65
                        mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321
                        mem[(32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                        require _5342 + (32 * _5358) + 32 <= return_data.size
                        s = (32 * stor298[var36003]) + ceil32(return_data.size) + _5342 + 352
                        t = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 352
                        idx = 0
                        while idx < _5358:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if lotteryAmount < 60 * lotteryAmount / 100:
                            revert with 0, 17
                        lotteryAmount -= 60 * lotteryAmount / 100
                stor267[stor366[arg1]] = sub_9bef9200[stor305]
                if 1 > !sub_4b52b30b[stor366[arg1]]:
                    revert with 0, 17
                sub_4b52b30b[stor366[arg1]]++
                if arg1 == 1:
                    require msg.sender == owner
                    require not paused
                    paused = 1
                    emit Paused(msg.sender);
                else:
                    if 2 == arg1:
                        require msg.sender == owner
                        require not paused
                        paused = 1
                        emit Paused(msg.sender);
            if 1 == arg1:
                if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                    revert with 0, 17
                sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                mem[0] = arg1
                sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                mem[32] = 366
                require ext_code.size(stor313)
                staticcall stor313.WETH() with:
                        gas gas_remaining wei
                mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * stor298[var36003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                if 1 >= mem[(32 * stor298[var36003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                s = 0
                t = (32 * stor298[var36003]) + 256
                u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                while s < mem[(32 * stor298[var36003]) + 224]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                require ext_code.size(stor313)
                call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 66 * lotteryAmount / 100 wei
                     gas gas_remaining wei
                    args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                    revert with 0, 65
                require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + (32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 32 <= return_data.size
                if lotteryAmount < 66 * lotteryAmount / 100:
                    revert with 0, 17
                lotteryAmount -= 66 * lotteryAmount / 100
            else:
                if arg1 != 2:
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    if arg1 != 3:
                        sub_18c6c6ce[stor373][arg1] = 0
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                        s = 0
                        t = (32 * stor298[var36003]) + 256
                        u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var36003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5319 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5319] <= test266151307()
                        require _5319 + return_data.size > _5319 + mem[_5319] + 31
                        if mem[_5319 + mem[_5319]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_5319 + mem[_5319]]) + 1 < 0 or _5319 + ceil32(return_data.size) + ceil32(32 * mem[_5319 + mem[_5319]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_5319] + (32 * mem[_5319 + mem[_5319]]) + 32 <= return_data.size
                        if lotteryAmount < 0:
                            revert with 0, 17
                    else:
                        sub_18c6c6ce[stor373][arg1] = lotteryAmount
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                        s = 0
                        t = (32 * stor298[var36003]) + 256
                        u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var36003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.mem[mem[64] len 4] with:
                           value lotteryAmount wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5320 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5320] <= test266151307()
                        require _5320 + return_data.size > _5320 + mem[_5320] + 31
                        if mem[_5320 + mem[_5320]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_5320 + mem[_5320]]) + 1 < 0 or _5320 + ceil32(return_data.size) + ceil32(32 * mem[_5320 + mem[_5320]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_5320] + (32 * mem[_5320 + mem[_5320]]) + 32 <= return_data.size
                        if lotteryAmount < lotteryAmount:
                            revert with 0, 17
                        lotteryAmount = 0
                else:
                    if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                    s = 0
                    t = (32 * stor298[var36003]) + 256
                    u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var36003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.mem[mem[64] len 4] with:
                       value 60 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5321 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5321] <= test266151307()
                    require _5321 + return_data.size > _5321 + mem[_5321] + 31
                    if mem[_5321 + mem[_5321]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_5321 + mem[_5321]]) + 1 < 0 or _5321 + ceil32(return_data.size) + ceil32(32 * mem[_5321 + mem[_5321]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_5321] + (32 * mem[_5321 + mem[_5321]]) + 32 <= return_data.size
                    if lotteryAmount < 60 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 60 * lotteryAmount / 100
        else:
            mem[224 len 32 * stor298[var36003]] = call.data[calldata.size len 32 * stor298[var36003]]
            mem[0] = 1
            mem[32] = sha3(var36003, 297)
            s = 0
            idx = address(stor[sha3(mem[0 len 64])])
            while address(idx) != 1:
                if s >= stor298[var36003]:
                    revert with 0, 50
                mem[(32 * s) + 224] = address(idx)
                mem[0] = address(idx)
                mem[32] = sha3(var36003, 297)
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = address(stor297[var36003][address(idx)].field_0)
                continue 
            s = 0
            t = var36004
            while s < stor298[var36003]:
                if s >= stor298[var36003]:
                    revert with 0, 50
                if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                    revert with 0, 17
                if s >= stor298[var36003]:
                    revert with 0, 50
                if t + balanceOf[mem[(32 * s) + 236 len 20]] < stor300:
                    mem[0] = mem[(32 * s) + 236 len 20]
                    mem[32] = 254
                    if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + balanceOf[mem[(32 * s) + 236 len 20]]
                    continue 
                sub_d54d0056[arg1] = mem[(32 * s) + 236 len 20]
                if 1 == arg1:
                    if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                    s = 0
                    t = (32 * stor298[var36003]) + 256
                    u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var36003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.mem[mem[64] len 4] with:
                       value 66 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5334 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5351 = mem[_5334]
                    require mem[_5334] <= test266151307()
                    require _5334 + return_data.size > _5334 + mem[_5334] + 31
                    _5367 = mem[_5334 + mem[_5334]]
                    if mem[_5334 + mem[_5334]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_5334 + mem[_5334]]) + 1 < 0 or _5334 + ceil32(return_data.size) + ceil32(32 * mem[_5334 + mem[_5334]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _5334 + ceil32(return_data.size) + ceil32(32 * mem[_5334 + mem[_5334]]) + 1
                    mem[_5334 + ceil32(return_data.size)] = _5367
                    require _5351 + (32 * _5367) + 32 <= return_data.size
                    s = _5334 + _5351 + 32
                    t = _5334 + ceil32(return_data.size) + 32
                    idx = 0
                    while idx < _5367:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if lotteryAmount < 66 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 66 * lotteryAmount / 100
                else:
                    if 2 == arg1:
                        if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                        s = 0
                        t = (32 * stor298[var36003]) + 256
                        u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var36003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value 60 * lotteryAmount / 100 wei
                             gas gas_remaining wei
                            args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                        require return_data.size >= 32
                        _5350 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320]
                        require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                        require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                        _5366 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                        if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                            revert with 0, 65
                        mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321
                        mem[(32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                        require _5350 + (32 * _5366) + 32 <= return_data.size
                        s = (32 * stor298[var36003]) + ceil32(return_data.size) + _5350 + 352
                        t = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 352
                        idx = 0
                        while idx < _5366:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if lotteryAmount < 60 * lotteryAmount / 100:
                            revert with 0, 17
                        lotteryAmount -= 60 * lotteryAmount / 100
                    else:
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        if arg1 != 3:
                            sub_18c6c6ce[stor373][arg1] = 0
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                            s = 0
                            t = (32 * stor298[var36003]) + 256
                            u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var36003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _5348 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320]
                            require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                            require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                            _5364 = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                            if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                                revert with 0, 65
                            mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321
                            mem[(32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]
                            require _5348 + (32 * _5364) + 32 <= return_data.size
                            s = (32 * stor298[var36003]) + ceil32(return_data.size) + _5348 + 352
                            t = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 352
                            idx = 0
                            while idx < _5364:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < 0:
                                revert with 0, 17
                        else:
                            sub_18c6c6ce[stor373][arg1] = lotteryAmount
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var36003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                            s = 0
                            t = (32 * stor298[var36003]) + 256
                            u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var36003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.mem[mem[64] len 4] with:
                               value lotteryAmount wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5332 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5349 = mem[_5332]
                            require mem[_5332] <= test266151307()
                            require _5332 + return_data.size > _5332 + mem[_5332] + 31
                            _5365 = mem[_5332 + mem[_5332]]
                            if mem[_5332 + mem[_5332]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_5332 + mem[_5332]]) + 1 < 0 or _5332 + ceil32(return_data.size) + ceil32(32 * mem[_5332 + mem[_5332]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _5332 + ceil32(return_data.size) + ceil32(32 * mem[_5332 + mem[_5332]]) + 1
                            mem[_5332 + ceil32(return_data.size)] = _5365
                            require _5349 + (32 * _5365) + 32 <= return_data.size
                            s = _5332 + _5349 + 32
                            t = _5332 + ceil32(return_data.size) + 32
                            idx = 0
                            while idx < _5365:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < lotteryAmount:
                                revert with 0, 17
                            lotteryAmount = 0
                stor267[stor366[arg1]] = sub_9bef9200[stor305]
                if 1 > !sub_4b52b30b[stor366[arg1]]:
                    revert with 0, 17
                sub_4b52b30b[stor366[arg1]]++
                if arg1 == 1:
                    require msg.sender == owner
                    require not paused
                    paused = 1
                    emit Paused(msg.sender);
                else:
                    if 2 == arg1:
                        require msg.sender == owner
                        require not paused
                        paused = 1
                        emit Paused(msg.sender);
            if 1 == arg1:
                if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                    revert with 0, 17
                sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                mem[0] = arg1
                sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                mem[32] = 366
                require ext_code.size(stor313)
                staticcall stor313.WETH() with:
                        gas gas_remaining wei
                mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * stor298[var36003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                if 1 >= mem[(32 * stor298[var36003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                s = 0
                t = (32 * stor298[var36003]) + 256
                u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                while s < mem[(32 * stor298[var36003]) + 224]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                require ext_code.size(stor313)
                call stor313.mem[mem[64] len 4] with:
                   value 66 * lotteryAmount / 100 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5330 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5330] <= test266151307()
                require _5330 + return_data.size > _5330 + mem[_5330] + 31
                if mem[_5330 + mem[_5330]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_5330 + mem[_5330]]) + 1 < 0 or _5330 + ceil32(return_data.size) + ceil32(32 * mem[_5330 + mem[_5330]]) + 1 > test266151307():
                    revert with 0, 65
                require mem[_5330] + (32 * mem[_5330 + mem[_5330]]) + 32 <= return_data.size
                if lotteryAmount < 66 * lotteryAmount / 100:
                    revert with 0, 17
                lotteryAmount -= 66 * lotteryAmount / 100
            else:
                if arg1 != 2:
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    if arg1 != 3:
                        sub_18c6c6ce[stor373][arg1] = 0
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                        s = 0
                        t = (32 * stor298[var36003]) + 256
                        u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var36003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5327 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5327] <= test266151307()
                        require _5327 + return_data.size > _5327 + mem[_5327] + 31
                        if mem[_5327 + mem[_5327]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_5327 + mem[_5327]]) + 1 < 0 or _5327 + ceil32(return_data.size) + ceil32(32 * mem[_5327 + mem[_5327]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_5327] + (32 * mem[_5327 + mem[_5327]]) + 32 <= return_data.size
                        if lotteryAmount < 0:
                            revert with 0, 17
                    else:
                        sub_18c6c6ce[stor373][arg1] = lotteryAmount
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var36003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                        s = 0
                        t = (32 * stor298[var36003]) + 256
                        u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var36003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value lotteryAmount wei
                             gas gas_remaining wei
                            args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var36003]) + 224]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + 320
                        require return_data.size >= 32
                        require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] <= test266151307()
                        require (32 * stor298[var36003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 351
                        if mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var36003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                            revert with 0, 65
                        require mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + (32 * mem[(32 * stor298[var36003]) + ceil32(return_data.size) + mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] + 320]) + 32 <= return_data.size
                        if lotteryAmount < lotteryAmount:
                            revert with 0, 17
                        lotteryAmount = 0
                else:
                    if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var36003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var36003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var36003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var36003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var36003]) + 224]
                    s = 0
                    t = (32 * stor298[var36003]) + 256
                    u = (32 * stor298[var36003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var36003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var36003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.mem[mem[64] len 4] with:
                       value 60 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * stor298[var36003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var36003]) + 224]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5329 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5329] <= test266151307()
                    require _5329 + return_data.size > _5329 + mem[_5329] + 31
                    if mem[_5329 + mem[_5329]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_5329 + mem[_5329]]) + 1 < 0 or _5329 + ceil32(return_data.size) + ceil32(32 * mem[_5329 + mem[_5329]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_5329] + (32 * mem[_5329 + mem[_5329]]) + 32 <= return_data.size
                    if lotteryAmount < 60 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 60 * lotteryAmount / 100
        stor267[stor366[arg1]] = sub_9bef9200[stor305]
        if 1 > !sub_4b52b30b[stor366[arg1]]:
            revert with 0, 17
        sub_4b52b30b[stor366[arg1]]++
        if arg1 == 1:
            require msg.sender == owner
            require not paused
            paused = 1
            emit Paused(msg.sender);
        else:
            if 2 == arg1:
                require msg.sender == owner
                require not paused
                paused = 1
                emit Paused(msg.sender);
    if var40001 > !var40002:
        revert with 0, 17
    if var46001 == -1:
        revert with 0, 17
    if var54001 > !var54002:
        revert with 0, 17
    if var58001 < stor300:
        if var62001 > !var62002:
            revert with 0, 17
        # nil
    else:
        if stor298[var58003] > test266151307():
            revert with 0, 65
        mem[192] = stor298[var58003]
        mem[64] = (32 * stor298[var58003]) + 224
        if not stor298[var58003]:
            mem[0] = 1
            mem[32] = sha3(var58003, 297)
            s = 0
            idx = address(stor[sha3(mem[0 len 64])])
            while address(idx) != 1:
                if s >= stor298[var58003]:
                    revert with 0, 50
                mem[(32 * s) + 224] = address(idx)
                mem[0] = address(idx)
                mem[32] = sha3(var58003, 297)
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = address(stor297[var58003][address(idx)].field_0)
                continue 
            s = 0
            t = var58004
            while s < stor298[var58003]:
                if s >= stor298[var58003]:
                    revert with 0, 50
                if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                    revert with 0, 17
                if s >= stor298[var58003]:
                    revert with 0, 50
                if t + balanceOf[mem[(32 * s) + 236 len 20]] < stor300:
                    mem[0] = mem[(32 * s) + 236 len 20]
                    mem[32] = 254
                    if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + balanceOf[mem[(32 * s) + 236 len 20]]
                    continue 
                sub_d54d0056[arg1] = mem[(32 * s) + 236 len 20]
                if 1 == arg1:
                    if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                    s = 0
                    t = (32 * stor298[var58003]) + 256
                    u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var58003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value 66 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _13189 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320]
                    require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                    require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                    _13205 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                    if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                        revert with 0, 65
                    mem[(32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                    require _13189 + (32 * _13205) + 32 <= return_data.size
                    s = (32 * stor298[var58003]) + ceil32(return_data.size) + _13189 + 352
                    t = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 352
                    idx = 0
                    while idx < _13205:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if lotteryAmount < 66 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 66 * lotteryAmount / 100
                else:
                    if arg1 != 2:
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        if arg1 != 3:
                            sub_18c6c6ce[stor373][arg1] = 0
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                            s = 0
                            t = (32 * stor298[var58003]) + 256
                            u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var58003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _13186 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320]
                            require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                            require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                            _13202 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                            if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                                revert with 0, 65
                            mem[(32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                            require _13186 + (32 * _13202) + 32 <= return_data.size
                            s = (32 * stor298[var58003]) + ceil32(return_data.size) + _13186 + 352
                            t = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 352
                            idx = 0
                            while idx < _13202:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < 0:
                                revert with 0, 17
                        else:
                            sub_18c6c6ce[stor373][arg1] = lotteryAmount
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                            s = 0
                            t = (32 * stor298[var58003]) + 256
                            u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var58003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value lotteryAmount wei
                                 gas gas_remaining wei
                                args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _13187 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320]
                            require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                            require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                            _13203 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                            if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                                revert with 0, 65
                            mem[(32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                            require _13187 + (32 * _13203) + 32 <= return_data.size
                            s = (32 * stor298[var58003]) + ceil32(return_data.size) + _13187 + 352
                            t = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 352
                            idx = 0
                            while idx < _13203:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < lotteryAmount:
                                revert with 0, 17
                            lotteryAmount = 0
                    else:
                        if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                        s = 0
                        t = (32 * stor298[var58003]) + 256
                        u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var58003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.mem[mem[64] len 4] with:
                           value 60 * lotteryAmount / 100 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13171 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13188 = mem[_13171]
                        require mem[_13171] <= test266151307()
                        require _13171 + return_data.size > _13171 + mem[_13171] + 31
                        _13204 = mem[_13171 + mem[_13171]]
                        if mem[_13171 + mem[_13171]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_13171 + mem[_13171]]) + 1 < 0 or _13171 + ceil32(return_data.size) + ceil32(32 * mem[_13171 + mem[_13171]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _13171 + ceil32(return_data.size) + ceil32(32 * mem[_13171 + mem[_13171]]) + 1
                        mem[_13171 + ceil32(return_data.size)] = _13204
                        require _13188 + (32 * _13204) + 32 <= return_data.size
                        s = _13171 + _13188 + 32
                        t = _13171 + ceil32(return_data.size) + 32
                        idx = 0
                        while idx < _13204:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if lotteryAmount < 60 * lotteryAmount / 100:
                            revert with 0, 17
                        lotteryAmount -= 60 * lotteryAmount / 100
                stor267[stor366[arg1]] = sub_9bef9200[stor305]
                if 1 > !sub_4b52b30b[stor366[arg1]]:
                    revert with 0, 17
                sub_4b52b30b[stor366[arg1]]++
                if arg1 == 1:
                    require msg.sender == owner
                    require not paused
                    paused = 1
                    emit Paused(msg.sender);
                else:
                    if 2 == arg1:
                        require msg.sender == owner
                        require not paused
                        paused = 1
                        emit Paused(msg.sender);
            if 1 == arg1:
                if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                    revert with 0, 17
                sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                mem[0] = arg1
                sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                mem[32] = 366
                require ext_code.size(stor313)
                staticcall stor313.WETH() with:
                        gas gas_remaining wei
                mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * stor298[var58003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                if 1 >= mem[(32 * stor298[var58003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                s = 0
                t = (32 * stor298[var58003]) + 256
                u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                while s < mem[(32 * stor298[var58003]) + 224]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                require ext_code.size(stor313)
                call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 66 * lotteryAmount / 100 wei
                     gas gas_remaining wei
                    args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                    revert with 0, 65
                require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + (32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 32 <= return_data.size
                if lotteryAmount < 66 * lotteryAmount / 100:
                    revert with 0, 17
                lotteryAmount -= 66 * lotteryAmount / 100
            else:
                if arg1 != 2:
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    if arg1 != 3:
                        sub_18c6c6ce[stor373][arg1] = 0
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                        s = 0
                        t = (32 * stor298[var58003]) + 256
                        u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var58003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13165 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_13165] <= test266151307()
                        require _13165 + return_data.size > _13165 + mem[_13165] + 31
                        if mem[_13165 + mem[_13165]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_13165 + mem[_13165]]) + 1 < 0 or _13165 + ceil32(return_data.size) + ceil32(32 * mem[_13165 + mem[_13165]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_13165] + (32 * mem[_13165 + mem[_13165]]) + 32 <= return_data.size
                        if lotteryAmount < 0:
                            revert with 0, 17
                    else:
                        sub_18c6c6ce[stor373][arg1] = lotteryAmount
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                        s = 0
                        t = (32 * stor298[var58003]) + 256
                        u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var58003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value lotteryAmount wei
                             gas gas_remaining wei
                            args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                        require return_data.size >= 32
                        require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                        require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                        if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                            revert with 0, 65
                        require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + (32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 32 <= return_data.size
                        if lotteryAmount < lotteryAmount:
                            revert with 0, 17
                        lotteryAmount = 0
                else:
                    if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                    s = 0
                    t = (32 * stor298[var58003]) + 256
                    u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var58003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.mem[mem[64] len 4] with:
                       value 60 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13167 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_13167] <= test266151307()
                    require _13167 + return_data.size > _13167 + mem[_13167] + 31
                    if mem[_13167 + mem[_13167]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_13167 + mem[_13167]]) + 1 < 0 or _13167 + ceil32(return_data.size) + ceil32(32 * mem[_13167 + mem[_13167]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_13167] + (32 * mem[_13167 + mem[_13167]]) + 32 <= return_data.size
                    if lotteryAmount < 60 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 60 * lotteryAmount / 100
        else:
            mem[224 len 32 * stor298[var58003]] = call.data[calldata.size len 32 * stor298[var58003]]
            mem[0] = 1
            mem[32] = sha3(var58003, 297)
            s = 0
            idx = address(stor[sha3(mem[0 len 64])])
            while address(idx) != 1:
                if s >= stor298[var58003]:
                    revert with 0, 50
                mem[(32 * s) + 224] = address(idx)
                mem[0] = address(idx)
                mem[32] = sha3(var58003, 297)
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = address(stor297[var58003][address(idx)].field_0)
                continue 
            s = 0
            t = var58004
            while s < stor298[var58003]:
                if s >= stor298[var58003]:
                    revert with 0, 50
                if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                    revert with 0, 17
                if s >= stor298[var58003]:
                    revert with 0, 50
                if t + balanceOf[mem[(32 * s) + 236 len 20]] < stor300:
                    mem[0] = mem[(32 * s) + 236 len 20]
                    mem[32] = 254
                    if t > !balanceOf[mem[(32 * s) + 236 len 20]]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + balanceOf[mem[(32 * s) + 236 len 20]]
                    continue 
                sub_d54d0056[arg1] = mem[(32 * s) + 236 len 20]
                if arg1 != 1:
                    if 2 == arg1:
                        if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                        s = 0
                        t = (32 * stor298[var58003]) + 256
                        u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var58003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value 60 * lotteryAmount / 100 wei
                             gas gas_remaining wei
                            args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                        require return_data.size >= 32
                        _13196 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320]
                        require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                        require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                        _13212 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                        if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                            revert with 0, 65
                        mem[(32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                        require _13196 + (32 * _13212) + 32 <= return_data.size
                        s = (32 * stor298[var58003]) + ceil32(return_data.size) + _13196 + 352
                        t = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 352
                        idx = 0
                        while idx < _13212:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if lotteryAmount < 60 * lotteryAmount / 100:
                            revert with 0, 17
                        lotteryAmount -= 60 * lotteryAmount / 100
                    else:
                        sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                        mem[0] = arg1
                        if 3 == arg1:
                            sub_18c6c6ce[stor373][arg1] = lotteryAmount
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                            s = 0
                            t = (32 * stor298[var58003]) + 256
                            u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var58003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value lotteryAmount wei
                                 gas gas_remaining wei
                                args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                            require return_data.size >= 32
                            _13195 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320]
                            require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                            require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                            _13211 = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                            if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                                revert with 0, 65
                            mem[(32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]
                            require _13195 + (32 * _13211) + 32 <= return_data.size
                            s = (32 * stor298[var58003]) + ceil32(return_data.size) + _13195 + 352
                            t = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 352
                            idx = 0
                            while idx < _13211:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < lotteryAmount:
                                revert with 0, 17
                            lotteryAmount = 0
                        else:
                            sub_18c6c6ce[stor373][arg1] = 0
                            mem[32] = 366
                            require ext_code.size(stor313)
                            staticcall stor313.WETH() with:
                                    gas gas_remaining wei
                            mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                            if 1 >= mem[(32 * stor298[var58003]) + 224]:
                                revert with 0, 50
                            mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                            s = 0
                            t = (32 * stor298[var58003]) + 256
                            u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                            while s < mem[(32 * stor298[var58003]) + 224]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                            mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                            require ext_code.size(stor313)
                            call stor313.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13177 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13194 = mem[_13177]
                            require mem[_13177] <= test266151307()
                            require _13177 + return_data.size > _13177 + mem[_13177] + 31
                            _13210 = mem[_13177 + mem[_13177]]
                            if mem[_13177 + mem[_13177]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_13177 + mem[_13177]]) + 1 < 0 or _13177 + ceil32(return_data.size) + ceil32(32 * mem[_13177 + mem[_13177]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _13177 + ceil32(return_data.size) + ceil32(32 * mem[_13177 + mem[_13177]]) + 1
                            mem[_13177 + ceil32(return_data.size)] = _13210
                            require _13194 + (32 * _13210) + 32 <= return_data.size
                            s = _13177 + _13194 + 32
                            t = _13177 + ceil32(return_data.size) + 32
                            idx = 0
                            while idx < _13210:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if lotteryAmount < 0:
                                revert with 0, 17
                else:
                    if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                    s = 0
                    t = (32 * stor298[var58003]) + 256
                    u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var58003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.mem[mem[64] len 4] with:
                       value 66 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13180 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13197 = mem[_13180]
                    require mem[_13180] <= test266151307()
                    require _13180 + return_data.size > _13180 + mem[_13180] + 31
                    _13213 = mem[_13180 + mem[_13180]]
                    if mem[_13180 + mem[_13180]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_13180 + mem[_13180]]) + 1 < 0 or _13180 + ceil32(return_data.size) + ceil32(32 * mem[_13180 + mem[_13180]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _13180 + ceil32(return_data.size) + ceil32(32 * mem[_13180 + mem[_13180]]) + 1
                    mem[_13180 + ceil32(return_data.size)] = _13213
                    require _13197 + (32 * _13213) + 32 <= return_data.size
                    s = _13180 + _13197 + 32
                    t = _13180 + ceil32(return_data.size) + 32
                    idx = 0
                    while idx < _13213:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if lotteryAmount < 66 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 66 * lotteryAmount / 100
                stor267[stor366[arg1]] = sub_9bef9200[stor305]
                if 1 > !sub_4b52b30b[stor366[arg1]]:
                    revert with 0, 17
                sub_4b52b30b[stor366[arg1]]++
                if arg1 == 1:
                    require msg.sender == owner
                    require not paused
                    paused = 1
                    emit Paused(msg.sender);
                else:
                    if 2 == arg1:
                        require msg.sender == owner
                        require not paused
                        paused = 1
                        emit Paused(msg.sender);
            if 1 == arg1:
                if lotteryAmount > 0x3e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0f83e0:
                    revert with 0, 17
                sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                mem[0] = arg1
                sub_18c6c6ce[stor373][arg1] = 66 * lotteryAmount / 100
                mem[32] = 366
                require ext_code.size(stor313)
                staticcall stor313.WETH() with:
                        gas gas_remaining wei
                mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * stor298[var58003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                if 1 >= mem[(32 * stor298[var58003]) + 224]:
                    revert with 0, 50
                mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                s = 0
                t = (32 * stor298[var58003]) + 256
                u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                while s < mem[(32 * stor298[var58003]) + 224]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                require ext_code.size(stor313)
                call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 66 * lotteryAmount / 100 wei
                     gas gas_remaining wei
                    args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                    revert with 0, 65
                require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + (32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 32 <= return_data.size
                if lotteryAmount < 66 * lotteryAmount / 100:
                    revert with 0, 17
                lotteryAmount -= 66 * lotteryAmount / 100
            else:
                if arg1 != 2:
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    if arg1 != 3:
                        sub_18c6c6ce[stor373][arg1] = 0
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                        s = 0
                        t = (32 * stor298[var58003]) + 256
                        u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var58003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13173 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_13173] <= test266151307()
                        require _13173 + return_data.size > _13173 + mem[_13173] + 31
                        if mem[_13173 + mem[_13173]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_13173 + mem[_13173]]) + 1 < 0 or _13173 + ceil32(return_data.size) + ceil32(32 * mem[_13173 + mem[_13173]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_13173] + (32 * mem[_13173 + mem[_13173]]) + 32 <= return_data.size
                        if lotteryAmount < 0:
                            revert with 0, 17
                    else:
                        sub_18c6c6ce[stor373][arg1] = lotteryAmount
                        mem[32] = 366
                        require ext_code.size(stor313)
                        staticcall stor313.WETH() with:
                                gas gas_remaining wei
                        mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                        if 1 >= mem[(32 * stor298[var58003]) + 224]:
                            revert with 0, 50
                        mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                        s = 0
                        t = (32 * stor298[var58003]) + 256
                        u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                        while s < mem[(32 * stor298[var58003]) + 224]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                        require ext_code.size(stor313)
                        call stor313.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value lotteryAmount wei
                             gas gas_remaining wei
                            args 0, 128, sub_d54d0056[arg1], block.timestamp, mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452 len (32 * mem[(32 * stor298[var58003]) + 224]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + 320
                        require return_data.size >= 32
                        require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] <= test266151307()
                        require (32 * stor298[var58003]) + ceil32(return_data.size) + return_data.size + 320 > (32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 351
                        if mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 1 < 0 or (32 * stor298[var58003]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 321 > test266151307():
                            revert with 0, 65
                        require mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + (32 * mem[(32 * stor298[var58003]) + ceil32(return_data.size) + mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] + 320]) + 32 <= return_data.size
                        if lotteryAmount < lotteryAmount:
                            revert with 0, 17
                        lotteryAmount = 0
                else:
                    if lotteryAmount > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    sub_d28634e1[stor373][arg1] = sub_d54d0056[arg1]
                    mem[0] = arg1
                    sub_18c6c6ce[stor373][arg1] = 60 * lotteryAmount / 100
                    mem[32] = 366
                    require ext_code.size(stor313)
                    staticcall stor313.WETH() with:
                            gas gas_remaining wei
                    mem[(32 * stor298[var58003]) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * stor298[var58003]) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 256] = ext_call.return_data[12 len 20]
                    if 1 >= mem[(32 * stor298[var58003]) + 224]:
                        revert with 0, 50
                    mem[(32 * stor298[var58003]) + 288] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 452] = mem[(32 * stor298[var58003]) + 224]
                    s = 0
                    t = (32 * stor298[var58003]) + 256
                    u = (32 * stor298[var58003]) + ceil32(return_data.size) + 484
                    while s < mem[(32 * stor298[var58003]) + 224]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 388] = sub_d54d0056[arg1]
                    mem[(32 * stor298[var58003]) + ceil32(return_data.size) + 420] = block.timestamp
                    require ext_code.size(stor313)
                    call stor313.mem[mem[64] len 4] with:
                       value 60 * lotteryAmount / 100 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * stor298[var58003]) + ceil32(return_data.size) + (32 * mem[(32 * stor298[var58003]) + 224]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13175 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_13175] <= test266151307()
                    require _13175 + return_data.size > _13175 + mem[_13175] + 31
                    if mem[_13175 + mem[_13175]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_13175 + mem[_13175]]) + 1 < 0 or _13175 + ceil32(return_data.size) + ceil32(32 * mem[_13175 + mem[_13175]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_13175] + (32 * mem[_13175 + mem[_13175]]) + 32 <= return_data.size
                    if lotteryAmount < 60 * lotteryAmount / 100:
                        revert with 0, 17
                    lotteryAmount -= 60 * lotteryAmount / 100
        stor267[stor366[arg1]] = sub_9bef9200[stor305]
        if 1 > !sub_4b52b30b[stor366[arg1]]:
            revert with 0, 17
        sub_4b52b30b[stor366[arg1]]++
        if arg1 == 1:
            require msg.sender == owner
            require not paused
            paused = 1
            emit Paused(msg.sender);
        else:
            if 2 == arg1:
                require msg.sender == owner
                require not paused
                paused = 1
                emit Paused(msg.sender);
}



}
