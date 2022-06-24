contract main {




// =====================  Runtime code  =====================


const rewardInterval = (8760 * 24 * 3600)


address owner;
address sub_757788c8Address;
address LPAddress;
address sub_f13839aeAddress;
array of uint256 rewardRates;
array of uint256 sub_2369a8a2;
uint256 allocation;
uint256 totalClaimedRewards;
uint8 stor8;
uint256 endTime;
uint256 sub_49535ef5;
uint256 sub_3907e37b;
uint256 minDeposit;
uint256 sub_0ab3f828;
mapping of struct sub_8f925a1c;
mapping of uint256 index;
mapping of address addr;
uint256 sub_ad94c812;

function sub_0ab3f828(?) payable {
    return sub_0ab3f828
}

function ended() payable {
    return bool(stor8)
}

function index(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return index[arg1]
}

function sub_2369a8a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_2369a8a2.length
    return sub_2369a8a2[arg1]
}

function endTime() payable {
    return endTime
}

function sub_3907e37b(?) payable {
    return sub_3907e37b
}

function minDeposit() payable {
    return minDeposit
}

function sub_49535ef5(?) payable {
    return sub_49535ef5
}

function sub_4b0b4c5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return Array(len=5, data=sub_8f925a1c[stor15[address(arg1)]].field_0, sub_8f925a1c[stor15[address(arg1)]].field_768, sub_8f925a1c[stor15[address(arg1)]].field_1024, sub_8f925a1c[stor15[address(arg1)]].field_1280, call.data[calldata.size + 128]), 
           bool(sub_8f925a1c[stor15[address(arg1)]].field_1536)
}

function sub_757788c8(?) payable {
    return sub_757788c8Address
}

function numFarmers() payable {
    return sub_ad94c812
}

function allocation() payable {
    return allocation
}

function owner() payable {
    return owner
}

function sub_8f925a1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_8f925a1c[arg1].field_0, 
           sub_8f925a1c[arg1].field_256,
           sub_8f925a1c[arg1].field_512,
           sub_8f925a1c[arg1].field_768,
           sub_8f925a1c[arg1].field_1024,
           sub_8f925a1c[arg1].field_1280,
           bool(sub_8f925a1c[arg1].field_1536)
}

function sub_ad94c812(?) payable {
    return sub_ad94c812
}

function LP() payable {
    return LPAddress
}

function totalClaimedRewards() payable {
    return totalClaimedRewards
}

function sub_f13839ae(?) payable {
    return sub_f13839aeAddress
}

function rewardRates(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rewardRates.length
    return rewardRates[arg1]
}

function addr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addr[arg1]
}

function _fallback() payable {
    revert
}

function sub_61882200(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_0ab3f828 = arg1
    return 1
}

function sub_630552ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_49535ef5 = arg1
    return 1
}

function sub_e81f7c9e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_3907e37b = arg1
    return 1
}

function setMinDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    minDeposit = arg1
    return 1
}

function end() payable {
    require msg.sender == owner
    if stor8:
        revert with 0, 'Farming already ended'
    endTime = block.timestamp
    stor8 = 1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAllocation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if allocation > -arg1 - 1:
        revert with 'NH{q', 17
    if allocation + arg1 < allocation:
        revert with 'NH{q', 1
    allocation += arg1
    return 1
}

function transferTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == owner
    if arg1 == LPAddress:
        revert with 0, 'Cannot Transfer out this token'
    if arg1 == sub_757788c8Address:
        if not stor8:
            revert with 0, 'Wait until farming is ended'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function getUnlockTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_8f925a1c[stor15[address(arg1)]].field_1280 >= sub_2369a8a2.length:
        revert with 'NH{q', 50
    if not sub_8f925a1c[stor15[address(arg1)]].field_0:
        return 0
    if sub_8f925a1c[stor15[address(arg1)]].field_256 > -sub_2369a8a2[stor14[stor15[address(arg1)]].field_1280] - 1:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(arg1)]].field_256 + sub_2369a8a2[stor14[stor15[address(arg1)]].field_1280] < sub_8f925a1c[stor15[address(arg1)]].field_256:
        revert with 'NH{q', 1
    if block.timestamp >= sub_8f925a1c[stor15[address(arg1)]].field_256 + sub_2369a8a2[stor14[stor15[address(arg1)]].field_1280]:
        return 0
    if sub_8f925a1c[stor15[address(arg1)]].field_256 > -sub_2369a8a2[stor14[stor15[address(arg1)]].field_1280] - 1:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(arg1)]].field_256 + sub_2369a8a2[stor14[stor15[address(arg1)]].field_1280] < sub_8f925a1c[stor15[address(arg1)]].field_256:
        revert with 'NH{q', 1
    return (sub_8f925a1c[stor15[address(arg1)]].field_256 + sub_2369a8a2[stor14[stor15[address(arg1)]].field_1280])
}

function getTotalDeposited() payable {
    idx = 1
    s = 0
    s = 0
    while idx <= sub_ad94c812:
        mem[0] = idx
        mem[32] = 14
        if s > -sub_8f925a1c[idx].field_0 - 1:
            revert with 'NH{q', 17
        if s + sub_8f925a1c[idx].field_0 < s:
            revert with 'NH{q', 1
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 < idx:
            revert with 'NH{q', 1
        idx = idx + 1
        s = addr[idx]
        s = s + sub_8f925a1c[idx].field_0
        continue 
    return (s * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812 * sub_ad94c812)
}

function sub_3147477c(?) payable {
    require ext_code.size(sub_f13839aeAddress)
    call sub_f13839aeAddress.0xf211730e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_f13839aeAddress)
    call sub_f13839aeAddress.0x9799b4e7 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_3907e37b:
        revert with 0, 'Not enough points'
    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 <= 0:
        revert with 0, 'Not a farmer'
    if sub_8f925a1c[stor15[address(msg.sender)]].field_1536:
        revert with 0, 'Already boosted'
    require ext_code.size(sub_f13839aeAddress)
    call sub_f13839aeAddress.subPoints(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_3907e37b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Points error'
    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_49535ef5 - 1:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_49535ef5 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
        revert with 'NH{q', 1
    sub_8f925a1c[stor15[address(msg.sender)]].field_1024 += sub_49535ef5
    sub_8f925a1c[stor15[address(msg.sender)]].field_1536 = 1
    return 1
}

function getPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not index[address(arg1)]:
        return 0
    if not sub_8f925a1c[stor15[address(arg1)]].field_0:
        return 0
    if not stor8:
        if sub_8f925a1c[stor15[address(arg1)]].field_512 > block.timestamp:
            revert with 'NH{q', 1
        if block.timestamp < sub_8f925a1c[stor15[address(arg1)]].field_512:
            revert with 'NH{q', 17
        if sub_8f925a1c[stor15[address(arg1)]].field_1024 > -sub_0ab3f828 - 1:
            revert with 'NH{q', 17
        if sub_8f925a1c[stor15[address(arg1)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(arg1)]].field_1024:
            revert with 'NH{q', 1
        if sub_8f925a1c[stor15[address(arg1)]].field_0 and sub_8f925a1c[stor15[address(arg1)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(arg1)]].field_0:
            revert with 'NH{q', 17
        if sub_8f925a1c[stor15[address(arg1)]].field_0:
            if not sub_8f925a1c[stor15[address(arg1)]].field_0:
                revert with 'NH{q', 18
            if (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) / sub_8f925a1c[stor15[address(arg1)]].field_0 != sub_8f925a1c[stor15[address(arg1)]].field_1024 + sub_0ab3f828:
                revert with 'NH{q', 1
        if (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) and block.timestamp - sub_8f925a1c[stor15[address(arg1)]].field_512 > -1 / (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0):
            revert with 'NH{q', 17
        if (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0):
            if not (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0):
                revert with 'NH{q', 18
            if (block.timestamp * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) / (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) != block.timestamp - sub_8f925a1c[stor15[address(arg1)]].field_512:
                revert with 'NH{q', 1
        return ((block.timestamp * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) / 8760 * 24 * 3600 / 10000)
    if sub_8f925a1c[stor15[address(arg1)]].field_512 > endTime:
        return 0
    if sub_8f925a1c[stor15[address(arg1)]].field_512 > endTime:
        revert with 'NH{q', 1
    if endTime < sub_8f925a1c[stor15[address(arg1)]].field_512:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(arg1)]].field_1024 > -sub_0ab3f828 - 1:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(arg1)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(arg1)]].field_1024:
        revert with 'NH{q', 1
    if sub_8f925a1c[stor15[address(arg1)]].field_0 and sub_8f925a1c[stor15[address(arg1)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(arg1)]].field_0:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(arg1)]].field_0:
        if not sub_8f925a1c[stor15[address(arg1)]].field_0:
            revert with 'NH{q', 18
        if (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) / sub_8f925a1c[stor15[address(arg1)]].field_0 != sub_8f925a1c[stor15[address(arg1)]].field_1024 + sub_0ab3f828:
            revert with 'NH{q', 1
    if (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) and endTime - sub_8f925a1c[stor15[address(arg1)]].field_512 > -1 / (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0):
        revert with 'NH{q', 17
    if (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0):
        if not (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0):
            revert with 'NH{q', 18
        if (endTime * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) / (sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) != endTime - sub_8f925a1c[stor15[address(arg1)]].field_512:
            revert with 'NH{q', 1
    return ((endTime * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_8f925a1c[stor15[address(arg1)]].field_1024 * sub_8f925a1c[stor15[address(arg1)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) - (sub_8f925a1c[stor15[address(arg1)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(arg1)]].field_0) / 8760 * 24 * 3600 / 10000)
}

function getRewardsLeft() payable {
    if stor8:
        return 0
    idx = 1
    s = 0
    while idx <= sub_ad94c812:
        mem[0] = addr[idx]
        mem[32] = 15
        if index[stor16[idx]]:
            mem[0] = index[stor16[idx]]
            mem[32] = 14
            if sub_8f925a1c[stor15[stor16[idx]]].field_0:
                if not stor8:
                    if sub_8f925a1c[stor15[stor16[idx]]].field_512 > block.timestamp:
                        revert with 'NH{q', 1
                    if block.timestamp < sub_8f925a1c[stor15[stor16[idx]]].field_512:
                        revert with 'NH{q', 17
                    mem[0] = index[stor16[idx]]
                    mem[32] = 14
                    if sub_8f925a1c[stor15[stor16[idx]]].field_1024 > -sub_0ab3f828 - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[stor16[idx]]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[stor16[idx]]].field_1024:
                        revert with 'NH{q', 1
                    if sub_8f925a1c[stor15[stor16[idx]]].field_0 and sub_8f925a1c[stor15[stor16[idx]]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[stor16[idx]]].field_0:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[stor16[idx]]].field_0:
                        if not sub_8f925a1c[stor15[stor16[idx]]].field_0:
                            revert with 'NH{q', 18
                        if (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / sub_8f925a1c[stor15[stor16[idx]]].field_0 != sub_8f925a1c[stor15[stor16[idx]]].field_1024 + sub_0ab3f828:
                            revert with 'NH{q', 1
                    if (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) and block.timestamp - sub_8f925a1c[stor15[stor16[idx]]].field_512 > -1 / (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0):
                        revert with 'NH{q', 17
                    if (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0):
                        if not (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0):
                            revert with 'NH{q', 18
                        if (block.timestamp * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) != block.timestamp - sub_8f925a1c[stor15[stor16[idx]]].field_512:
                            revert with 'NH{q', 1
                    if 0 > -((block.timestamp * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / 8760 * 24 * 3600 / 10000 < 0:
                        revert with 'NH{q', 1
                else:
                    mem[0] = index[stor16[idx]]
                    mem[32] = 14
                    if sub_8f925a1c[stor15[stor16[idx]]].field_512 <= endTime:
                        if sub_8f925a1c[stor15[stor16[idx]]].field_512 > endTime:
                            revert with 'NH{q', 1
                        if endTime < sub_8f925a1c[stor15[stor16[idx]]].field_512:
                            revert with 'NH{q', 17
                        mem[0] = index[stor16[idx]]
                        mem[32] = 14
                        if sub_8f925a1c[stor15[stor16[idx]]].field_1024 > -sub_0ab3f828 - 1:
                            revert with 'NH{q', 17
                        if sub_8f925a1c[stor15[stor16[idx]]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[stor16[idx]]].field_1024:
                            revert with 'NH{q', 1
                        if sub_8f925a1c[stor15[stor16[idx]]].field_0 and sub_8f925a1c[stor15[stor16[idx]]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[stor16[idx]]].field_0:
                            revert with 'NH{q', 17
                        if sub_8f925a1c[stor15[stor16[idx]]].field_0:
                            if not sub_8f925a1c[stor15[stor16[idx]]].field_0:
                                revert with 'NH{q', 18
                            if (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / sub_8f925a1c[stor15[stor16[idx]]].field_0 != sub_8f925a1c[stor15[stor16[idx]]].field_1024 + sub_0ab3f828:
                                revert with 'NH{q', 1
                        if (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) and endTime - sub_8f925a1c[stor15[stor16[idx]]].field_512 > -1 / (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0):
                            revert with 'NH{q', 17
                        if (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0):
                            if not (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0):
                                revert with 'NH{q', 18
                            if (endTime * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / (sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) != endTime - sub_8f925a1c[stor15[stor16[idx]]].field_512:
                                revert with 'NH{q', 1
                        if 0 > -((endTime * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if (endTime * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_8f925a1c[stor15[stor16[idx]]].field_1024 * sub_8f925a1c[stor15[stor16[idx]]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) - (sub_8f925a1c[stor15[stor16[idx]]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[stor16[idx]]].field_0) / 8760 * 24 * 3600 / 10000 < 0:
                            revert with 'NH{q', 1
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 < idx:
            revert with 'NH{q', 1
        idx = idx + 1
        s = addr[idx]
        continue 
    if totalClaimedRewards > allocation:
        revert with 'NH{q', 1
    if allocation < totalClaimedRewards:
        revert with 'NH{q', 17
    if 0 > allocation - totalClaimedRewards:
        revert with 'NH{q', 1
    if allocation - totalClaimedRewards < 0:
        revert with 'NH{q', 17
    return (allocation - totalClaimedRewards)
}

function claimDivs() payable {
    if index[address(msg.sender)]:
        if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
            if not stor8:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > block.timestamp:
                    revert with 'NH{q', 1
                if block.timestamp < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                    revert with 'NH{q', 1
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 18
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                        revert with 'NH{q', 1
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    revert with 'NH{q', 17
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 1
                if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                    require ext_code.size(sub_757788c8Address)
                    call sub_757788c8Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Could not transfer tokens.'
                    emit RewardsClaimed(msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                        revert with 'NH{q', 1
                    sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if totalClaimedRewards > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if totalClaimedRewards + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                        revert with 'NH{q', 1
                    totalClaimedRewards += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
            else:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 <= endTime:
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > endTime:
                        revert with 'NH{q', 1
                    if endTime < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                        revert with 'NH{q', 1
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                            revert with 'NH{q', 18
                        if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                            revert with 'NH{q', 1
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 17
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                            revert with 'NH{q', 18
                        if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                            revert with 'NH{q', 1
                    if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(sub_757788c8Address)
                        call sub_757788c8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        emit RewardsClaimed(msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                            revert with 'NH{q', 1
                        sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if totalClaimedRewards > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if totalClaimedRewards + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                            revert with 'NH{q', 1
                        totalClaimedRewards += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
    sub_8f925a1c[stor15[address(msg.sender)]].field_512 = block.timestamp
    return 1
}

function sub_a7aed410(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8:
        revert with 0, 'Farming has ended'
    if index[address(msg.sender)] <= 0:
        revert with 0, 'Not a farmer'
    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 <= 0:
        revert with 0, 'Not a farmer'
    require ext_code.size(LPAddress)
    call LPAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Token Allowance'
    if index[address(msg.sender)]:
        if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
            if not stor8:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > block.timestamp:
                    revert with 'NH{q', 1
                if block.timestamp < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                    revert with 'NH{q', 1
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 18
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                        revert with 'NH{q', 1
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    revert with 'NH{q', 17
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 1
                if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                    require ext_code.size(sub_757788c8Address)
                    call sub_757788c8Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Could not transfer tokens.'
                    emit RewardsClaimed(msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                        revert with 'NH{q', 1
                    sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if totalClaimedRewards > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if totalClaimedRewards + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                        revert with 'NH{q', 1
                    totalClaimedRewards += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
            else:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 <= endTime:
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > endTime:
                        revert with 'NH{q', 1
                    if endTime < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                        revert with 'NH{q', 1
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                            revert with 'NH{q', 18
                        if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                            revert with 'NH{q', 1
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 17
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                            revert with 'NH{q', 18
                        if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                            revert with 'NH{q', 1
                    if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(sub_757788c8Address)
                        call sub_757788c8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        emit RewardsClaimed(msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                            revert with 'NH{q', 1
                        sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if totalClaimedRewards > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if totalClaimedRewards + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                            revert with 'NH{q', 1
                        totalClaimedRewards += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
    sub_8f925a1c[stor15[address(msg.sender)]].field_512 = block.timestamp
    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 + arg1 < sub_8f925a1c[stor15[address(msg.sender)]].field_0:
        revert with 'NH{q', 1
    sub_8f925a1c[stor15[address(msg.sender)]].field_0 += arg1
    sub_8f925a1c[stor15[address(msg.sender)]].field_256 = block.timestamp
    emit Deposited(msg.sender, arg1);
    return 1
}

function withdraw() payable {
    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 <= 0:
        revert with 0, 'Invalid amount to withdraw'
    if not stor8:
        if sub_8f925a1c[stor15[address(msg.sender)]].field_1280 >= sub_2369a8a2.length:
            revert with 'NH{q', 50
        if sub_8f925a1c[stor15[address(msg.sender)]].field_256 > block.timestamp:
            revert with 'NH{q', 1
        if block.timestamp < sub_8f925a1c[stor15[address(msg.sender)]].field_256:
            revert with 'NH{q', 17
        if block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_256 <= sub_2369a8a2[stor14[stor15[address(msg.sender)]].field_1280]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You recently staked, please wait before withdrawing.'
    if index[address(msg.sender)]:
        if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
            if not stor8:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > block.timestamp:
                    revert with 'NH{q', 1
                if block.timestamp < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                    revert with 'NH{q', 1
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 18
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                        revert with 'NH{q', 1
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    revert with 'NH{q', 17
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 1
                if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                    require ext_code.size(sub_757788c8Address)
                    call sub_757788c8Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Could not transfer tokens.'
                    emit RewardsClaimed(msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                        revert with 'NH{q', 1
                    sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if totalClaimedRewards > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if totalClaimedRewards + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                        revert with 'NH{q', 1
                    totalClaimedRewards += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
            else:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 <= endTime:
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > endTime:
                        revert with 'NH{q', 1
                    if endTime < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                        revert with 'NH{q', 1
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                            revert with 'NH{q', 18
                        if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                            revert with 'NH{q', 1
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 17
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                            revert with 'NH{q', 18
                        if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                            revert with 'NH{q', 1
                    if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(sub_757788c8Address)
                        call sub_757788c8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        emit RewardsClaimed(msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                            revert with 'NH{q', 1
                        sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if totalClaimedRewards > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if totalClaimedRewards + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                            revert with 'NH{q', 1
                        totalClaimedRewards += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
    sub_8f925a1c[stor15[address(msg.sender)]].field_512 = block.timestamp
    sub_8f925a1c[stor15[address(msg.sender)]].field_0 = 0
    require ext_code.size(LPAddress)
    call LPAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_8f925a1c[stor15[address(msg.sender)]].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    emit Withdrawn(msg.sender, sub_8f925a1c[stor15[address(msg.sender)]].field_0);
    return 1
}

function deposit(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor8:
        revert with 0, 'Farming has ended'
    if not index[address(msg.sender)]:
        if sub_ad94c812 > -2:
            revert with 'NH{q', 17
        if sub_ad94c812 + 1 < sub_ad94c812:
            revert with 'NH{q', 1
        sub_ad94c812++
        index[address(msg.sender)] = sub_ad94c812
        addr[stor17] = msg.sender
    if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
        revert with 0, 'Withdraw first'
    if arg1 < minDeposit:
        revert with 0, 'Amount too low'
    if arg2 < 0:
        revert with 0, 'Option error'
    if arg2 >= 3:
        revert with 0, 'Option error'
    if arg3:
        require ext_code.size(sub_f13839aeAddress)
        call sub_f13839aeAddress.0xf211730e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f13839aeAddress)
        call sub_f13839aeAddress.0x9799b4e7 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_3907e37b:
            revert with 0, 'Not enough points'
        if sub_8f925a1c[stor15[address(msg.sender)]].field_1536:
            revert with 0, 'Already boosted'
        require ext_code.size(sub_f13839aeAddress)
        call sub_f13839aeAddress.subPoints(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_3907e37b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Points error'
        sub_8f925a1c[stor15[address(msg.sender)]].field_1536 = 1
    require ext_code.size(LPAddress)
    call LPAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Token Allowance'
    if index[address(msg.sender)]:
        if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
            if not stor8:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > block.timestamp:
                    revert with 'NH{q', 1
                if block.timestamp < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                    revert with 'NH{q', 1
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    revert with 'NH{q', 17
                if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                    if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 18
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                        revert with 'NH{q', 1
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    revert with 'NH{q', 17
                if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                    if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != block.timestamp - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 1
                if (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                    require ext_code.size(sub_757788c8Address)
                    call sub_757788c8Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Could not transfer tokens.'
                    emit RewardsClaimed(msg.sender, (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                        revert with 'NH{q', 1
                    sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                    if totalClaimedRewards > -((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                        revert with 'NH{q', 17
                    if totalClaimedRewards + ((block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                        revert with 'NH{q', 1
                    totalClaimedRewards += (block.timestamp * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (block.timestamp * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
            else:
                if sub_8f925a1c[stor15[address(msg.sender)]].field_512 <= endTime:
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_512 > endTime:
                        revert with 'NH{q', 1
                    if endTime < sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 > -sub_0ab3f828 - 1:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 < sub_8f925a1c[stor15[address(msg.sender)]].field_1024:
                        revert with 'NH{q', 1
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0 and sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828 > -1 / sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        revert with 'NH{q', 17
                    if sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                        if not sub_8f925a1c[stor15[address(msg.sender)]].field_0:
                            revert with 'NH{q', 18
                        if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / sub_8f925a1c[stor15[address(msg.sender)]].field_0 != sub_8f925a1c[stor15[address(msg.sender)]].field_1024 + sub_0ab3f828:
                            revert with 'NH{q', 1
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) and endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512 > -1 / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        revert with 'NH{q', 17
                    if (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                        if not (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0):
                            revert with 'NH{q', 18
                        if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / (sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) != endTime - sub_8f925a1c[stor15[address(msg.sender)]].field_512:
                            revert with 'NH{q', 1
                    if (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000 > 0:
                        require ext_code.size(sub_757788c8Address)
                        call sub_757788c8Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens.'
                        emit RewardsClaimed(msg.sender, (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000);
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if sub_8f925a1c[stor15[address(msg.sender)]].field_768 + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < sub_8f925a1c[stor15[address(msg.sender)]].field_768:
                            revert with 'NH{q', 1
                        sub_8f925a1c[stor15[address(msg.sender)]].field_768 += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
                        if totalClaimedRewards > -((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) - 1:
                            revert with 'NH{q', 17
                        if totalClaimedRewards + ((endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000) < totalClaimedRewards:
                            revert with 'NH{q', 1
                        totalClaimedRewards += (endTime * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_8f925a1c[stor15[address(msg.sender)]].field_1024 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) + (endTime * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) - (sub_8f925a1c[stor15[address(msg.sender)]].field_512 * sub_0ab3f828 * sub_8f925a1c[stor15[address(msg.sender)]].field_0) / 8760 * 24 * 3600 / 10000
    sub_8f925a1c[stor15[address(msg.sender)]].field_512 = block.timestamp
    if arg2 >= rewardRates.length:
        revert with 'NH{q', 50
    sub_8f925a1c[stor15[address(msg.sender)]].field_1024 = rewardRates[arg2]
    sub_8f925a1c[stor15[address(msg.sender)]].field_1280 = arg2
    if sub_8f925a1c[stor15[address(msg.sender)]].field_1536:
        if arg2 >= rewardRates.length:
            revert with 'NH{q', 50
        if rewardRates[arg2] > -sub_49535ef5 - 1:
            revert with 'NH{q', 17
        if rewardRates[arg2] + sub_49535ef5 < rewardRates[arg2]:
            revert with 'NH{q', 1
        sub_8f925a1c[stor15[address(msg.sender)]].field_1024 = rewardRates[arg2] + sub_49535ef5
    sub_8f925a1c[stor15[address(msg.sender)]].field_0 = arg1
    sub_8f925a1c[stor15[address(msg.sender)]].field_256 = block.timestamp
    emit Deposited(msg.sender, arg1);
    return 1
}



}
