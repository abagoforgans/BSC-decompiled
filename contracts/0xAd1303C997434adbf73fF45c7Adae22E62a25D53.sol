contract main {




// =====================  Runtime code  =====================


const SWAP = 300000

const WBNB = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const MAX = 11

const BASE = 10


address owner;
address FASTGASAddress;
address RLRAddress;
address UV2SOAddress;
uint256 TARGETBOND;
uint256 stor5;
uint8 stor6;

function owner() payable {
    return owner
}

function sub_8e5f36b1(?) payable {
    return bool(stor6)
}

function TARGETBOND() payable {
    return TARGETBOND
}

function UV2SO() payable {
    return UV2SOAddress
}

function RLR() payable {
    return RLRAddress
}

function FASTGAS() payable {
    return FASTGASAddress
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

function setGasPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor5 = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    RLRAddress = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    UV2SOAddress = arg1
}

function setTargetBond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    TARGETBOND = arg1
}

function setGasOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    FASTGASAddress = arg1
}

function getFastGas() payable {
    if stor6:
        return stor5
    require ext_code.size(FASTGASAddress)
    staticcall FASTGASAddress.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function quote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(UV2SOAddress)
    staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
            gas gas_remaining wei
           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, RLRAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function bonds(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(RLRAddress)
    staticcall RLRAddress.votes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(RLRAddress)
    staticcall RLRAddress.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), RLRAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function getQuoteLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6:
        if arg1 + 300000 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1 + 300000:
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0, RLRAddress
        else:
            if (300000 * stor5) + (arg1 * stor5) / arg1 + 300000 != stor5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, (300000 * stor5) + (arg1 * stor5), RLRAddress
    else:
        require ext_code.size(FASTGASAddress)
        staticcall FASTGASAddress.latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 + 300000 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1 + 300000:
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0, RLRAddress
        else:
            if (300000 * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) / arg1 + 300000 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, (300000 * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]), RLRAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(RLRAddress)
        staticcall RLRAddress.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(RLRAddress)
        staticcall RLRAddress.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, RLRAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not TARGETBOND:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] >= 0 / TARGETBOND:
            return ext_call.return_data[0]
        return (0 / TARGETBOND)
    if 11 * ext_call.return_data[0] / ext_call.return_data[0] != 11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(RLRAddress)
    staticcall RLRAddress.votes(address rg1) with:
            gas gas_remaining wei
           args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(RLRAddress)
    staticcall RLRAddress.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args tx.origin, RLRAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 11 * ext_call.return_data[0] / 10:
        if not TARGETBOND:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] >= 0 / TARGETBOND:
            return ext_call.return_data[0]
        return (0 / TARGETBOND)
    if 2 * ext_call.return_data[0] < TARGETBOND:
        if (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) + (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) / 11 * ext_call.return_data[0] / 10 != 2 * ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not TARGETBOND:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] >= (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) + (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) / TARGETBOND:
            return ext_call.return_data[0]
        return ((ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) + (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) / TARGETBOND)
    if TARGETBOND * 11 * ext_call.return_data[0] / 10 / 11 * ext_call.return_data[0] / 10 != TARGETBOND:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not TARGETBOND:
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] >= TARGETBOND * 11 * ext_call.return_data[0] / 10 / TARGETBOND:
        return ext_call.return_data[0]
    return (TARGETBOND * 11 * ext_call.return_data[0] / 10 / TARGETBOND)
}

function getQuoteLimitFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6:
        if arg2 + 300000 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2 + 300000:
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0, RLRAddress
        else:
            if (300000 * stor5) + (arg2 * stor5) / arg2 + 300000 != stor5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, (300000 * stor5) + (arg2 * stor5), RLRAddress
    else:
        require ext_code.size(FASTGASAddress)
        staticcall FASTGASAddress.latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + 300000 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2 + 300000:
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0, RLRAddress
        else:
            if (300000 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / arg2 + 300000 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(UV2SOAddress)
            staticcall UV2SOAddress.current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, (300000 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]), RLRAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(RLRAddress)
        staticcall RLRAddress.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(RLRAddress)
        staticcall RLRAddress.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), RLRAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not TARGETBOND:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] >= 0 / TARGETBOND:
            return ext_call.return_data[0]
        return (0 / TARGETBOND)
    if 11 * ext_call.return_data[0] / ext_call.return_data[0] != 11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(RLRAddress)
    staticcall RLRAddress.votes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(RLRAddress)
    staticcall RLRAddress.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), RLRAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 11 * ext_call.return_data[0] / 10:
        if not TARGETBOND:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] >= 0 / TARGETBOND:
            return ext_call.return_data[0]
        return (0 / TARGETBOND)
    if 2 * ext_call.return_data[0] < TARGETBOND:
        if (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) + (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) / 11 * ext_call.return_data[0] / 10 != 2 * ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not TARGETBOND:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] >= (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) + (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) / TARGETBOND:
            return ext_call.return_data[0]
        return ((ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) + (ext_call.return_data[0] * 11 * ext_call.return_data[0] / 10) / TARGETBOND)
    if TARGETBOND * 11 * ext_call.return_data[0] / 10 / 11 * ext_call.return_data[0] / 10 != TARGETBOND:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not TARGETBOND:
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] >= TARGETBOND * 11 * ext_call.return_data[0] / 10 / TARGETBOND:
        return ext_call.return_data[0]
    return (TARGETBOND * 11 * ext_call.return_data[0] / 10 / TARGETBOND)
}



}
