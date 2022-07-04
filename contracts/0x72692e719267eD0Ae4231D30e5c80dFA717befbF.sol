contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - resetLastActivity()
#  - burn(uint256 arg1)
#  - bigReset()
#  - manageReserve()
#  - transfer(address arg1, uint256 arg2)
#  - forcedSell(address arg1)
#  - initialize(address arg1, address arg2, address arg3, address arg4)
#
const sub_2e2ad079(?) = 1

const decimals = 18

const sub_32485be6(?) = 500

const sub_48f41afe(?) = 100

const reserveRate = 250

const sub_ba693d21(?) = 100

const burnRate = 250


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
array of struct stor101;
array of uint256 stor102;
array of uint256 stor103;
uint256 stor104;
address owner;
address RESERVEAddress;
address ASSETAddress;
address sub_c6005893Address;
uint8 enabled; offset 160
uint8 finished; offset 168
address sub_c4a0c25aAddress;
uint256 startTime;
uint256 finishTime;
uint256 sub_d9747fa3;
uint256 initialSupply;
uint256 minSupply;
uint256 sub_7b96c66a;
uint256 sub_b9a30fd1;
uint256 sub_d8eebb8e;
uint256 sub_13bfe023;
uint256 sub_bbe21d2f;
uint256 sub_17616b61;
uint256 sub_c16b22e0;
uint256 sub_f939db10;
uint256 sub_7b0834d8;
mapping of uint256 sub_b2e20edb;
mapping of uint8 stor220;
mapping of uint256 sub_c13824ad;
mapping of uint256 sub_2a33cd27;
array of address reserveManagers;
uint256 sub_63cabeb4;
address sub_b9d9d65bAddress;
uint256 sub_773a3664;
uint256 sub_619e834d;
uint256 sub_a9da2576;
uint256 sub_a4f9b7c9;
mapping of uint8 stor239;
uint256 sub_3fcb31c6;
uint256 sub_8ad2b93c;
uint256 sub_5cb178cf;
uint256 sub_a4e72f18;
address sub_9e3684feAddress;
mapping of uint8 stor245;
mapping of uint8 stor246;

function reserveManagers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return reserveManagers[arg1]
}

function sub_13bfe023(?) payable {
    return sub_13bfe023
}

function sub_17616b61(?) payable {
    return sub_17616b61
}

function totalSupply() payable {
    return totalSupply
}

function enabled() payable {
    return bool(enabled)
}

function sub_2a33cd27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2a33cd27[arg1]
}

function initialSupply() payable {
    return initialSupply
}

function sub_3fcb31c6(?) payable {
    return sub_3fcb31c6
}

function ASSET() payable {
    return ASSETAddress
}

function finishTime() payable {
    return finishTime
}

function sub_5cb178cf(?) payable {
    return sub_5cb178cf
}

function sub_619e834d(?) payable {
    return sub_619e834d
}

function sub_63cabeb4(?) payable {
    return sub_63cabeb4
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_773a3664(?) payable {
    return sub_773a3664
}

function startTime() payable {
    return startTime
}

function sub_7b0834d8(?) payable {
    return sub_7b0834d8
}

function sub_7b96c66a(?) payable {
    return sub_7b96c66a
}

function sub_8ad2b93c(?) payable {
    return sub_8ad2b93c
}

function owner() payable {
    return owner
}

function minSupply() payable {
    return minSupply
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor220[arg1])
}

function RESERVE() payable {
    return RESERVEAddress
}

function sub_9e3684fe(?) payable {
    return sub_9e3684feAddress
}

function sub_a4e72f18(?) payable {
    return sub_a4e72f18
}

function sub_a4f9b7c9(?) payable {
    return sub_a4f9b7c9
}

function recipientWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor245[arg1])
}

function sub_a9da2576(?) payable {
    return sub_a9da2576
}

function sub_b2e20edb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b2e20edb[arg1]
}

function sub_b9a30fd1(?) payable {
    return sub_b9a30fd1
}

function sub_b9d9d65b(?) payable {
    return sub_b9d9d65bAddress
}

function sub_bbe21d2f(?) payable {
    return sub_bbe21d2f
}

function finished() payable {
    return bool(finished)
}

function sub_c13824ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c13824ad[arg1]
}

function sub_c16b22e0(?) payable {
    return sub_c16b22e0
}

function sub_c4a0c25a(?) payable {
    return sub_c4a0c25aAddress
}

function sub_c6005893(?) payable {
    return sub_c6005893Address
}

function freezeList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor246[arg1])
}

function sub_d8eebb8e(?) payable {
    return sub_d8eebb8e
}

function sub_d9747fa3(?) payable {
    return sub_d9747fa3
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e4b3379c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(stor239[arg1][arg2])
}

function sub_f939db10(?) payable {
    return sub_f939db10
}

function _fallback() payable {
    revert
}

function config() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a4e72f18 = 5
}

function monsterStart() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    enabled = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function createSnapshot() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor104++
    emit Snapshot(stor104);
    return stor104
}

function setResManSize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3fcb31c6 = arg1
}

function setDcNft(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b9d9d65bAddress = arg1
}

function sub_4bbfeea5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e3684feAddress = address(arg1)
}

function sub_b670a48c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor246[address(arg1)] = uint8(bool(arg2))
}

function sub_f90e0996(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor245[address(arg1)] = uint8(bool(arg2))
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor220[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function approveTransferFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = arg2
    emit Approval(arg2, arg1, msg.sender);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor104:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor102.length:
        idx = stor102.length
        while 0 < idx:
            if 0 > !bool(idx):
                revert with 0, 17
            if 0 > !(idx / 2):
                revert with 0, 17
            if idx / 2 > !0:
                revert with 0, 17
            if idx / 2 >= stor102.length:
                revert with 0, 50
            mem[0] = 102
            if stor102[0.5 / idx] > arg1:
                idx = idx / 2
                continue 
            if 1 > !(idx / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor102.length:
        return totalSupply
    if 0 >= stor103.length:
        revert with 0, 50
    return stor103
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor104:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor101[address(arg1)].field_0:
        idx = stor101[mem[0]].field_0
        while 0 < idx:
            if 0 > !bool(idx):
                revert with 0, 17
            if 0 > !(idx / 2):
                revert with 0, 17
            if idx / 2 > !0:
                revert with 0, 17
            if idx / 2 >= stor101[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 101)
            if stor101[address(arg1)][0.5 / idx].field_0 > arg2:
                idx = idx / 2
                continue 
            if 1 > !(idx / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor101[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor101[address(arg1)].field_256:
        revert with 0, 50
    return stor101[address(arg1)][1].field_0
}

function sub_0eea7a6d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 219
        sub_b2e20edb[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function finish() payable {
    if finished:
        revert with 0, 'ALREADY_FINISHED'
    if block.timestamp < startTime:
        revert with 0, 17
    if block.timestamp < sub_d9747fa3:
        revert with 0, 17
    if block.timestamp - startTime <= 17520 * 24 * 3600:
        if block.timestamp - sub_d9747fa3 <= 2976 * 24 * 3600:
            if totalSupply > minSupply:
                revert with 0, 'SUPPLY_HIGH'
    finished = 1
    finishTime = block.timestamp
    require ext_code.size(RESERVEAddress)
    call RESERVEAddress.removeLiquidity() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not RESERVEAddress:
        revert with 0, 'ERC20: burn from the zero address'
    if not stor101[stor201].field_0:
        if 0 < stor104:
            stor101[stor201].field_0++
            stor101[stor201][stor101[stor201].field_0].field_0 = stor104
            stor101[stor201].field_256++
            stor[stor101[stor201].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor201', 201)), ('name', 'stor101', 101)))].field_0 = balanceOf[stor201]
    else:
        if stor101[stor201].field_0 < 1:
            revert with 0, 17
        if stor101[stor201].field_0 - 1 >= stor101[stor201].field_0:
            revert with 0, 50
        if stor101[stor201][stor101[stor201].field_0].field_0 < stor104:
            stor101[stor201].field_0++
            stor101[stor201][stor101[stor201].field_0].field_0 = stor104
            stor101[stor201].field_256++
            stor[stor101[stor201].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor201', 201)), ('name', 'stor101', 101)))].field_0 = balanceOf[stor201]
    if not stor102.length:
        if 0 < stor104:
            stor102.length++
            stor102[stor102.length] = stor104
            stor103.length++
            stor103[stor103.length] = totalSupply
    else:
        if stor102.length < 1:
            revert with 0, 17
        if stor102.length - 1 >= stor102.length:
            revert with 0, 50
        if stor102[stor102.length] < stor104:
            stor102.length++
            stor102[stor102.length] = stor104
            stor103.length++
            stor103[stor103.length] = totalSupply
    if balanceOf[stor201] < balanceOf[stor201]:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[stor201] = 0
    if totalSupply < balanceOf[stor201]:
        revert with 0, 17
    totalSupply -= balanceOf[stor201]
    emit 0xe0ddf252: balanceOf[stor201], RESERVEAddress, 0
    require ext_code.size(RESERVEAddress)
    call RESERVEAddress.unstakeAllReserveAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7b96c66a = totalSupply
    require ext_code.size(ASSETAddress)
    staticcall ASSETAddress.0x70a08231 with:
            gas gas_remaining wei
           args RESERVEAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b9a30fd1 = ext_call.return_data[0]
    stor104++
    emit Snapshot(stor104);
    sub_17616b61 = stor104
    emit Finish(msg.sender);
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
        if ceil32(stor54.length.field_1) > stor54.length.field_1:
            mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
        if ceil32(stor55.length.field_1) > stor55.length.field_1:
            mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function claim() payable {
    if not finished:
        revert with 0, 'NOT_FINISHED'
    if sub_17616b61 <= 0:
        revert with 0, 'NO_CLAIM'
    if sub_2a33cd27[address(msg.sender)] >= sub_17616b61:
        revert with 0, 'ALREADY_CLAIMED'
    mem[0] = msg.sender
    if sub_17616b61 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if sub_17616b61 > stor104:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor101[address(msg.sender)].field_0:
        idx = stor101[mem[0]].field_0
        while 0 < idx:
            if 0 > !bool(idx):
                revert with 0, 17
            if 0 > !(idx / 2):
                revert with 0, 17
            if idx / 2 > !0:
                revert with 0, 17
            if idx / 2 >= stor101[address(msg.sender)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(msg.sender), 101)
            if stor101[address(msg.sender)][0.5 / idx].field_0 > sub_17616b61:
                idx = idx / 2
                continue 
            if 1 > !(idx / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor101[address(msg.sender)].field_0:
        if balanceOf[address(msg.sender)] <= 0:
            revert with 0, 'NO_CLAIM_WALLET_EMPTY'
        if balanceOf[address(msg.sender)] and 10^18 > -1 / balanceOf[address(msg.sender)]:
            revert with 0, 17
        if not sub_7b96c66a:
            revert with 0, 18
        if sub_b9a30fd1 and 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a > -1 / sub_b9a30fd1:
            revert with 0, 17
        sub_2a33cd27[address(msg.sender)] = sub_17616b61
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if not stor101[address(msg.sender)].field_0:
            if 0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor101[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor101[address(msg.sender)].field_0 - 1 >= stor101[address(msg.sender)].field_0:
                revert with 0, 50
            if stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        if not stor102.length:
            if 0 < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        else:
            if stor102.length < 1:
                revert with 0, 17
            if stor102.length - 1 >= stor102.length:
                revert with 0, 50
            if stor102[stor102.length] < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] = 0
        if totalSupply < balanceOf[address(msg.sender)]:
            revert with 0, 17
        totalSupply -= balanceOf[address(msg.sender)]
        emit 0xe0ddf252: balanceOf[address(msg.sender)], msg.sender, 0
        if initialSupply and 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a > -1 / initialSupply:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if not stor101[address(msg.sender)].field_0:
            if 0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor101[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor101[address(msg.sender)].field_0 - 1 >= stor101[address(msg.sender)].field_0:
                revert with 0, 50
            if stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        if not stor102.length:
            if 0 < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        else:
            if stor102.length < 1:
                revert with 0, 17
            if stor102.length - 1 >= stor102.length:
                revert with 0, 50
            if stor102[stor102.length] < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        if totalSupply > !(initialSupply * 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a / 10^18):
            revert with 0, 17
        totalSupply += initialSupply * 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a / 10^18
        if balanceOf[address(msg.sender)] > !(initialSupply * 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a / 10^18):
            revert with 0, 17
        balanceOf[address(msg.sender)] += initialSupply * 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a / 10^18
        emit 0xe0ddf252: (initialSupply * 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a / 10^18), 0, msg.sender
        if 840 * 24 * 3600 > !finishTime:
            revert with 0, 17
        sub_b2e20edb[address(msg.sender)] = finishTime + (840 * 24 * 3600)
        require ext_code.size(RESERVEAddress)
        call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args sub_b9a30fd1 * 10^18 * balanceOf[address(msg.sender)] / sub_7b96c66a / 10^18, msg.sender
    else:
        if 0 >= stor101[address(msg.sender)].field_256:
            revert with 0, 50
        if stor101[address(msg.sender)][1].field_0 <= 0:
            revert with 0, 'NO_CLAIM_WALLET_EMPTY'
        if stor101[address(msg.sender)][1].field_0 and 10^18 > -1 / stor101[address(msg.sender)][1].field_0:
            revert with 0, 17
        if not sub_7b96c66a:
            revert with 0, 18
        if sub_b9a30fd1 and 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a > -1 / sub_b9a30fd1:
            revert with 0, 17
        sub_2a33cd27[address(msg.sender)] = sub_17616b61
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if not stor101[address(msg.sender)].field_0:
            if 0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor101[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor101[address(msg.sender)].field_0 - 1 >= stor101[address(msg.sender)].field_0:
                revert with 0, 50
            if stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        if not stor102.length:
            if 0 < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        else:
            if stor102.length < 1:
                revert with 0, 17
            if stor102.length - 1 >= stor102.length:
                revert with 0, 50
            if stor102[stor102.length] < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] = 0
        if totalSupply < balanceOf[address(msg.sender)]:
            revert with 0, 17
        totalSupply -= balanceOf[address(msg.sender)]
        emit 0xe0ddf252: balanceOf[address(msg.sender)], msg.sender, 0
        if initialSupply and 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a > -1 / initialSupply:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if not stor101[address(msg.sender)].field_0:
            if 0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor101[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor101[address(msg.sender)].field_0 - 1 >= stor101[address(msg.sender)].field_0:
                revert with 0, 50
            if stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 < stor104:
                stor101[address(msg.sender)].field_0++
                stor101[address(msg.sender)][stor101[address(msg.sender)].field_0].field_0 = stor104
                stor101[address(msg.sender)].field_256++
                stor[stor101[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor101', 101)))].field_0 = balanceOf[address(msg.sender)]
        if not stor102.length:
            if 0 < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        else:
            if stor102.length < 1:
                revert with 0, 17
            if stor102.length - 1 >= stor102.length:
                revert with 0, 50
            if stor102[stor102.length] < stor104:
                stor102.length++
                stor102[stor102.length] = stor104
                stor103.length++
                stor103[stor103.length] = totalSupply
        if totalSupply > !(initialSupply * 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a / 10^18):
            revert with 0, 17
        totalSupply += initialSupply * 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a / 10^18
        if balanceOf[address(msg.sender)] > !(initialSupply * 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a / 10^18):
            revert with 0, 17
        balanceOf[address(msg.sender)] += initialSupply * 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a / 10^18
        emit 0xe0ddf252: (initialSupply * 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a / 10^18), 0, msg.sender
        if 840 * 24 * 3600 > !finishTime:
            revert with 0, 17
        sub_b2e20edb[address(msg.sender)] = finishTime + (840 * 24 * 3600)
        require ext_code.size(RESERVEAddress)
        call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args sub_b9a30fd1 * 10^18 * stor101[address(msg.sender)][1].field_0 / sub_7b96c66a / 10^18, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Claim(msg.sender);
}

function claimInterim() payable {
    if finished:
        revert with 0, 'FINISHED'
    if stor220[address(msg.sender)]:
        revert with 0, 'WHITELISTED'
    require ext_code.size(sub_c6005893Address)
    staticcall sub_c6005893Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c4a0c25aAddress)
    staticcall sub_c4a0c25aAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'WHITELISTED'
    if sub_bbe21d2f <= 0:
        revert with 0, 'NO_CLAIM'
    if sub_c13824ad[address(msg.sender)] >= sub_bbe21d2f:
        revert with 0, 'ALREADY_CLAIMED'
    mem[0] = msg.sender
    if sub_bbe21d2f <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if sub_bbe21d2f > stor104:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor101[address(msg.sender)].field_0:
        idx = stor101[mem[0]].field_0
        while 0 < idx:
            if 0 > !bool(idx):
                revert with 0, 17
            if 0 > !(idx / 2):
                revert with 0, 17
            if idx / 2 > !0:
                revert with 0, 17
            if idx / 2 >= stor101[address(msg.sender)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(msg.sender), 101)
            if stor101[address(msg.sender)][0.5 / idx].field_0 > sub_bbe21d2f:
                idx = idx / 2
                continue 
            if 1 > !(idx / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor101[address(msg.sender)].field_0:
        if balanceOf[address(msg.sender)] <= 0:
            revert with 0, 'EMPTY_WALLET_SNAPSHOT'
        if balanceOf[address(msg.sender)] and 10^18 > -1 / balanceOf[address(msg.sender)]:
            revert with 0, 17
        mem[0] = owner
        if sub_bbe21d2f <= 0:
            revert with 0, 'ERC20Snapshot: id is 0'
        if sub_bbe21d2f > stor104:
            revert with 0, 'ERC20Snapshot: nonexistent id'
        if stor101[stor151].field_0:
            idx = stor101[mem[0]].field_0
            while 0 < idx:
                if 0 > !bool(idx):
                    revert with 0, 17
                if 0 > !(idx / 2):
                    revert with 0, 17
                if idx / 2 > !0:
                    revert with 0, 17
                if idx / 2 >= stor101[stor151].field_0:
                    revert with 0, 50
                mem[0] = sha3(owner, 101)
                if stor101[stor151][0.5 / idx].field_0 > sub_bbe21d2f:
                    idx = idx / 2
                    continue 
                if 1 > !(idx / 2):
                    revert with 0, 17
                idx = idx
                continue 
        if 0 == stor101[stor151].field_0:
            if sub_bbe21d2f <= 0:
                revert with 0, 'ERC20Snapshot: id is 0'
            if sub_bbe21d2f > stor104:
                revert with 0, 'ERC20Snapshot: nonexistent id'
            if stor102.length:
                idx = stor102.length
                while 0 < idx:
                    if 0 > !bool(idx):
                        revert with 0, 17
                    if 0 > !(idx / 2):
                        revert with 0, 17
                    if idx / 2 > !0:
                        revert with 0, 17
                    if idx / 2 >= stor102.length:
                        revert with 0, 50
                    mem[0] = 102
                    if stor102[0.5 / idx] > sub_bbe21d2f:
                        idx = idx / 2
                        continue 
                    if 1 > !(idx / 2):
                        revert with 0, 17
                    idx = idx
                    continue 
            if 0 == stor102.length:
                if totalSupply < balanceOf[stor151]:
                    revert with 0, 17
                if not totalSupply - balanceOf[stor151]:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * balanceOf[address(msg.sender)] / totalSupply - balanceOf[stor151] > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / totalSupply - balanceOf[stor151] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / totalSupply - balanceOf[stor151] / 10^18, msg.sender
            else:
                if 0 >= stor103.length:
                    revert with 0, 50
                if stor103 < balanceOf[stor151]:
                    revert with 0, 17
                if not stor103 - balanceOf[stor151]:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * balanceOf[address(msg.sender)] / stor103 - balanceOf[stor151] > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / stor103 - balanceOf[stor151] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / stor103 - balanceOf[stor151] / 10^18, msg.sender
        else:
            if 0 >= stor101[stor151].field_256:
                revert with 0, 50
            if sub_bbe21d2f <= 0:
                revert with 0, 'ERC20Snapshot: id is 0'
            if sub_bbe21d2f > stor104:
                revert with 0, 'ERC20Snapshot: nonexistent id'
            if stor102.length:
                idx = stor102.length
                while 0 < idx:
                    if 0 > !bool(idx):
                        revert with 0, 17
                    if 0 > !(idx / 2):
                        revert with 0, 17
                    if idx / 2 > !0:
                        revert with 0, 17
                    if idx / 2 >= stor102.length:
                        revert with 0, 50
                    mem[0] = 102
                    if stor102[0.5 / idx] > sub_bbe21d2f:
                        idx = idx / 2
                        continue 
                    if 1 > !(idx / 2):
                        revert with 0, 17
                    idx = idx
                    continue 
            if 0 == stor102.length:
                if totalSupply < stor101[stor151][1].field_0:
                    revert with 0, 17
                if not totalSupply - stor101[stor151][1].field_0:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * balanceOf[address(msg.sender)] / totalSupply - stor101[stor151][1].field_0 > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / totalSupply - stor101[stor151][1].field_0 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / totalSupply - stor101[stor151][1].field_0 / 10^18, msg.sender
            else:
                if 0 >= stor103.length:
                    revert with 0, 50
                if stor103 < stor101[stor151][1].field_0:
                    revert with 0, 17
                if not stor103 - stor101[stor151][1].field_0:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * balanceOf[address(msg.sender)] / stor103 - stor101[stor151][1].field_0 > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / stor103 - stor101[stor151][1].field_0 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * balanceOf[address(msg.sender)] / stor103 - stor101[stor151][1].field_0 / 10^18, msg.sender
    else:
        if 0 >= stor101[address(msg.sender)].field_256:
            revert with 0, 50
        if stor101[address(msg.sender)][1].field_0 <= 0:
            revert with 0, 'EMPTY_WALLET_SNAPSHOT'
        if stor101[address(msg.sender)][1].field_0 and 10^18 > -1 / stor101[address(msg.sender)][1].field_0:
            revert with 0, 17
        mem[0] = owner
        if sub_bbe21d2f <= 0:
            revert with 0, 'ERC20Snapshot: id is 0'
        if sub_bbe21d2f > stor104:
            revert with 0, 'ERC20Snapshot: nonexistent id'
        if stor101[stor151].field_0:
            idx = stor101[mem[0]].field_0
            while 0 < idx:
                if 0 > !bool(idx):
                    revert with 0, 17
                if 0 > !(idx / 2):
                    revert with 0, 17
                if idx / 2 > !0:
                    revert with 0, 17
                if idx / 2 >= stor101[stor151].field_0:
                    revert with 0, 50
                mem[0] = sha3(owner, 101)
                if stor101[stor151][0.5 / idx].field_0 > sub_bbe21d2f:
                    idx = idx / 2
                    continue 
                if 1 > !(idx / 2):
                    revert with 0, 17
                idx = idx
                continue 
        if 0 == stor101[stor151].field_0:
            if sub_bbe21d2f <= 0:
                revert with 0, 'ERC20Snapshot: id is 0'
            if sub_bbe21d2f > stor104:
                revert with 0, 'ERC20Snapshot: nonexistent id'
            if stor102.length:
                idx = stor102.length
                while 0 < idx:
                    if 0 > !bool(idx):
                        revert with 0, 17
                    if 0 > !(idx / 2):
                        revert with 0, 17
                    if idx / 2 > !0:
                        revert with 0, 17
                    if idx / 2 >= stor102.length:
                        revert with 0, 50
                    mem[0] = 102
                    if stor102[0.5 / idx] > sub_bbe21d2f:
                        idx = idx / 2
                        continue 
                    if 1 > !(idx / 2):
                        revert with 0, 17
                    idx = idx
                    continue 
            if 0 == stor102.length:
                if totalSupply < balanceOf[stor151]:
                    revert with 0, 17
                if not totalSupply - balanceOf[stor151]:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * stor101[address(msg.sender)][1].field_0 / totalSupply - balanceOf[stor151] > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / totalSupply - balanceOf[stor151] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / totalSupply - balanceOf[stor151] / 10^18, msg.sender
            else:
                if 0 >= stor103.length:
                    revert with 0, 50
                if stor103 < balanceOf[stor151]:
                    revert with 0, 17
                if not stor103 - balanceOf[stor151]:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * stor101[address(msg.sender)][1].field_0 / stor103 - balanceOf[stor151] > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / stor103 - balanceOf[stor151] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / stor103 - balanceOf[stor151] / 10^18, msg.sender
        else:
            if 0 >= stor101[stor151].field_256:
                revert with 0, 50
            if sub_bbe21d2f <= 0:
                revert with 0, 'ERC20Snapshot: id is 0'
            if sub_bbe21d2f > stor104:
                revert with 0, 'ERC20Snapshot: nonexistent id'
            if stor102.length:
                idx = stor102.length
                while 0 < idx:
                    if 0 > !bool(idx):
                        revert with 0, 17
                    if 0 > !(idx / 2):
                        revert with 0, 17
                    if idx / 2 > !0:
                        revert with 0, 17
                    if idx / 2 >= stor102.length:
                        revert with 0, 50
                    mem[0] = 102
                    if stor102[0.5 / idx] > sub_bbe21d2f:
                        idx = idx / 2
                        continue 
                    if 1 > !(idx / 2):
                        revert with 0, 17
                    idx = idx
                    continue 
            if 0 == stor102.length:
                if totalSupply < stor101[stor151][1].field_0:
                    revert with 0, 17
                if not totalSupply - stor101[stor151][1].field_0:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * stor101[address(msg.sender)][1].field_0 / totalSupply - stor101[stor151][1].field_0 > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / totalSupply - stor101[stor151][1].field_0 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / totalSupply - stor101[stor151][1].field_0 / 10^18, msg.sender
            else:
                if 0 >= stor103.length:
                    revert with 0, 50
                if stor103 < stor101[stor151][1].field_0:
                    revert with 0, 17
                if not stor103 - stor101[stor151][1].field_0:
                    revert with 0, 18
                if sub_f939db10 and 10^18 * stor101[address(msg.sender)][1].field_0 / stor103 - stor101[stor151][1].field_0 > -1 / sub_f939db10:
                    revert with 0, 17
                sub_c13824ad[address(msg.sender)] = sub_bbe21d2f
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.unstakeReserveAsset(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / stor103 - stor101[stor151][1].field_0 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(RESERVEAddress)
                call RESERVEAddress.transferAsset(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f939db10 * 10^18 * stor101[address(msg.sender)][1].field_0 / stor103 - stor101[stor151][1].field_0 / 10^18, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit ClaimInterim(msg.sender);
}



}
