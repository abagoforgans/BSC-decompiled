contract main {




// =====================  Runtime code  =====================


#
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - injectFunds(uint256 arg1, uint256 arg2)
#  - buyTickets(uint256 arg1, uint32[] arg2)
#  - claimTickets(uint256 arg1, uint256[] arg2, uint32[] arg3)
#
const MIN_LENGTH_LOTTERY = 14100

const MIN_DISCOUNT_DIVISOR = 300

const MAX_LENGTH_LOTTERY = 345900

const MAX_TREASURY_FEE = 3000


uint256 stor0;
address owner;
address injectorAddress;
address operatorAddress;
uint32 stor4;
address treasuryAddress;
uint256 stor4;
uint256 viewCurrentLotteryId;
uint256 currentTicketId;
uint256 maxNumberTicketsPerBuyOrClaim;
uint256 sub_41cc4023;
uint256 sub_c85d45f0;
uint256 pendingInjectionNextLottery;
address sub_52f585ffAddress;
address randomGeneratorAddress;
mapping of struct stor13;
mapping of struct stor14;
mapping of uint32 stor15;
mapping of uint256 stor16;

function operatorAddress() payable {
    return operatorAddress
}

function pendingInjectionNextLottery() payable {
    return pendingInjectionNextLottery
}

function maxNumberTicketsPerBuyOrClaim() payable {
    return maxNumberTicketsPerBuyOrClaim
}

function sub_41cc4023(?) payable {
    return sub_41cc4023
}

function sub_52f585ff(?) payable {
    return sub_52f585ffAddress
}

function currentTicketId() payable {
    return currentTicketId
}

function currentLotteryId() payable {
    return viewCurrentLotteryId
}

function viewCurrentLotteryId() payable {
    return viewCurrentLotteryId
}

function owner() payable {
    return owner
}

function injectorAddress() payable {
    return injectorAddress
}

function treasuryAddress() payable {
    return address(treasuryAddress)
}

function sub_c85d45f0(?) payable {
    return sub_c85d45f0
}

function randomGenerator() payable {
    return randomGeneratorAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxNumberTicketsPerBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Must be > 0'
    maxNumberTicketsPerBuyOrClaim = arg1
}

function sub_bf6cc28d(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0, 'minPrice must be < maxPrice'
    sub_c85d45f0 = arg1
    sub_41cc4023 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateTotalPriceForBulkTickets(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 < 300:
        revert with 0, 'Must be >= MIN_DISCOUNT_DIVISOR'
    if not arg3:
        revert with 0, 'Number of tickets must be > 0'
    if 1 > !arg1:
        revert with 0, 17
    if arg1 + 1 < arg3:
        revert with 0, 17
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if arg2 * arg3 and arg1 + -arg3 + 1 > -1 / arg2 * arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    return ((arg2 * arg3) + (arg1 * arg2 * arg3) - (arg3 * arg2 * arg3) / arg1)
}

function setOperatorAndTreasuryAndInjectorAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if not arg2:
        revert with 0, 'Cannot be zero address'
    if not arg3:
        revert with 0, 'Cannot be zero address'
    operatorAddress = arg1
    address(treasuryAddress) = arg2
    injectorAddress = arg3
    emit NewOperatorAndTreasuryAndInjectorAddresses(address(arg1), address(arg2), arg3);
}

function closeLottery(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor13[arg1].field_0 > 3:
        revert with 0, 33
    if stor13[arg1].field_0 != 1:
        revert with 0, 'Lottery not open'
    if block.timestamp <= stor13[arg1].field_512:
        revert with 0, 'Lottery not over'
    stor13[arg1].field_6400 = currentTicketId
    require ext_code.size(randomGeneratorAddress)
    call randomGeneratorAddress.getRandomNumber(uint256 arg1) with:
         gas gas_remaining wei
        args sha3(arg1, currentTicketId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13[arg1].field_0 = 2
    emit LotteryClose(currentTicketId, arg1);
    stor0 = 1
}

function changeRandomGenerator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[stor5].field_0 > 3:
        revert with 0, 33
    if stor13[stor5].field_0 != 3:
        revert with 0, 'Lottery not in claimable'
    require ext_code.size(arg1)
    call arg1.getRandomNumber(uint256 arg1) with:
         gas gas_remaining wei
        args sha3(viewCurrentLotteryId, currentTicketId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.viewRandomResult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    randomGeneratorAddress = arg1
    emit NewRandomGenerator(arg1);
}

function viewLottery(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor13[arg1].field_0 > 3:
        revert with 0, 33
    idx = 1504
    s = 5
    while 1696 > idx + 32:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1696
    s = 12
    while 1888 > idx + 32:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1888
    s = 18
    while 2080 > idx + 32:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor13[arg1].field_0 >= 4:
        revert with 0, 33
    return stor13[arg1].field_0, 
           stor13[arg1].field_256,
           stor13[arg1].field_512,
           stor13[arg1].field_768,
           stor13[arg1].field_1024,
           stor13[arg1].field_1280,
           mem[1536 len 160],
           stor13[arg1].field_2816,
           stor13[arg1].field_3072,
           mem[1728 len 160],
           stor13[arg1].field_4608,
           mem[1920 len 160],
           stor13[arg1].field_6144,
           stor13[arg1].field_6400,
           stor13[arg1].field_6656,
           stor13[arg1].field_6912
}

function startLottery(uint256 arg1, uint256 arg2, uint256 arg3, uint256[6] arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 320
    require 292 <= calldata.size
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if viewCurrentLotteryId:
        if stor13[stor5].field_0 > 3:
            revert with 0, 33
        if stor13[stor5].field_0 != 3:
            revert with 0, 'Not time to start lottery'
    if arg1 < block.timestamp:
        revert with 0, 17
    if arg1 - block.timestamp <= 14100:
        revert with 0, 'Lottery length outside of range'
    if arg1 < block.timestamp:
        revert with 0, 17
    if arg1 - block.timestamp >= 345900:
        revert with 0, 'Lottery length outside of range'
    if arg2 < sub_c85d45f0:
        revert with 0, 'Outside of limits'
    if arg2 > sub_41cc4023:
        revert with 0, 'Outside of limits'
    if arg3 < 300:
        revert with 0, 'Discount divisor too low'
    if cd[292] > 3000:
        revert with 0, 'Treasury fee too high'
    if arg4 > !arg5:
        revert with 0, 17
    if arg4 + arg5 > !cd[164]:
        revert with 0, 17
    if arg4 + arg5 + cd[164] > !cd[196]:
        revert with 0, 17
    if arg4 + arg5 + cd[164] + cd[196] > !cd[228]:
        revert with 0, 17
    if arg4 + arg5 + cd[164] + cd[196] + cd[228] > !cd[260]:
        revert with 0, 17
    if arg4 + arg5 + cd[164] + cd[196] + cd[228] + cd[260] != 10000:
        revert with 0, 'Rewards must equal 10000'
    if viewCurrentLotteryId == -1:
        revert with 0, 17
    viewCurrentLotteryId++
    mem[512 len 192] = call.data[100 len 192]
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0
    mem[960] = 0
    mem[992] = 0
    mem[1024] = 0
    mem[1056] = 0
    stor13[stor5].field_0 = 1
    stor13[stor5].field_256 = block.timestamp
    stor13[stor5].field_512 = arg1
    stor13[stor5].field_768 = arg2
    stor13[stor5].field_1024 = arg3
    s = 5
    idx = 512
    while 704 > idx:
        stor13[stor5][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 11
    while 11 > idx:
        stor13[stor5][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13[stor5].field_2816 = cd[292]
    s = 12
    idx = 704
    while 896 > idx:
        stor13[stor5][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 18
    while 18 > idx:
        stor13[stor5][idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 18
    idx = 896
    while 1088 > idx:
        stor13[stor5][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 24
    while 24 > idx:
        stor13[stor5][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13[stor5].field_6144 = currentTicketId
    stor13[stor5].field_6400 = currentTicketId
    stor13[stor5].field_6656 = pendingInjectionNextLottery
    stor13[stor5].field_6912 = 0
    stor13[stor5].field_7168 = 0
    emit LotteryOpen(block.timestamp, arg1, arg2, currentTicketId, pendingInjectionNextLottery, viewCurrentLotteryId);
    pendingInjectionNextLottery = 0
}

function viewNumbersAndStatusesForTicketIds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 0, 65
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_0
                if idx >= arg1.length:
                    revert with 0, 50
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 14
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                if stor14[cd[((32 * idx) + arg1 + 36)]].field_32:
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                else:
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * arg1.length) + 160] = 64
            mem[(64 * arg1.length) + 224] = arg1.length
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < arg1.length:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 96
            _96 = mem[(32 * arg1.length) + 128]
            mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = (98 * arg1.length) + 288
            while idx < mem[(32 * arg1.length) + 128]:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (98 * arg1.length) + (32 * _96) + -mem[64] + 288
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_0
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 14
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            if stor14[cd[((32 * idx) + arg1 + 36)]].field_32:
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            else:
                mem[(32 * idx) + (32 * arg1.length) + 160] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + 160] = 64
        mem[(64 * arg1.length) + 224] = arg1.length
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < arg1.length:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 96
        _97 = mem[(32 * arg1.length) + 128]
        mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = (98 * arg1.length) + 288
        while idx < mem[(32 * arg1.length) + 128]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (98 * arg1.length) + (32 * _97) + -mem[64] + 288
    mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_0
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 14
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            if stor14[cd[((32 * idx) + arg1 + 36)]].field_32:
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            else:
                mem[(32 * idx) + (32 * arg1.length) + 160] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + 160] = 64
        mem[(64 * arg1.length) + 224] = arg1.length
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < arg1.length:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 96
        _98 = mem[(32 * arg1.length) + 128]
        mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = (98 * arg1.length) + 288
        while idx < mem[(32 * arg1.length) + 128]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (98 * arg1.length) + (32 * _98) + -mem[64] + 288
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_0
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 14
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 0, 50
        if stor14[cd[((32 * idx) + arg1 + 36)]].field_32:
            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        else:
            mem[(32 * idx) + (32 * arg1.length) + 160] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 64
    mem[(64 * arg1.length) + 224] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < arg1.length:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 96
    _99 = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = (98 * arg1.length) + 288
    while idx < mem[(32 * arg1.length) + 128]:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (98 * arg1.length) + (32 * _99) + -mem[64] + 288
}

function viewRewardsForTicketId(uint256 arg1, uint256 arg2, uint32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor13[arg1].field_0 > 3:
        revert with 0, 33
    if stor13[arg1].field_0 != 3:
        return 0
    if arg2 > stor13[arg1].field_6400:
        if arg2 <= stor13[arg1].field_6144:
            return 0
    if 1 > -arg3 + test266151307():
        revert with 0, 17
    if not uint32(arg3 + 1):
        if stor15[arg3 << 224] > -uint32(stor14[arg2].field_0 % 1) + test266151307():
            revert with 0, 17
        if 1 > -arg3 + test266151307():
            revert with 0, 17
        if not uint32(arg3 + 1):
            if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % 1) + test266151307():
                revert with 0, 17
            if uint32(uint32(stor14[arg2].field_0 % 1) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % 1) + stor15[arg3 << 224]):
                return 0
        else:
            if bool(bool(uint32(arg3 + 1) < 78)) or bool(bool(uint32(arg3 + 1) < 32)):
                if 10^uint32(arg3 + 1) > test266151307():
                    revert with 0, 17
                if not uint32(10^uint32(arg3 + 1)):
                    revert with 0, 18
                if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % uint32(10^uint32(arg3 + 1))) + test266151307():
                    revert with 0, 17
                if uint32(uint32(stor14[arg2].field_0 % 1) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % uint32(10^uint32(arg3 + 1))) + stor15[arg3 << 224]):
                    return 0
            else:
                s = 10
                t = 1
                idx = uint32(arg3 + 1)
                while idx > 1:
                    if s > test266151307() / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > test266151307() / s:
                    revert with 0, 17
                if not uint32(s * t):
                    revert with 0, 18
                if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % uint32(s * t)) + test266151307():
                    revert with 0, 17
                if uint32(uint32(stor14[arg2].field_0 % 1) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % uint32(s * t)) + stor15[arg3 << 224]):
                    return 0
    else:
        if bool(bool(uint32(arg3 + 1) < 78)) or bool(bool(uint32(arg3 + 1) < 32)):
            if 10^uint32(arg3 + 1) > test266151307():
                revert with 0, 17
            if not uint32(10^uint32(arg3 + 1)):
                revert with 0, 18
            if stor15[arg3 << 224] > -uint32(stor14[arg2].field_0 % uint32(10^uint32(arg3 + 1))) + test266151307():
                revert with 0, 17
            if 1 > -arg3 + test266151307():
                revert with 0, 17
            if not uint32(arg3 + 1):
                if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % 1) + test266151307():
                    revert with 0, 17
                if uint32(uint32(stor14[arg2].field_0 % uint32(10^uint32(arg3 + 1))) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % 1) + stor15[arg3 << 224]):
                    return 0
            else:
                if bool(bool(uint32(arg3 + 1) < 78)) or bool(bool(uint32(arg3 + 1) < 32)):
                    if 10^uint32(arg3 + 1) > test266151307():
                        revert with 0, 17
                    if not uint32(10^uint32(arg3 + 1)):
                        revert with 0, 18
                    if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % uint32(10^uint32(arg3 + 1))) + test266151307():
                        revert with 0, 17
                    if uint32(uint32(stor14[arg2].field_0 % uint32(10^uint32(arg3 + 1))) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % uint32(10^uint32(arg3 + 1))) + stor15[arg3 << 224]):
                        return 0
                else:
                    s = 10
                    t = 1
                    idx = uint32(arg3 + 1)
                    while idx > 1:
                        if s > test266151307() / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > test266151307() / s:
                        revert with 0, 17
                    if not uint32(s * t):
                        revert with 0, 18
                    if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % uint32(s * t)) + test266151307():
                        revert with 0, 17
                    if uint32(uint32(stor14[arg2].field_0 % uint32(10^uint32(arg3 + 1))) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % uint32(s * t)) + stor15[arg3 << 224]):
                        return 0
        else:
            s = 10
            t = 1
            idx = uint32(arg3 + 1)
            while idx > 1:
                if s > test266151307() / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > test266151307() / s:
                revert with 0, 17
            if not uint32(s * t):
                revert with 0, 18
            if stor15[arg3 << 224] > -uint32(stor14[arg2].field_0 % uint32(s * t)) + test266151307():
                revert with 0, 17
            if 1 > -arg3 + test266151307():
                revert with 0, 17
            if not uint32(arg3 + 1):
                if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % 1) + test266151307():
                    revert with 0, 17
                if uint32(uint32(stor14[arg2].field_0 % uint32(s * t)) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % 1) + stor15[arg3 << 224]):
                    return 0
            else:
                if bool(bool(uint32(arg3 + 1) < 78)) or bool(bool(uint32(arg3 + 1) < 32)):
                    if 10^uint32(arg3 + 1) > test266151307():
                        revert with 0, 17
                    if not uint32(10^uint32(arg3 + 1)):
                        revert with 0, 18
                    if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % uint32(10^uint32(arg3 + 1))) + test266151307():
                        revert with 0, 17
                    if uint32(uint32(stor14[arg2].field_0 % uint32(s * t)) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % uint32(10^uint32(arg3 + 1))) + stor15[arg3 << 224]):
                        return 0
                else:
                    u = 10
                    v = 1
                    idx = uint32(arg3 + 1)
                    while idx > 1:
                        if u > test266151307() / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > test266151307() / u:
                        revert with 0, 17
                    if not uint32(u * v):
                        revert with 0, 18
                    if stor15[arg3 << 224] > -uint32(stor13[arg1].field_6912 % uint32(u * v)) + test266151307():
                        revert with 0, 17
                    if uint32(uint32(stor14[arg2].field_0 % uint32(s * t)) + stor15[arg3 << 224]) != uint32(uint32(stor13[arg1].field_6912 % uint32(u * v)) + stor15[arg3 << 224]):
                        return 0
    if arg3 >= 6:
        revert with 0, 50
    return stor13[arg1][arg3].field_3072
}

function drawFinalNumberAndMakeLotteryClaimable(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor13[arg1].field_0 > 3:
        revert with 0, 33
    if stor13[arg1].field_0 != 2:
        revert with 0, 'Lottery not close'
    require ext_code.size(randomGeneratorAddress)
    staticcall randomGeneratorAddress.viewLatestLotteryId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[0]:
        revert with 0, 'Numbers not drawn'
    require ext_code.size(randomGeneratorAddress)
    staticcall randomGeneratorAddress.viewRandomResult() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    if 10000 < stor13[arg1].field_2816:
        revert with 0, 17
    if stor13[arg1].field_6656 and -stor13[arg1].field_2816 + 10000 > -1 / stor13[arg1].field_6656:
        revert with 0, 17
    idx = 0
    s = 0
    while uint32(idx) < 6:
        if 5 < uint32(idx):
            revert with 0, 17
        if 1 > -uint32(-uint32(idx) + 5) + test266151307():
            revert with 0, 17
        if not uint32(uint32(-uint32(idx) + 5) + 1):
            if stor15[-uint32(idx) + 5 << 224] > -uint32(ext_call.return_data[28 len 4] % 1) + test266151307():
                revert with 0, 17
            if stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
                revert with 0, 17
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            stor13[arg1][uint32(-uint32(idx) + 5)].field_4608 = stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] - s
            if stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
                revert with 0, 17
            if not stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] - s:
                if uint32(-uint32(idx) + 5) >= 6:
                    revert with 0, 50
                stor13[arg1][uint32(-uint32(idx) + 5)].field_3072 = 0
                mem[0] = arg1
                mem[32] = 13
                if stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 and (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 > -1 / stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                    revert with 0, 17
                if 0 > !(stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 * (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 / 10000):
                    revert with 0, 17
                if uint32(idx) == test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            mem[0] = arg1
            mem[32] = 13
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            if not stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                if uint32(idx) == test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            if stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
                revert with 0, 17
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            if stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 and (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 > -1 / stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                revert with 0, 17
            if not stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] - s:
                revert with 0, 18
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            stor13[arg1][uint32(-uint32(idx) + 5)].field_3072 = stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 * (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 / stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224] - s / 10000
            mem[0] = uint32(uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224])
            mem[32] = sha3(arg1, 16)
            if uint32(idx) == test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = stor16[arg1][uint32(ext_call.return_data[28 len 4] % 1) + stor15[-uint32(idx) + 5 << 224] << 224]
            continue 
        if bool(bool(uint32(uint32(-uint32(idx) + 5) + 1) < 78)) or bool(bool(uint32(uint32(-uint32(idx) + 5) + 1) < 32)):
            if 10^uint32(uint32(-uint32(idx) + 5) + 1) > test266151307():
                revert with 0, 17
            if not uint32(10^uint32(uint32(-uint32(idx) + 5) + 1)):
                revert with 0, 18
            if stor15[-uint32(idx) + 5 << 224] > -uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + test266151307():
                revert with 0, 17
            if stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
                revert with 0, 17
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            stor13[arg1][uint32(-uint32(idx) + 5)].field_4608 = stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] - s
            if stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
                revert with 0, 17
            if not stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] - s:
                if uint32(-uint32(idx) + 5) >= 6:
                    revert with 0, 50
                stor13[arg1][uint32(-uint32(idx) + 5)].field_3072 = 0
                mem[0] = arg1
                mem[32] = 13
                if stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 and (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 > -1 / stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                    revert with 0, 17
                if 0 > !(stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 * (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 / 10000):
                    revert with 0, 17
                if uint32(idx) == test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            mem[0] = arg1
            mem[32] = 13
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            if not stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                if uint32(idx) == test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            if stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
                revert with 0, 17
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            if stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 and (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 > -1 / stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                revert with 0, 17
            if not stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] - s:
                revert with 0, 18
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            stor13[arg1][uint32(-uint32(idx) + 5)].field_3072 = stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 * (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 / stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224] - s / 10000
            mem[0] = uint32(uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224])
            mem[32] = sha3(arg1, 16)
            if uint32(idx) == test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(10^uint32(uint32(-uint32(idx) + 5) + 1))) + stor15[-uint32(idx) + 5 << 224] << 224]
            continue 
        u = 10
        v = 1
        t = uint32(uint32(-uint32(idx) + 5) + 1)
        while t > 1:
            if u > test266151307() / u:
                revert with 0, 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = u * v
            t = uint255(t) * 0.5
            continue 
        if v > test266151307() / u:
            revert with 0, 17
        if not uint32(u * v):
            revert with 0, 18
        if stor15[-uint32(idx) + 5 << 224] > -uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + test266151307():
            revert with 0, 17
        if stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
            revert with 0, 17
        if uint32(-uint32(idx) + 5) >= 6:
            revert with 0, 50
        stor13[arg1][uint32(-uint32(idx) + 5)].field_4608 = stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] - s
        if stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
            revert with 0, 17
        if not stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] - s:
            if uint32(-uint32(idx) + 5) >= 6:
                revert with 0, 50
            stor13[arg1][uint32(-uint32(idx) + 5)].field_3072 = 0
            mem[0] = arg1
            mem[32] = 13
            if stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 and (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 > -1 / stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
                revert with 0, 17
            if 0 > !(stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 * (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 / 10000):
                revert with 0, 17
            if uint32(idx) == test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        mem[0] = arg1
        mem[32] = 13
        if uint32(-uint32(idx) + 5) >= 6:
            revert with 0, 50
        if not stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
            if uint32(idx) == test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] < s:
            revert with 0, 17
        if uint32(-uint32(idx) + 5) >= 6:
            revert with 0, 50
        if stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 and (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 > -1 / stor13[arg1][uint32(-uint32(idx) + 5)].field_1280:
            revert with 0, 17
        if not stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] - s:
            revert with 0, 18
        if uint32(-uint32(idx) + 5) >= 6:
            revert with 0, 50
        stor13[arg1][uint32(-uint32(idx) + 5)].field_3072 = stor13[arg1][uint32(-uint32(idx) + 5)].field_1280 * (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000 / stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224] - s / 10000
        mem[0] = uint32(uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224])
        mem[32] = sha3(arg1, 16)
        if uint32(idx) == test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = stor16[arg1][uint32(ext_call.return_data[28 len 4] % uint32(u * v)) + stor15[-uint32(idx) + 5 << 224] << 224]
        continue 
    stor13[arg1].field_6912 = ext_call.return_data[28 len 4]
    stor13[arg1].field_0 = 3
    if arg2:
        pendingInjectionNextLottery = 0
    if stor13[arg1].field_6656 < (10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000:
        revert with 0, 17
    if 0 > !(stor13[arg1].field_6656 - ((10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000)):
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(treasuryAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = stor13[arg1].field_6656 - ((10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000)
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(sub_52f585ffAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), stor13[arg1].field_6656 - ((10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000), 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_52f585ffAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), stor13[arg1].field_6656 - ((10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), stor13[arg1].field_6656 - ((10000 * stor13[arg1].field_6656) - (stor13[arg1].field_2816 * stor13[arg1].field_6656) / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LotteryNumberDrawn(ext_call.return_data[0] << 224, s, viewCurrentLotteryId);
    stor0 = 1
}

function viewUserInfoForLotteryId(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 17)
    if stor17[address(arg1)][arg2] < arg3:
        revert with 0, 17
    if arg4 <= stor17[address(arg1)][arg2] - arg3:
        if arg4 > test266151307():
            revert with 0, 65
        mem[96] = arg4
        if not arg4:
            if arg4 > test266151307():
                revert with 0, 65
            mem[(32 * arg4) + 128] = arg4
            if not arg4:
                if arg4 > test266151307():
                    revert with 0, 65
                mem[(64 * arg4) + 160] = arg4
                mem[64] = (98 * arg4) + 192
                if not arg4:
                    idx = 0
                    while idx < arg4:
                        if idx > !arg3:
                            revert with 0, 17
                        if idx + arg3 >= stor17[address(arg1)][arg2]:
                            revert with 0, 50
                        if idx >= arg4:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                        if idx >= arg4:
                            revert with 0, 50
                        if idx >= mem[(32 * arg4) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                        if idx >= arg4:
                            revert with 0, 50
                        mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                        mem[32] = 14
                        if idx >= mem[(64 * arg4) + 160]:
                            revert with 0, 50
                        if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                            mem[(32 * idx) + (64 * arg4) + 192] = 0
                        else:
                            mem[(32 * idx) + (64 * arg4) + 192] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if arg3 > !arg4:
                        revert with 0, 17
                    mem[(98 * arg4) + 192] = 128
                    mem[(98 * arg4) + 320] = arg4
                    mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
                    mem[(98 * arg4) + 224] = (32 * arg4) + 160
                    _705 = mem[(32 * arg4) + 128]
                    mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
                    idx = 0
                    s = (32 * arg4) + 160
                    t = mem[64] + (32 * arg4) + 192
                    while idx < _705:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _705) + 192
                    _801 = mem[(64 * arg4) + 160]
                    mem[(131 * arg4) + (32 * _705) + 384] = mem[(64 * arg4) + 160]
                    idx = 0
                    s = (64 * arg4) + 192
                    t = (131 * arg4) + (32 * _705) + 416
                    while idx < mem[(64 * arg4) + 160]:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(98 * arg4) + 288] = arg3 + arg4
                    return memory
                      from mem[64]
                       len (131 * arg4) + (32 * _705) + (32 * _801) + -mem[64] + 416
                mem[(64 * arg4) + 192 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
                idx = 0
                while idx < arg4:
                    if idx > !arg3:
                        revert with 0, 17
                    if idx + arg3 >= stor17[address(arg1)][arg2]:
                        revert with 0, 50
                    if idx >= arg4:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    if idx >= arg4:
                        revert with 0, 50
                    if idx >= mem[(32 * arg4) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                    if idx >= arg4:
                        revert with 0, 50
                    mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    mem[32] = 14
                    if idx >= mem[(64 * arg4) + 160]:
                        revert with 0, 50
                    if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                        mem[(32 * idx) + (64 * arg4) + 192] = 0
                    else:
                        mem[(32 * idx) + (64 * arg4) + 192] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg3 > !arg4:
                    revert with 0, 17
                mem[(98 * arg4) + 192] = 128
                mem[(98 * arg4) + 320] = arg4
                mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
                mem[(98 * arg4) + 224] = (32 * arg4) + 160
                _706 = mem[(32 * arg4) + 128]
                mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
                idx = 0
                s = (32 * arg4) + 160
                t = (131 * arg4) + 384
                while idx < mem[(32 * arg4) + 128]:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _706) + 192
                _802 = mem[(64 * arg4) + 160]
                mem[(131 * arg4) + (32 * _706) + 384] = mem[(64 * arg4) + 160]
                idx = 0
                s = (64 * arg4) + 192
                t = (131 * arg4) + (32 * _706) + 416
                while idx < mem[(64 * arg4) + 160]:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[(98 * arg4) + 192 len 96], arg3 + arg4, mem[(98 * arg4) + 320 len (33 * arg4) + (32 * _706) + (32 * _802) + 96]
            mem[(32 * arg4) + 160 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
            if arg4 > test266151307():
                revert with 0, 65
            mem[(64 * arg4) + 160] = arg4
            mem[64] = (98 * arg4) + 192
            if not arg4:
                idx = 0
                while idx < arg4:
                    if idx > !arg3:
                        revert with 0, 17
                    if idx + arg3 >= stor17[address(arg1)][arg2]:
                        revert with 0, 50
                    if idx >= arg4:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    if idx >= arg4:
                        revert with 0, 50
                    if idx >= mem[(32 * arg4) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                    if idx >= arg4:
                        revert with 0, 50
                    mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    mem[32] = 14
                    if idx >= mem[(64 * arg4) + 160]:
                        revert with 0, 50
                    if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                        mem[(32 * idx) + (64 * arg4) + 192] = 0
                    else:
                        mem[(32 * idx) + (64 * arg4) + 192] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg3 > !arg4:
                    revert with 0, 17
                mem[(98 * arg4) + 192] = 128
                mem[(98 * arg4) + 320] = arg4
                mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
                mem[(98 * arg4) + 224] = (32 * arg4) + 160
                _707 = mem[(32 * arg4) + 128]
                mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
                idx = 0
                s = (32 * arg4) + 160
                t = (131 * arg4) + 384
                while idx < mem[(32 * arg4) + 128]:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _707) + 192
                _803 = mem[(64 * arg4) + 160]
                mem[(131 * arg4) + (32 * _707) + 384] = mem[(64 * arg4) + 160]
                idx = 0
                s = (64 * arg4) + 192
                t = (131 * arg4) + (32 * _707) + 416
                while idx < mem[(64 * arg4) + 160]:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[(98 * arg4) + 192 len 96], arg3 + arg4, mem[(98 * arg4) + 320 len (33 * arg4) + (32 * _707) + (32 * _803) + 96]
            mem[(64 * arg4) + 192 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
            idx = 0
            while idx < arg4:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= stor17[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= arg4:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                if idx >= arg4:
                    revert with 0, 50
                if idx >= mem[(32 * arg4) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                if idx >= arg4:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                mem[32] = 14
                if idx >= mem[(64 * arg4) + 160]:
                    revert with 0, 50
                if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                    mem[(32 * idx) + (64 * arg4) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * arg4) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !arg4:
                revert with 0, 17
            mem[(98 * arg4) + 192] = 128
            mem[(98 * arg4) + 320] = arg4
            mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
            mem[(98 * arg4) + 224] = (32 * arg4) + 160
            _708 = mem[(32 * arg4) + 128]
            mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
            idx = 0
            s = (32 * arg4) + 160
            t = mem[64] + (32 * arg4) + 192
            while idx < _708:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _708) + 192
            _804 = mem[(64 * arg4) + 160]
            mem[(131 * arg4) + (32 * _708) + 384] = mem[(64 * arg4) + 160]
            idx = 0
            s = (64 * arg4) + 192
            t = (131 * arg4) + (32 * _708) + 416
            while idx < mem[(64 * arg4) + 160]:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * arg4) + 288] = arg3 + arg4
            return memory
              from mem[64]
               len (131 * arg4) + (32 * _708) + (32 * _804) + -mem[64] + 416
        mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        if arg4 > test266151307():
            revert with 0, 65
        mem[(32 * arg4) + 128] = arg4
        if not arg4:
            if arg4 > test266151307():
                revert with 0, 65
            mem[(64 * arg4) + 160] = arg4
            mem[64] = (98 * arg4) + 192
            if not arg4:
                idx = 0
                while idx < arg4:
                    if idx > !arg3:
                        revert with 0, 17
                    if idx + arg3 >= stor17[address(arg1)][arg2]:
                        revert with 0, 50
                    if idx >= arg4:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    if idx >= arg4:
                        revert with 0, 50
                    if idx >= mem[(32 * arg4) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                    if idx >= arg4:
                        revert with 0, 50
                    mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    mem[32] = 14
                    if idx >= mem[(64 * arg4) + 160]:
                        revert with 0, 50
                    if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                        mem[(32 * idx) + (64 * arg4) + 192] = 0
                    else:
                        mem[(32 * idx) + (64 * arg4) + 192] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg3 > !arg4:
                    revert with 0, 17
                mem[(98 * arg4) + 192] = 128
                mem[(98 * arg4) + 320] = arg4
                mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
                mem[(98 * arg4) + 224] = (32 * arg4) + 160
                _709 = mem[(32 * arg4) + 128]
                mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
                idx = 0
                s = (32 * arg4) + 160
                t = (131 * arg4) + 384
                while idx < mem[(32 * arg4) + 128]:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _709) + 192
                _805 = mem[(64 * arg4) + 160]
                mem[(131 * arg4) + (32 * _709) + 384] = mem[(64 * arg4) + 160]
                idx = 0
                s = (64 * arg4) + 192
                t = (131 * arg4) + (32 * _709) + 416
                while idx < mem[(64 * arg4) + 160]:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[(98 * arg4) + 192 len 96], arg3 + arg4, mem[(98 * arg4) + 320 len (33 * arg4) + (32 * _709) + (32 * _805) + 96]
            mem[(64 * arg4) + 192 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
            idx = 0
            while idx < arg4:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= stor17[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= arg4:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                if idx >= arg4:
                    revert with 0, 50
                if idx >= mem[(32 * arg4) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                if idx >= arg4:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                mem[32] = 14
                if idx >= mem[(64 * arg4) + 160]:
                    revert with 0, 50
                if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                    mem[(32 * idx) + (64 * arg4) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * arg4) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !arg4:
                revert with 0, 17
            mem[(98 * arg4) + 192] = 128
            mem[(98 * arg4) + 320] = arg4
            mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
            mem[(98 * arg4) + 224] = (32 * arg4) + 160
            _710 = mem[(32 * arg4) + 128]
            mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
            idx = 0
            s = (32 * arg4) + 160
            t = mem[64] + (32 * arg4) + 192
            while idx < _710:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _710) + 192
            _806 = mem[(64 * arg4) + 160]
            mem[(131 * arg4) + (32 * _710) + 384] = mem[(64 * arg4) + 160]
            idx = 0
            s = (64 * arg4) + 192
            t = (131 * arg4) + (32 * _710) + 416
            while idx < mem[(64 * arg4) + 160]:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * arg4) + 288] = arg3 + arg4
            return memory
              from mem[64]
               len (131 * arg4) + (32 * _710) + (32 * _806) + -mem[64] + 416
        mem[(32 * arg4) + 160 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        if arg4 > test266151307():
            revert with 0, 65
        mem[(64 * arg4) + 160] = arg4
        mem[64] = (98 * arg4) + 192
        if not arg4:
            idx = 0
            while idx < arg4:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= stor17[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= arg4:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                if idx >= arg4:
                    revert with 0, 50
                if idx >= mem[(32 * arg4) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                if idx >= arg4:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                mem[32] = 14
                if idx >= mem[(64 * arg4) + 160]:
                    revert with 0, 50
                if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                    mem[(32 * idx) + (64 * arg4) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * arg4) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !arg4:
                revert with 0, 17
            mem[(98 * arg4) + 192] = 128
            mem[(98 * arg4) + 320] = arg4
            mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
            mem[(98 * arg4) + 224] = (32 * arg4) + 160
            _711 = mem[(32 * arg4) + 128]
            mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
            idx = 0
            s = (32 * arg4) + 160
            t = (131 * arg4) + 384
            while idx < mem[(32 * arg4) + 128]:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _711) + 192
            _807 = mem[(64 * arg4) + 160]
            mem[(131 * arg4) + (32 * _711) + 384] = mem[(64 * arg4) + 160]
            idx = 0
            s = (64 * arg4) + 192
            t = (131 * arg4) + (32 * _711) + 416
            while idx < mem[(64 * arg4) + 160]:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[(98 * arg4) + 192 len 96], arg3 + arg4, mem[(98 * arg4) + 320 len (33 * arg4) + (32 * _711) + (32 * _807) + 96]
        mem[(64 * arg4) + 192 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = 0
        while idx < arg4:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= stor17[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= arg4:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            if idx >= arg4:
                revert with 0, 50
            if idx >= mem[(32 * arg4) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg4) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
            if idx >= arg4:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            mem[32] = 14
            if idx >= mem[(64 * arg4) + 160]:
                revert with 0, 50
            if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                mem[(32 * idx) + (64 * arg4) + 192] = 0
            else:
                mem[(32 * idx) + (64 * arg4) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !arg4:
            revert with 0, 17
        mem[(98 * arg4) + 192] = 128
        mem[(98 * arg4) + 320] = arg4
        mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
        mem[(98 * arg4) + 224] = (32 * arg4) + 160
        _712 = mem[(32 * arg4) + 128]
        mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
        idx = 0
        s = (32 * arg4) + 160
        t = mem[64] + (32 * arg4) + 192
        while idx < _712:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * arg4) + 256] = (32 * arg4) + (32 * _712) + 192
        _808 = mem[(64 * arg4) + 160]
        mem[(131 * arg4) + (32 * _712) + 384] = mem[(64 * arg4) + 160]
        idx = 0
        s = (64 * arg4) + 192
        t = (131 * arg4) + (32 * _712) + 416
        while idx < mem[(64 * arg4) + 160]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * arg4) + 288] = arg3 + arg4
        return memory
          from mem[64]
           len (131 * arg4) + (32 * _712) + (32 * _808) + -mem[64] + 416
    if stor17[address(arg1)][arg2] < arg3:
        revert with 0, 17
    if stor17[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[96] = stor17[address(arg1)][arg2] - arg3
    if not stor17[address(arg1)][arg2] - arg3:
        if stor17[address(arg1)][arg2] - arg3 > test266151307():
            revert with 0, 65
        mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128] = stor17[address(arg1)][arg2] - arg3
        if not stor17[address(arg1)][arg2] - arg3:
            if stor17[address(arg1)][arg2] - arg3 > test266151307():
                revert with 0, 65
            mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160] = stor17[address(arg1)][arg2] - arg3
            mem[64] = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192
            if not stor17[address(arg1)][arg2] - arg3:
                idx = 0
                while idx < stor17[address(arg1)][arg2] - arg3:
                    if idx > !arg3:
                        revert with 0, 17
                    if idx + arg3 >= stor17[address(arg1)][arg2]:
                        revert with 0, 50
                    if idx >= stor17[address(arg1)][arg2] - arg3:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    if idx >= stor17[address(arg1)][arg2] - arg3:
                        revert with 0, 50
                    if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                    if idx >= stor17[address(arg1)][arg2] - arg3:
                        revert with 0, 50
                    mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                    mem[32] = 14
                    if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                        revert with 0, 50
                    if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                        mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
                    else:
                        mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg3 > !(stor17[address(arg1)][arg2] - arg3):
                    revert with 0, 17
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
                _713 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
                idx = 0
                s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
                t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 384
                while idx < _713:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _713) + 192
                _809 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
                mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _713) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
                idx = 0
                s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
                t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _713) + 416
                while idx < _809:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Array(len=stor17[address(arg1)][arg2] - arg3, data=mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _713) + (32 * _809) + 64]), 
                       (32 * stor17[address(arg1)][arg2] - arg3) + 160,
                       (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _713) + 192,
                       stor17[address(arg1)][arg2]
            mem[(64 * stor17[address(arg1)][arg2] - arg3) + 192 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
            idx = 0
            while idx < stor17[address(arg1)][arg2] - arg3:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= stor17[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                mem[32] = 14
                if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                    revert with 0, 50
                if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                    mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !(stor17[address(arg1)][arg2] - arg3):
                revert with 0, 17
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
            _714 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
            idx = 0
            s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
            t = mem[64] + (32 * stor17[address(arg1)][arg2] - arg3) + 192
            while idx < _714:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _714) + 192
            _810 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _714) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
            idx = 0
            s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
            t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _714) + 416
            while idx < _810:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 288] = stor17[address(arg1)][arg2]
            return memory
              from mem[64]
               len (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _714) + (32 * _810) + -mem[64] + 416
        mem[(32 * stor17[address(arg1)][arg2] - arg3) + 160 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
        if stor17[address(arg1)][arg2] - arg3 > test266151307():
            revert with 0, 65
        mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160] = stor17[address(arg1)][arg2] - arg3
        mem[64] = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192
        if not stor17[address(arg1)][arg2] - arg3:
            idx = 0
            while idx < stor17[address(arg1)][arg2] - arg3:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= stor17[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                mem[32] = 14
                if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                    revert with 0, 50
                if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                    mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !(stor17[address(arg1)][arg2] - arg3):
                revert with 0, 17
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
            _715 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
            idx = 0
            s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
            t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 384
            while idx < _715:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _715) + 192
            _811 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _715) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
            idx = 0
            s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
            t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _715) + 416
            while idx < _811:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=stor17[address(arg1)][arg2] - arg3, data=mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _715) + (32 * _811) + 64]), 
                   (32 * stor17[address(arg1)][arg2] - arg3) + 160,
                   (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _715) + 192,
                   stor17[address(arg1)][arg2]
        mem[(64 * stor17[address(arg1)][arg2] - arg3) + 192 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
        idx = 0
        while idx < stor17[address(arg1)][arg2] - arg3:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= stor17[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            mem[32] = 14
            if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                revert with 0, 50
            if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
            else:
                mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !(stor17[address(arg1)][arg2] - arg3):
            revert with 0, 17
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
        _716 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
        idx = 0
        s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
        t = mem[64] + (32 * stor17[address(arg1)][arg2] - arg3) + 192
        while idx < _716:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _716) + 192
        _812 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _716) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
        idx = 0
        s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
        t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _716) + 416
        while idx < _812:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 288] = stor17[address(arg1)][arg2]
        return memory
          from mem[64]
           len (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _716) + (32 * _812) + -mem[64] + 416
    mem[128 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
    if stor17[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128] = stor17[address(arg1)][arg2] - arg3
    if not stor17[address(arg1)][arg2] - arg3:
        if stor17[address(arg1)][arg2] - arg3 > test266151307():
            revert with 0, 65
        mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160] = stor17[address(arg1)][arg2] - arg3
        mem[64] = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192
        if not stor17[address(arg1)][arg2] - arg3:
            idx = 0
            while idx < stor17[address(arg1)][arg2] - arg3:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= stor17[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
                if idx >= stor17[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
                mem[32] = 14
                if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                    revert with 0, 50
                if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                    mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !(stor17[address(arg1)][arg2] - arg3):
                revert with 0, 17
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
            _717 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
            idx = 0
            s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
            t = mem[64] + (32 * stor17[address(arg1)][arg2] - arg3) + 192
            while idx < _717:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _717) + 192
            _813 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _717) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
            idx = 0
            s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
            t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _717) + 416
            while idx < _813:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 288] = stor17[address(arg1)][arg2]
            return memory
              from mem[64]
               len (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _717) + (32 * _813) + -mem[64] + 416
        mem[(64 * stor17[address(arg1)][arg2] - arg3) + 192 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
        idx = 0
        while idx < stor17[address(arg1)][arg2] - arg3:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= stor17[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            mem[32] = 14
            if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                revert with 0, 50
            if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
            else:
                mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !(stor17[address(arg1)][arg2] - arg3):
            revert with 0, 17
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
        _718 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
        idx = 0
        s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
        t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 384
        while idx < _718:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _718) + 192
        _814 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _718) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
        idx = 0
        s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
        t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _718) + 416
        while idx < _814:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=stor17[address(arg1)][arg2] - arg3, data=mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _718) + (32 * _814) + 64]), 
               (32 * stor17[address(arg1)][arg2] - arg3) + 160,
               (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _718) + 192,
               stor17[address(arg1)][arg2]
    mem[(32 * stor17[address(arg1)][arg2] - arg3) + 160 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
    if stor17[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160] = stor17[address(arg1)][arg2] - arg3
    mem[64] = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192
    if not stor17[address(arg1)][arg2] - arg3:
        idx = 0
        while idx < stor17[address(arg1)][arg2] - arg3:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= stor17[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
            if idx >= stor17[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
            mem[32] = 14
            if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
                revert with 0, 50
            if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
                mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
            else:
                mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !(stor17[address(arg1)][arg2] - arg3):
            revert with 0, 17
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
        _719 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
        idx = 0
        s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
        t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 384
        while idx < _719:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _719) + 192
        _815 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
        mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _719) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
        idx = 0
        s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
        t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _719) + 416
        while idx < _815:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=stor17[address(arg1)][arg2] - arg3, data=mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _719) + (32 * _815) + 64]), 
               (32 * stor17[address(arg1)][arg2] - arg3) + 160,
               (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _719) + 192,
               stor17[address(arg1)][arg2]
    mem[(64 * stor17[address(arg1)][arg2] - arg3) + 192 len 32 * stor17[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor17[address(arg1)][arg2] - arg3]
    idx = 0
    while idx < stor17[address(arg1)][arg2] - arg3:
        if idx > !arg3:
            revert with 0, 17
        if idx + arg3 >= stor17[address(arg1)][arg2]:
            revert with 0, 50
        if idx >= stor17[address(arg1)][arg2] - arg3:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
        if idx >= stor17[address(arg1)][arg2] - arg3:
            revert with 0, 50
        if idx >= mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor17[address(arg1)][arg2] - arg3) + 160] = stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_0
        if idx >= stor17[address(arg1)][arg2] - arg3:
            revert with 0, 50
        mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]
        mem[32] = 14
        if idx >= mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]:
            revert with 0, 50
        if stor14[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor17', 17))) + idx + arg3]].field_32:
            mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 0
        else:
            mem[(32 * idx) + (64 * stor17[address(arg1)][arg2] - arg3) + 192] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg3 > !(stor17[address(arg1)][arg2] - arg3):
        revert with 0, 17
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 320] = stor17[address(arg1)][arg2] - arg3
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * stor17[address(arg1)][arg2] - arg3] = mem[128 len 32 * stor17[address(arg1)][arg2] - arg3]
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * stor17[address(arg1)][arg2] - arg3) + 160
    _720 = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 352] = mem[(32 * stor17[address(arg1)][arg2] - arg3) + 128]
    idx = 0
    s = (32 * stor17[address(arg1)][arg2] - arg3) + 160
    t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + 384
    while idx < _720:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _720) + 192
    _816 = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
    mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _720) + 384] = mem[(64 * stor17[address(arg1)][arg2] - arg3) + 160]
    idx = 0
    s = (64 * stor17[address(arg1)][arg2] - arg3) + 192
    t = (98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _720) + 416
    while idx < _816:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=stor17[address(arg1)][arg2] - arg3, data=mem[(98 * stor17[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _720) + (32 * _816) + 64]), 
           (32 * stor17[address(arg1)][arg2] - arg3) + 160,
           (32 * stor17[address(arg1)][arg2] - arg3) + (32 * _720) + 192,
           stor17[address(arg1)][arg2]
}



}
