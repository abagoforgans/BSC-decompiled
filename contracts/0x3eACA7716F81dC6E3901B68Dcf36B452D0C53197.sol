contract main {




// =====================  Runtime code  =====================


#
#  - sub_00430bb9(?)
#
address owner;
mapping of uint8 stor1;
array of struct projectName;
uint256 startTime;
uint256 endTime;
address lpAddress;
address tokenAddress;
address adminAddress;
uint256 upperLimit;
uint256 lowerLimit;
uint256 sub_fea800f9;
uint256 sub_4bd07dcc;
uint256 sub_13a4da22;
uint256 numberOfParticipants;
uint8 stor14;
mapping of uint8 stor15;

function sub_13a4da22(?) payable {
    return sub_13a4da22
}

function endTime() payable {
    return endTime
}

function upperLimit() payable {
    return upperLimit
}

function sub_38750a5e(?) payable {
    return bool(stor14)
}

function sub_4bd07dcc(?) payable {
    return sub_4bd07dcc
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function numberOfParticipants() payable {
    return numberOfParticipants
}

function startTime() payable {
    return startTime
}

function sub_7b30195b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[arg1])
}

function owner() payable {
    return owner
}

function lowerLimit() payable {
    return lowerLimit
}

function projectName() payable {
    return projectName[0 len projectName.length].field_0
}

function lpAddress() payable {
    return lpAddress
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_b9ce1e35(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function adminAddress() payable {
    return adminAddress
}

function sub_fea800f9(?) payable {
    return sub_fea800f9
}

function _fallback() payable {
    revert
}

function isStart() payable {
    return block.timestamp >= startTime
}

function isEnd() payable {
    if sub_13a4da22 < sub_fea800f9:
        return (block.timestamp > endTime)
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_46b5474a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    sub_4bd07dcc = arg1
}

function setEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    endTime = arg1
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    startTime = arg1
}

function addAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Auth: addr can not be 0x0'
    stor1[address(arg1)] = 1
    emit AddAuth(arg1);
}

function removeAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Auth: addr can not be 0x0'
    stor1[address(arg1)] = 0
    emit 0x54cba8c8: arg1
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

function sub_6135aac1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    if not arg1:
        lowerLimit = 0
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        lowerLimit = 10^18 * arg1
}

function sub_63fcfd01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    if not arg1:
        sub_fea800f9 = 0
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_fea800f9 = 10^18 * arg1
}

function setUpperLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    if not arg1:
        upperLimit = 0
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        upperLimit = 10^18 * arg1
}

function sub_9a35ae52(?) payable {
    if sub_13a4da22 > sub_fea800f9:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[192] = uint256(projectName.field_0)
    idx = 192
    s = 0
    while projectName.length + 160 > idx:
        mem[idx + 32] = projectName[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=projectName.length, data=mem[192 len ceil32(projectName.length)]), 
           lpAddress,
           sub_fea800f9,
           sub_13a4da22,
           sub_fea800f9 - sub_13a4da22,
           lowerLimit,
           upperLimit,
           endTime
}

function sub_3068b1e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[0] = address(arg1)
    mem[32] = 15
    mem[224] = 0xbedfc01800000000000000000000000000000000000000000000000000000000
    mem[228] = address(arg1)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xbedfc018 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[224 len 4], address(arg1) << 64
    require mem[224 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[224 len 4], address(arg1) << 64 >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    mem[64] = ceil32(return_data.size) + 352
    require mem[mem[224 len 4], address(arg1) << 64 + 224] == mem[mem[224 len 4], address(arg1) << 64 + 224]
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], address(arg1) << 64 + 224]
    _9 = mem[_6 + 256]
    require mem[_6 + 256] <= test266151307()
    require _6 + mem[_6 + 256] + 255 < return_data.size + 224
    _10 = mem[_6 + mem[_6 + 256] + 224]
    require mem[_6 + mem[_6 + 256] + 224] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[_6 + mem[_6 + 256] + 224]) + 384 <= test266151307() and ceil32(mem[_6 + mem[_6 + 256] + 224]) + 160 >= 128
    mem[64] = ceil32(return_data.size) + ceil32(mem[_6 + mem[_6 + 256] + 224]) + 384
    mem[ceil32(return_data.size) + 352] = mem[_6 + mem[_6 + 256] + 224]
    require _6 + _9 + _10 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 384 len ceil32(_10)] = mem[_6 + _9 + 256 len ceil32(_10)]
    if ceil32(_10) <= _10:
        mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 352
        require mem[_6 + 288] == mem[_6 + 300 len 20]
        mem[ceil32(return_data.size) + 288] = mem[_6 + 288]
        require mem[_6 + 320] == mem[_6 + 320]
        mem[ceil32(return_data.size) + 320] = mem[_6 + 320]
        mem[mem[64]] = bool(stor15[address(arg1)])
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 96] = 128
        _50 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 224 len ceil32(_50)] = mem[ceil32(return_data.size) + 384 len ceil32(_50)]
        if ceil32(_50) > _50:
            mem[mem[64] + _50 + 224] = 0
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 300 len 20]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 320]
        return bool(stor15[address(arg1)]), 64, mem[mem[64] + 64], 128, mem[mem[64] + 128 len ceil32(_50) + 96]
    mem[ceil32(return_data.size) + _10 + 384] = 0
    mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 352
    require mem[_6 + 288] == mem[_6 + 300 len 20]
    mem[ceil32(return_data.size) + 288] = mem[_6 + 288]
    require mem[_6 + 320] == mem[_6 + 320]
    mem[ceil32(return_data.size) + 320] = mem[_6 + 320]
    mem[mem[64]] = bool(stor15[address(arg1)])
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = 128
    _51 = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 224 len ceil32(_51)] = mem[ceil32(return_data.size) + 384 len ceil32(_51)]
    if ceil32(_51) > _51:
        mem[mem[64] + _51 + 224] = 0
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 300 len 20]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 320]
    return bool(stor15[address(arg1)]), 64, mem[mem[64] + 64], 128, mem[mem[64] + 128 len ceil32(_51) + 96]
}

function sub_3e8a1a29(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    if not address(arg1):
        revert with 0, 'Token can not be 0x0!'
    if arg3 <= 0:
        revert with 0, 'Transfer limit cannot be 0!'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(arg2)
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg3:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg3 - ext_call.return_data[0] >= 10^18:
            revert with 0, 'Insufficient contract balance!'
        mem[ceil32(return_data.size) + 196] = address(arg2)
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 160] = 68
        mem[ceil32(return_data.size) + 196 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 260] = 32
        mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 392] = 0
        call address(arg1) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                if not mem[ceil32(return_data.size) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
