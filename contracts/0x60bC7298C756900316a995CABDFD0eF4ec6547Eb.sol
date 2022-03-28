contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address alpaAddress;
array of struct stor3;
mapping of uint256 stor4;
mapping of struct consumerInfo;
uint256 totalAllocPoint;
uint256 alpaPerBlock;
address devAddr;
address communityAddr;

function communityAddr() payable {
    return communityAddr
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function consumerInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return consumerInfo[arg1].field_0, consumerInfo[arg1].field_256, consumerInfo[arg1].field_512
}

function alpa() payable {
    return alpaAddress
}

function isApprovedConsumer(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function owner() payable {
    return owner
}

function devAddr() payable {
    return devAddr
}

function alpaPerBlock() payable {
    return alpaPerBlock
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

function setDevAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'sAlpaSupplier: unauthorized'
    devAddr = arg1
}

function setAlpaPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    alpaPerBlock = arg1
}

function setCommunityAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if communityAddr != msg.sender:
        revert with 0, 'sAlpaSupplier: unauthorized'
    communityAddr = arg1
}

function setAlpaOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(alpaAddress)
    call alpaAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8f252167(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(msg.sender)]:
        revert with 0, 'sAlpaSupplier: unauthorized'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(alpaAddress)
    call alpaAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return arg1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor4[address(msg.sender)]:
        revert with 0, 'sAlpaSupplier: unauthorized'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(alpaAddress)
    call alpaAddress.0x9dc29fac with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
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

function add(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg2)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg2
        stor3[stor3.length].field_160 = 0
        stor4[address(arg2)] = stor3.length
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    consumerInfo[address(arg2)].field_0 = arg2
    consumerInfo[address(arg2)].field_256 = arg1
    consumerInfo[address(arg2)].field_512 = arg3
}

function set(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x416c7061537570706c6965723a20636f6e73756d65722069736e277420617070726f766500,
                    mem[201 len 27]
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    if consumerInfo[address(arg1)].field_256 > arg2 + totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint = arg2 + totalAllocPoint - consumerInfo[address(arg1)].field_256
    consumerInfo[address(arg1)].field_256 = arg2
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x416c7061537570706c6965723a20636f6e73756d65722069736e277420617070726f766500,
                    mem[201 len 27]
    if stor4[address(arg1)]:
        require stor3.length - 1 < stor3.length
        require stor4[address(arg1)] - 1 < stor3.length
        stor3[stor4[address(arg1)]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[address(arg1)] = 0
    if consumerInfo[address(arg1)].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= consumerInfo[address(arg1)].field_256
    consumerInfo[address(arg1)].field_0 = 0
    consumerInfo[address(arg1)].field_256 = 0
    consumerInfo[address(arg1)].field_512 = 0
}

function preview(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x416c7061537570706c6965723a20636f6e73756d65722069736e277420617070726f766500,
                    mem[201 len 27]
    if consumerInfo[address(arg1)].field_512 >= arg2:
        if consumerInfo[address(arg1)].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - consumerInfo[address(arg1)].field_512:
            return 0
        if (block.number * alpaPerBlock) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock) / block.number - consumerInfo[address(arg1)].field_512 != alpaPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * alpaPerBlock) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                return 0
            if 8 * 0 / totalAllocPoint / 0 / totalAllocPoint != 8:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (8 * 0 / totalAllocPoint / 10)
        if (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / (block.number * alpaPerBlock) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock) != consumerInfo[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint:
            return 0
        if 8 * (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint != 8:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (8 * (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / 10)
    if arg2 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - arg2:
        return 0
    if (block.number * alpaPerBlock) - (arg2 * alpaPerBlock) / block.number - arg2 != alpaPerBlock:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * alpaPerBlock) - (arg2 * alpaPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            return 0
        if 8 * 0 / totalAllocPoint / 0 / totalAllocPoint != 8:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (8 * 0 / totalAllocPoint / 10)
    if (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / (block.number * alpaPerBlock) - (arg2 * alpaPerBlock) != consumerInfo[address(arg1)].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint:
        return 0
    if 8 * (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint != 8:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (8 * (block.number * alpaPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * alpaPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / 10)
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(msg.sender)]:
        revert with 0, 'sAlpaSupplier: unauthorized'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if consumerInfo[address(msg.sender)].field_512 >= arg1:
        if consumerInfo[address(msg.sender)].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - consumerInfo[address(msg.sender)].field_512:
            stor1 = 1
            return 0
        consumerInfo[address(msg.sender)].field_512 = block.number
        if (block.number * alpaPerBlock) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock) / block.number - consumerInfo[address(msg.sender)].field_512 != alpaPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * alpaPerBlock) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(alpaAddress)
            call alpaAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(alpaAddress)
            call alpaAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args communityAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / totalAllocPoint / 10 > 0 / totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / totalAllocPoint / 10 > (0 / totalAllocPoint) - (0 / totalAllocPoint / 10):
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(alpaAddress)
            call alpaAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, (0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return ((0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 10))
        if (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / (block.number * alpaPerBlock) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock) != consumerInfo[address(msg.sender)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(alpaAddress)
        call alpaAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddr, (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(alpaAddress)
        call alpaAddress.0x40c10f19 with:
             gas gas_remaining wei
            args communityAddr, (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10 > (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10 > ((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - ((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(alpaAddress)
        call alpaAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return (((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10))
    if arg1 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - arg1:
        stor1 = 1
        return 0
    consumerInfo[address(msg.sender)].field_512 = block.number
    if (block.number * alpaPerBlock) - (arg1 * alpaPerBlock) / block.number - arg1 != alpaPerBlock:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * alpaPerBlock) - (arg1 * alpaPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(alpaAddress)
        call alpaAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddr, 0 / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(alpaAddress)
        call alpaAddress.0x40c10f19 with:
             gas gas_remaining wei
            args communityAddr, 0 / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 / totalAllocPoint / 10 > 0 / totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / totalAllocPoint / 10 > (0 / totalAllocPoint) - (0 / totalAllocPoint / 10):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(alpaAddress)
        call alpaAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return ((0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 10))
    if (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / (block.number * alpaPerBlock) - (arg1 * alpaPerBlock) != consumerInfo[address(msg.sender)].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(alpaAddress)
    call alpaAddress.0x40c10f19 with:
         gas gas_remaining wei
        args devAddr, (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(alpaAddress)
    call alpaAddress.0x40c10f19 with:
         gas gas_remaining wei
        args communityAddr, (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10 > (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10 > ((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - ((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(alpaAddress)
    call alpaAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, ((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return (((block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * alpaPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10))
}



}
