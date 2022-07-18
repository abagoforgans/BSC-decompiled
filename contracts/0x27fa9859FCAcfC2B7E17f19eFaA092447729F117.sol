contract main {




// =====================  Runtime code  =====================


const sub_0cf375bd(?) = 10

const sub_0e3d0d35(?) = 100

const sub_7f31f58a(?) = (168 * 24 * 3600)

const sub_b4267c9b(?) = 50

const START_TIME = (456758 * 3600)


uint32 stor0;
address owner;
uint256 stor0;
uint256 raised;
mapping of uint256 sub_8e6afbce;
mapping of uint256 claimTimes;
mapping of uint256 contributions;
mapping of uint8 stor5;
mapping of uint256 holder;
uint256 sub_e8f5316e;
uint256 allocation;
uint256 maxAllocation;
uint256 sub_6cdfcc94;
uint8 stor11;
address sub_70280e39Address; offset 8
address farmerAddress;
address sub_1ca51762Address;
address sub_f55c8cbfAddress;
address sub_bf2c7cbfAddress;

function sub_1ca51762(?) {
    return sub_1ca51762Address
}

function whitelists(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function holder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return holder[arg1]
}

function contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[arg1]
}

function sub_6cdfcc94(?) {
    return sub_6cdfcc94
}

function sub_70280e39(?) {
    return sub_70280e39Address
}

function allocation() {
    return allocation
}

function owner() {
    return address(owner)
}

function sub_8e6afbce(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8e6afbce[arg1]
}

function released() {
    return bool(stor11)
}

function maxAllocation() {
    return maxAllocation
}

function claimTimes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimTimes[arg1]
}

function sub_bf2c7cbf(?) {
    return sub_bf2c7cbfAddress
}

function farmer() {
    return farmerAddress
}

function sub_e8f5316e(?) {
    return sub_e8f5316e
}

function raised() {
    return raised
}

function sub_f55c8cbf(?) {
    return sub_f55c8cbfAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function safu() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function getRare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if arg1 / 100000000 * 10^18 > 9999:
        return 1
    if arg1 / 100000000 * 10^18 > 9707:
        return 6
    if arg1 / 100000000 * 10^18 > 9359:
        return 5
    if arg1 / 100000000 * 10^18 > 8706:
        return 4
    if arg1 / 100000000 * 10^18 > 7836:
        return 3
    if arg1 / 100000000 * 10^18 <= 5224:
        return 1
    return 2
}

function sub_794dca89(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function release() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 456782 * 3600 >= block.timestamp:
        if raised != maxAllocation:
            revert with 0, 'Presale is not ended'
    require ext_code.size(sub_bf2c7cbfAddress)
    staticcall sub_bf2c7cbfAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bf2c7cbfAddress)
    staticcall sub_bf2c7cbfAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 10^ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^ext_call.return_data[31 len 1]
    if not raised:
        if ext_call.return_data[0] < 0:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_bf2c7cbfAddress)
            call sub_bf2c7cbfAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), -ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * raised / raised != sub_6cdfcc94 / 10^ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] < sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * raised:
            if ext_call.return_data[0] > sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * raised:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_bf2c7cbfAddress)
            call sub_bf2c7cbfAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (sub_6cdfcc94 / 10^uint8(ext_call.return_data[0]) * raised) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor11 = 1
}

function sub_8c34f534(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_e091a98a(?) payable {
    require ext_code.size(sub_f55c8cbfAddress)
    staticcall sub_f55c8cbfAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1ca51762Address)
    staticcall sub_1ca51762Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor5[address(msg.sender)]:
        if ext_call.return_data[0] < holder[stor14]:
            if ext_call.return_data[0] < holder[stor13]:
                revert with 0, 'invalid contributor'
    if not stor5[address(msg.sender)]:
        if block.timestamp < 456758 * 3600:
            revert with 0, 'Not in presale'
        if 456782 * 3600 < block.timestamp:
            revert with 0, 'Not in presale'
    if raised >= maxAllocation:
        revert with 0, 'Not in presale'
    if contributions[address(msg.sender)] == allocation:
        revert with 0, 'allocation limit exceeded'
    if msg.value + raised < raised:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + raised <= maxAllocation:
        if msg.value + contributions[address(msg.sender)] < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + contributions[address(msg.sender)] < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + contributions[address(msg.sender)] <= allocation:
            contributions[address(msg.sender)] += msg.value
            if msg.value + raised < raised:
                revert with 0, 'SafeMath: addition overflow'
            raised += msg.value
            emit Contribution(msg.value, msg.sender);
        else:
            if allocation > msg.value + contributions[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if msg.value + contributions[address(msg.sender)] - allocation > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            call msg.sender with:
               value msg.value + contributions[address(msg.sender)] - allocation wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            contributions[address(msg.sender)] = allocation
            if -contributions[address(msg.sender)] + allocation + raised < raised:
                revert with 0, 'SafeMath: addition overflow'
            raised = -contributions[address(msg.sender)] + allocation + raised
            emit Contribution((-contributions[address(msg.sender)] + allocation), msg.sender);
    else:
        if msg.value + raised < raised:
            revert with 0, 'SafeMath: addition overflow'
        if maxAllocation > msg.value + raised:
            revert with 0, 'SafeMath: subtraction overflow'
        if msg.value + raised - maxAllocation > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value msg.value + raised - maxAllocation wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if -raised + maxAllocation + contributions[address(msg.sender)] < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if -raised + maxAllocation + contributions[address(msg.sender)] < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if -raised + maxAllocation + contributions[address(msg.sender)] <= allocation:
            contributions[address(msg.sender)] = -raised + maxAllocation + contributions[address(msg.sender)]
            if maxAllocation < raised:
                revert with 0, 'SafeMath: addition overflow'
            raised = maxAllocation
            emit Contribution((-raised + maxAllocation), msg.sender);
        else:
            if allocation > -raised + maxAllocation + contributions[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if contributions[address(msg.sender)] - allocation > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            call msg.sender with:
               value -raised + maxAllocation + contributions[address(msg.sender)] - allocation wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            contributions[address(msg.sender)] = allocation
            if -contributions[address(msg.sender)] + allocation + raised < raised:
                revert with 0, 'SafeMath: addition overflow'
            raised = -contributions[address(msg.sender)] + allocation + raised
            emit Contribution((-contributions[address(msg.sender)] + allocation), msg.sender);
}

function claim() {
    if not stor11:
        revert with 0, 'Presale is not released'
    if claimTimes[address(msg.sender)] >= 6:
        revert with 0, 'invalid contributor'
    if contributions[address(msg.sender)] <= 0:
        revert with 0, 'invalid contributor'
    if sub_8e6afbce[address(msg.sender)] + (168 * 24 * 3600) < sub_8e6afbce[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_8e6afbce[address(msg.sender)] + (168 * 24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'wait until the next time to claim'
    require ext_code.size(sub_bf2c7cbfAddress)
    staticcall sub_bf2c7cbfAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 10^ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^ext_call.return_data[31 len 1]
    if not contributions[address(msg.sender)]:
        if claimTimes[address(msg.sender)] + 1 < claimTimes[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        claimTimes[address(msg.sender)]++
        sub_8e6afbce[address(msg.sender)] = block.timestamp
        require ext_code.size(sub_bf2c7cbfAddress)
        call sub_bf2c7cbfAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim(0, msg.sender);
    else:
        if sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / contributions[address(msg.sender)] != sub_6cdfcc94 / 10^ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: multiplication overflow'
        if claimTimes[address(msg.sender)]:
            if not sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / 100:
                if claimTimes[address(msg.sender)] + 1 < claimTimes[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                claimTimes[address(msg.sender)]++
                sub_8e6afbce[address(msg.sender)] = block.timestamp
                require ext_code.size(sub_bf2c7cbfAddress)
                call sub_bf2c7cbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(0, msg.sender);
            else:
                if 10 * sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / 100 / sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / 100 != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                if claimTimes[address(msg.sender)] + 1 < claimTimes[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                claimTimes[address(msg.sender)]++
                sub_8e6afbce[address(msg.sender)] = block.timestamp
                require ext_code.size(sub_bf2c7cbfAddress)
                call sub_bf2c7cbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10 * sub_6cdfcc94 / 10^uint8(ext_call.return_data[0]) * contributions[address(msg.sender)] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim((10 * sub_6cdfcc94 / 10^uint8(ext_call.return_data[0]) * contributions[address(msg.sender)] / 100), msg.sender);
        else:
            if not sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / 100:
                if claimTimes[address(msg.sender)] + 1 < claimTimes[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                claimTimes[address(msg.sender)]++
                sub_8e6afbce[address(msg.sender)] = block.timestamp
                require ext_code.size(sub_bf2c7cbfAddress)
                call sub_bf2c7cbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(0, msg.sender);
            else:
                if 50 * sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / 100 / sub_6cdfcc94 / 10^ext_call.return_data[31 len 1] * contributions[address(msg.sender)] / 100 != 50:
                    revert with 0, 'SafeMath: multiplication overflow'
                if claimTimes[address(msg.sender)] + 1 < claimTimes[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                claimTimes[address(msg.sender)]++
                sub_8e6afbce[address(msg.sender)] = block.timestamp
                require ext_code.size(sub_bf2c7cbfAddress)
                call sub_bf2c7cbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 50 * sub_6cdfcc94 / 10^uint8(ext_call.return_data[0]) * contributions[address(msg.sender)] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim((50 * sub_6cdfcc94 / 10^uint8(ext_call.return_data[0]) * contributions[address(msg.sender)] / 100), msg.sender);
}

function sub_1da9e5cf(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[address(msg.sender)]:
        if raised >= maxAllocation:
            revert with 0, 'Not in presale'
        if ('cd', 4).length < 10:
            revert with 0, 'Not enough ZOANs'
        idx = 0
        while idx < ('cd', 4).length - 1:
            s = idx + 1
            while s < ('cd', 4).length:
                require idx < ('cd', 4).length
                if cd[((32 * idx) + cd[4] + 36)] == cd[((32 * s) + cd[4] + 36)]:
                    revert with 0, 'Invalid list IDs'
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_70280e39Address)
            staticcall sub_70280e39Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_166] == mem[_166 + 12 len 20]
                if mem[_166 + 12 len 20] == msg.sender:
                    require idx < ('cd', 4).length
                    require ext_code.size(sub_70280e39Address)
                    staticcall sub_70280e39Address.getZoan(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _186 = mem[64]
                        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                        mem[64] = mem[64] + 192
                        mem[_186] = mem[_182]
                        mem[_186 + 32] = mem[_182 + 32]
                        require mem[_182 + 64] == mem[_182 + 95 len 1]
                        mem[_186 + 64] = mem[_182 + 64]
                        mem[_186 + 96] = mem[_182 + 96]
                        mem[_186 + 128] = mem[_182 + 128]
                        mem[_186 + 160] = mem[_182 + 160]
                        if mem[_186 + 128]:
                            if mem[_186 + 128] / 100000000 * 10^18 <= 9999:
                                if mem[_186 + 128] / 100000000 * 10^18 <= 9707:
                                    if mem[_186 + 128] / 100000000 * 10^18 <= 9359:
                                        if mem[_186 + 128] / 100000000 * 10^18 <= 8706:
                                            if mem[_186 + 128] / 100000000 * 10^18 <= 7836:
                                                if mem[_186 + 128] / 100000000 * 10^18 <= 5224:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
                else:
                    require idx < ('cd', 4).length
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(farmerAddress)
                    staticcall farmerAddress.isOwnerOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args msg.sender, cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _184 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_184] == bool(mem[_184])
                        if not mem[_184]:
                            revert with 0, 'Invalid list IDs'
                        else:
                            require idx < ('cd', 4).length
                            require ext_code.size(sub_70280e39Address)
                            staticcall sub_70280e39Address.getZoan(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _212 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _214 = mem[64]
                                require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                                mem[64] = mem[64] + 192
                                mem[_214] = mem[_212]
                                mem[_214 + 32] = mem[_212 + 32]
                                require mem[_212 + 64] == mem[_212 + 95 len 1]
                                mem[_214 + 64] = mem[_212 + 64]
                                mem[_214 + 96] = mem[_212 + 96]
                                mem[_214 + 128] = mem[_212 + 128]
                                mem[_214 + 160] = mem[_212 + 160]
                                if mem[_214 + 128]:
                                    if mem[_214 + 128] / 100000000 * 10^18 <= 9999:
                                        if mem[_214 + 128] / 100000000 * 10^18 <= 9707:
                                            if mem[_214 + 128] / 100000000 * 10^18 <= 9359:
                                                if mem[_214 + 128] / 100000000 * 10^18 <= 8706:
                                                    if mem[_214 + 128] / 100000000 * 10^18 <= 7836:
                                                        if mem[_214 + 128] / 100000000 * 10^18 <= 5224:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
    else:
        if block.timestamp < 456758 * 3600:
            revert with 0, 'Not in presale'
        if 456782 * 3600 < block.timestamp:
            revert with 0, 'Not in presale'
        if raised >= maxAllocation:
            revert with 0, 'Not in presale'
        if ('cd', 4).length < 10:
            revert with 0, 'Not enough ZOANs'
        idx = 0
        while idx < ('cd', 4).length - 1:
            s = idx + 1
            while s < ('cd', 4).length:
                require idx < ('cd', 4).length
                if cd[((32 * idx) + cd[4] + 36)] == cd[((32 * s) + cd[4] + 36)]:
                    revert with 0, 'Invalid list IDs'
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_70280e39Address)
            staticcall sub_70280e39Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_168] == mem[_168 + 12 len 20]
                if mem[_168 + 12 len 20] == msg.sender:
                    require idx < ('cd', 4).length
                    require ext_code.size(sub_70280e39Address)
                    staticcall sub_70280e39Address.getZoan(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _187 = mem[64]
                        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                        mem[64] = mem[64] + 192
                        mem[_187] = mem[_183]
                        mem[_187 + 32] = mem[_183 + 32]
                        require mem[_183 + 64] == mem[_183 + 95 len 1]
                        mem[_187 + 64] = mem[_183 + 64]
                        mem[_187 + 96] = mem[_183 + 96]
                        mem[_187 + 128] = mem[_183 + 128]
                        mem[_187 + 160] = mem[_183 + 160]
                        if mem[_187 + 128]:
                            if mem[_187 + 128] / 100000000 * 10^18 <= 9999:
                                if mem[_187 + 128] / 100000000 * 10^18 <= 9707:
                                    if mem[_187 + 128] / 100000000 * 10^18 <= 9359:
                                        if mem[_187 + 128] / 100000000 * 10^18 <= 8706:
                                            if mem[_187 + 128] / 100000000 * 10^18 <= 7836:
                                                if mem[_187 + 128] / 100000000 * 10^18 <= 5224:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            idx = idx + 1
                            continue 
                else:
                    require idx < ('cd', 4).length
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(farmerAddress)
                    staticcall farmerAddress.isOwnerOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args msg.sender, cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_185] == bool(mem[_185])
                        if not mem[_185]:
                            revert with 0, 'Invalid list IDs'
                        else:
                            require idx < ('cd', 4).length
                            require ext_code.size(sub_70280e39Address)
                            staticcall sub_70280e39Address.getZoan(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 192
                                _215 = mem[64]
                                require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                                mem[64] = mem[64] + 192
                                mem[_215] = mem[_213]
                                mem[_215 + 32] = mem[_213 + 32]
                                require mem[_213 + 64] == mem[_213 + 95 len 1]
                                mem[_215 + 64] = mem[_213 + 64]
                                mem[_215 + 96] = mem[_213 + 96]
                                mem[_215 + 128] = mem[_213 + 128]
                                mem[_215 + 160] = mem[_213 + 160]
                                if mem[_215 + 128]:
                                    if mem[_215 + 128] / 100000000 * 10^18 <= 9999:
                                        if mem[_215 + 128] / 100000000 * 10^18 <= 9707:
                                            if mem[_215 + 128] / 100000000 * 10^18 <= 9359:
                                                if mem[_215 + 128] / 100000000 * 10^18 <= 8706:
                                                    if mem[_215 + 128] / 100000000 * 10^18 <= 7836:
                                                        if mem[_215 + 128] / 100000000 * 10^18 <= 5224:
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = idx + 1
                                    continue 
    revert with 0, 'Not enough R6'
}



}
