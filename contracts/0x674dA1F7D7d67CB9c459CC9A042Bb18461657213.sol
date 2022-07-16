contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - withdrawAndStakeAvailableTokens()
#  - withdrawAndStake(uint256 arg1)
#  - withdrawAvailableTokens()
#
const PERCENT_100 = 10000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint8 paused;
mapping of struct stor151;
address tokenAddress;
uint256 totalVestedAmount;
uint8 sub_cc1b2265; offset 160
address farmingContractAddress;
address owner;
array of uint256 stor84882613393583925725825227175822068977385904327970485092188354384632214438729;
array of uint256 stor84882613393583925725825227175822068977385904327970485092188354384632214438730;

function farmingContract() payable {
    return farmingContractAddress
}

function paused() payable {
    return bool(paused)
}

function totalVestedAmount() payable {
    return totalVestedAmount
}

function paymentPlanData(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= paymentPlanData.length:
        revert with 0, 50
    if arg2 >= paymentPlanData[arg1].field_0:
        revert with 0, 50
    if arg1 >= paymentPlanData.length:
        revert with 0, 50
    if arg2 >= paymentPlanData[arg1].field_256:
        revert with 0, 50
    return uint64(stor[(0.25 / arg2) + ('array', ('mul', 2, ('param', 'arg1')), ('name', 'paymentPlanData', 155))].field_(64 * arg2 % 4) - 192), 
           stor((0.0625 / arg2) + sha3((2 * arg1) + ('name', 'stor155', 155) + 1))[uint8(arg2)]
}

function owner() payable {
    return owner
}

function paymentPlanLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= paymentPlanData.length:
        revert with 0, 50
    return paymentPlanData[arg1].field_256
}

function sub_cc1b2265(?) payable {
    return sub_cc1b2265
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setFarmingContract(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    farmingContractAddress = arg1
    sub_cc1b2265 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function vestTokens(uint8 arg1, uint64 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151[address(arg4)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address already has vested tokens'
    if arg1 >= paymentPlanData.length:
        revert with 0, 'Incorrect payment plan index'
    if arg3 <= 0:
        revert with 0, 'Can't vest 0 tokens'
    if totalVestedAmount > !arg3:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalVestedAmount + arg3:
        revert with 0, 'Not enough tokens for this vesting plan'
    uint8(stor151[address(arg4)].field_0) = arg1
    uint64(stor151[address(arg4)].field_8) = arg2
    stor151[address(arg4)].field_256 = arg3
    stor151[address(arg4)].field_512 = 0
    if totalVestedAmount > !arg3:
        revert with 0, 17
    totalVestedAmount += arg3
    emit TokensVested(arg1 << 248, arg2 << 192, arg3, arg4);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            paused = 0
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                paused = 0
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    paused = 0
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        paused = 0
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint16(stor0.field_0) = 257
                            paused = 0
                            uint8(stor0.field_8) = 0
    if not arg1:
        revert with 0, 'incorrect token address'
    tokenAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_4850c4e7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == uint64(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == uint16(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'array length doesn't match'
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if uint64(s) > mem[(32 * idx) + 152 len 8]:
            revert with 0, 'Incorrect unlock date value'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        _75 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if uint16(t) > -mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 159 len 2] + 65535:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 159 len 2] + uint16(t)
        continue 
    if uint16(uint16(_75) * ('cd', 4).length) != 10000:
        revert with 0, 'Total percent is not 100%'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ceil32(32 * ('cd', 4).length) + 97
    paymentPlanData.length++
    storBBA9[stor155.length] = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while storBBA9[stor155.length] + 3 / 4 > idx:
            stor[idx + sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb7)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor[sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb7)] = mem[idx + 24 len 8] * 256^s or !(test266151307() * 256^s) and stor[sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb7)]
            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
            idx = idx + 32
            continue 
        idx = floor32(('cd', 4).length) >> 2
        s = sha3((2 * paymentPlanData.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb7)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (8 * -idx + 15 / 32) + (-1 * idx * idx + 15 / 32) + 8
            s = (idx + 15 / 32) + s
            continue 
        idx = (floor32(('cd', 4).length) >> 2) + Mask(250, 3, None + -(floor32(('cd', 4).length) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(('cd', 4).length) >> 2) + 9) >> 3
        while storBBA9[stor155.length] + 3 / 4 > idx:
            stor[idx + sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb7)] = 0
            idx = idx + 1
            continue 
    storBBA9[stor155.length] = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while storBBA9[stor155.length] + 15 / 16 > idx:
            stor[idx + sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb6)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 4).length) + 129
        while ceil32(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 129 > idx:
            stor[sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb6)] = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor[sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb6)]
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(('cd', 36).length) >> 4
        s = sha3((2 * paymentPlanData.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb6)
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(('cd', 36).length) >> 4) + Mask(254, 1, None + -(floor32(('cd', 36).length) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(('cd', 36).length) >> 4) + 3) >> 1
        while storBBA9[stor155.length] + 15 / 16 > idx:
            stor[idx + sha3((2 * stor155.length) - 0x445624b32415f5c83df84447c1df07d732bbbe3b676eefe236b02df237103cb6)] = 0
            idx = idx + 1
            continue 
    if paymentPlanData.length < 1:
        revert with 0, 17
    emit PaymentPlanAdded((paymentPlanData.length - 1));
}

function withdrawableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor151[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No tokens vested for this address'
    if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
        revert with 0, 50
    if var36002 > 0:
        if uint8(stor151[address(arg1)].field_0) < paymentPlanData.length:
            if var42001 < 1:
                revert with 0, 17
            s = var44002 - 1
            t = var44005
            u = var44006
            u = var44007
            u = var44009
            while s < stor[t]:
                if uint64(stor151[address(arg1)].field_8) > -stor((0.25 / s) + sha3(t))[uint8(s)] + test266151307():
                    revert with 0, 17
                if not var43001:
                    if stor151[address(arg1)].field_256 and uint16(var43005) > -1 / stor151[address(arg1)].field_256:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 < stor151[address(arg1)].field_512:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 <= stor151[address(arg1)].field_256 * uint16(var43005) / 10000:
                        return var43002 << 192, 0
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 < stor151[address(arg1)].field_256 * uint16(var43005) / 10000:
                        revert with 0, 17
                    return var43002 << 192, 
                           stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 - (stor151[address(arg1)].field_256 * uint16(var43005) / 10000)
                if not var43003:
                    revert with 0, 17
                if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
                    revert with 0, 50
                if var43003 - 1 >= paymentPlanData[uint8(stor151[address(arg1)].field_0)].field_0:
                    revert with 0, 50
                if uint64(stor151[address(arg1)].field_8) > -stor((0.25 / var43003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var43003 - 1)] + test266151307():
                    revert with 0, 17
                if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
                    revert with 0, 50
                if var43003 - 1 >= paymentPlanData[uint8(stor151[address(arg1)].field_0)].field_256:
                    revert with 0, 50
                if uint16(var43005) > -stor((0.0625 / var43003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var43003 - 1)] + 65535:
                    revert with 0, 17
                if var43003 - 1 <= 0:
                    if stor151[address(arg1)].field_256 and uint16(stor((0.0625 / var43003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var43003 - 1)] + uint16(var43005)) > -1 / stor151[address(arg1)].field_256:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 < stor151[address(arg1)].field_512:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 <= stor151[address(arg1)].field_256 * uint16(stor((0.0625 / var43003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var43003 - 1)] + uint16(var43005)) / 10000:
                        return stor((0.25 / var43003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var43003 - 1)] + uint64(stor151[address(arg1)].field_8) << 192, 
                               0
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 < stor151[address(arg1)].field_256 * uint16(stor((0.0625 / var43003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var43003 - 1)] + uint16(var43005)) / 10000:
                        revert with 0, 17
                    return stor((0.25 / var43003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var43003 - 1)] + uint64(stor151[address(arg1)].field_8) << 192, 
                           stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 - (stor151[address(arg1)].field_256 * uint16(stor((0.0625 / var43003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var43003 - 1)] + uint16(var43005)) / 10000)
                mem[32] = 151
                if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
                    revert with 0, 50
                mem[0] = 155
                if var43003 - 1 < 1:
                    revert with 0, 17
                s = var43003 - 2
                t = (2 * uint8(stor151[address(arg1)].field_0)) + sha3(155)
                u = stor((0.25 / var43003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var43003 - 1)] + uint64(stor151[address(arg1)].field_8)
                u = var43003 - 1
                u = stor((0.0625 / var43003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var43003 - 1)] + uint16(var43005)
                continue 
        revert with 0, 50
    if stor151[address(arg1)].field_256 and uint16(var36004) > -1 / stor151[address(arg1)].field_256:
        revert with 0, 17
    if stor151[address(arg1)].field_256 < stor151[address(arg1)].field_512:
        revert with 0, 17
    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 <= stor151[address(arg1)].field_256 * uint16(var36004) / 10000:
        return var36001 << 192, 0
    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 < stor151[address(arg1)].field_256 * uint16(var36004) / 10000:
        revert with 0, 17
    return var36001 << 192, 
           stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 - (stor151[address(arg1)].field_256 * uint16(var36004) / 10000)
}

function vestingData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor151[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No tokens vested for this address'
    if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
        revert with 0, 50
    if var37002 > 0:
        if uint8(stor151[address(arg1)].field_0) < paymentPlanData.length:
            if var43001 < 1:
                revert with 0, 17
            s = var45002 - 1
            t = var45005
            u = var45006
            u = var45007
            u = var45009
            while s < stor[t]:
                if uint64(stor151[address(arg1)].field_8) > -stor((0.25 / s) + sha3(t))[uint8(s)] + test266151307():
                    revert with 0, 17
                if not var44001:
                    if stor151[address(arg1)].field_256 and uint16(var44005) > -1 / stor151[address(arg1)].field_256:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 < stor151[address(arg1)].field_512:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 <= stor151[address(arg1)].field_256 * uint16(var44005) / 10000:
                        return uint8(stor151[address(arg1)].field_0), 
                               uint64(stor151[address(arg1)].field_0),
                               var44002 << 192,
                               stor151[address(arg1)].field_256,
                               stor151[address(arg1)].field_512,
                               0
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 < stor151[address(arg1)].field_256 * uint16(var44005) / 10000:
                        revert with 0, 17
                    return uint8(stor151[address(arg1)].field_0), 
                           uint64(stor151[address(arg1)].field_0),
                           var44002 << 192,
                           stor151[address(arg1)].field_256,
                           stor151[address(arg1)].field_512,
                           stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 - (stor151[address(arg1)].field_256 * uint16(var44005) / 10000)
                if not var44003:
                    revert with 0, 17
                if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
                    revert with 0, 50
                if var44003 - 1 >= paymentPlanData[uint8(stor151[address(arg1)].field_0)].field_0:
                    revert with 0, 50
                if uint64(stor151[address(arg1)].field_8) > -stor((0.25 / var44003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var44003 - 1)] + test266151307():
                    revert with 0, 17
                if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
                    revert with 0, 50
                if var44003 - 1 >= paymentPlanData[uint8(stor151[address(arg1)].field_0)].field_256:
                    revert with 0, 50
                if uint16(var44005) > -stor((0.0625 / var44003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var44003 - 1)] + 65535:
                    revert with 0, 17
                if var44003 - 1 <= 0:
                    if stor151[address(arg1)].field_256 and uint16(stor((0.0625 / var44003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var44003 - 1)] + uint16(var44005)) > -1 / stor151[address(arg1)].field_256:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 < stor151[address(arg1)].field_512:
                        revert with 0, 17
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 <= stor151[address(arg1)].field_256 * uint16(stor((0.0625 / var44003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var44003 - 1)] + uint16(var44005)) / 10000:
                        return uint8(stor151[address(arg1)].field_0), 
                               uint64(stor151[address(arg1)].field_0),
                               stor((0.25 / var44003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var44003 - 1)] + uint64(stor151[address(arg1)].field_8) << 192,
                               stor151[address(arg1)].field_256,
                               stor151[address(arg1)].field_512,
                               0
                    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 < stor151[address(arg1)].field_256 * uint16(stor((0.0625 / var44003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var44003 - 1)] + uint16(var44005)) / 10000:
                        revert with 0, 17
                    return uint8(stor151[address(arg1)].field_0), 
                           uint64(stor151[address(arg1)].field_0),
                           stor((0.25 / var44003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var44003 - 1)] + uint64(stor151[address(arg1)].field_8) << 192,
                           stor151[address(arg1)].field_256,
                           stor151[address(arg1)].field_512,
                           stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 - (stor151[address(arg1)].field_256 * uint16(stor((0.0625 / var44003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var44003 - 1)] + uint16(var44005)) / 10000)
                mem[32] = 151
                if uint8(stor151[address(arg1)].field_0) >= paymentPlanData.length:
                    revert with 0, 50
                mem[0] = 155
                if var44003 - 1 < 1:
                    revert with 0, 17
                s = var44003 - 2
                t = (2 * uint8(stor151[address(arg1)].field_0)) + sha3(155)
                u = stor((0.25 / var44003 - 1) + ('array', ('mul', 2, ('stor', 8, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151)))), ('name', 'stor155', 155)))[uint8(var44003 - 1)] + uint64(stor151[address(arg1)].field_8)
                u = var44003 - 1
                u = stor((0.0625 / var44003 - 1) + sha3((2 * uint8(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor151', 151))])) + ('name', 'stor155', 155) + 1))[uint8(var44003 - 1)] + uint16(var44005)
                continue 
        revert with 0, 50
    if stor151[address(arg1)].field_256 and uint16(var37004) > -1 / stor151[address(arg1)].field_256:
        revert with 0, 17
    if stor151[address(arg1)].field_256 < stor151[address(arg1)].field_512:
        revert with 0, 17
    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 <= stor151[address(arg1)].field_256 * uint16(var37004) / 10000:
        return uint8(stor151[address(arg1)].field_0), 
               uint64(stor151[address(arg1)].field_0),
               var37001 << 192,
               stor151[address(arg1)].field_256,
               stor151[address(arg1)].field_512,
               0
    if stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 < stor151[address(arg1)].field_256 * uint16(var37004) / 10000:
        revert with 0, 17
    return uint8(stor151[address(arg1)].field_0), 
           uint64(stor151[address(arg1)].field_0),
           var37001 << 192,
           stor151[address(arg1)].field_256,
           stor151[address(arg1)].field_512,
           stor151[address(arg1)].field_256 - stor151[address(arg1)].field_512 - (stor151[address(arg1)].field_256 * uint16(var37004) / 10000)
}



}
