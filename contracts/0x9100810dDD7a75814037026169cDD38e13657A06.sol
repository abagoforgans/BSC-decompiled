contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
uint8 stor1;
uint8 stor1; offset 8
address adminAddress; offset 16
uint256 stor1; offset 8
address lpTokenAddress;
address offeringTokenAddress;
uint256 startBlock;
uint256 endBlock;
uint256 raisingAmount;
uint256 offeringAmount;
uint256 totalAmount;
mapping of struct userInfo;
array of address addressList;

function endBlock() payable {
    return endBlock
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256)
}

function totalAmount() payable {
    return totalAmount
}

function startBlock() payable {
    return startBlock
}

function lpToken() payable {
    return lpTokenAddress
}

function hasHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(userInfo[address(arg1)].field_256)
}

function raisingAmount() payable {
    return raisingAmount
}

function offeringToken() payable {
    return offeringTokenAddress
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return address(addressList[arg1])
}

function offeringAmount() payable {
    return offeringAmount
}

function getAddressListLength() payable {
    return addressList.length
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setRaisingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if block.number >= startBlock:
        revert with 0, 'no'
    raisingAmount = arg1
}

function setOfferingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if block.number >= startBlock:
        revert with 0, 'no'
    offeringAmount = arg1
}

function getUserAllocation(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userInfo[address(arg1)].field_0:
        if not totalAmount:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalAmount / 10^6)
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmount:
        revert with 0, 'SafeMath: division by zero'
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6)
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if uint8(stor1.field_8):
        lpTokenAddress = arg1
        offeringTokenAddress = arg2
        startBlock = arg3
        endBlock = arg4
        offeringAmount = arg5
        raisingAmount = arg6
        totalAmount = 0
        adminAddress = arg7
    else:
        if ext_code.size(this.address):
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor1.field_8):
            lpTokenAddress = arg1
            offeringTokenAddress = arg2
            startBlock = arg3
            endBlock = arg4
            offeringAmount = arg5
            raisingAmount = arg6
            totalAmount = 0
            adminAddress = arg7
        else:
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
            lpTokenAddress = arg1
            offeringTokenAddress = arg2
            startBlock = arg3
            endBlock = arg4
            offeringAmount = arg5
            raisingAmount = arg6
            totalAmount = 0
            adminAddress = arg7
            uint8(stor1.field_8) = 0
}

function getRefundingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if totalAmount <= raisingAmount:
        return 0
    if not userInfo[address(arg1)].field_0:
        if not totalAmount:
            revert with 0, 'SafeMath: division by zero'
        if not raisingAmount:
            if 0 > userInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            return userInfo[address(arg1)].field_0
        if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (userInfo[address(arg1)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmount:
        revert with 0, 'SafeMath: division by zero'
    if not raisingAmount:
        if 0 > userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return userInfo[address(arg1)].field_0
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
}

function getOfferingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if totalAmount <= raisingAmount:
        if not userInfo[address(arg1)].field_0:
            if not raisingAmount:
                revert with 0, 'SafeMath: division by zero'
            return (0 / raisingAmount)
        if offeringAmount * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != offeringAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not raisingAmount:
            revert with 0, 'SafeMath: division by zero'
        return (offeringAmount * userInfo[address(arg1)].field_0 / raisingAmount)
    if not userInfo[address(arg1)].field_0:
        if not totalAmount:
            revert with 0, 'SafeMath: division by zero'
        if not offeringAmount:
            return 0
        if 0 / totalAmount / 10^6 * offeringAmount / offeringAmount != 0 / totalAmount / 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (0 / totalAmount / 10^6 * offeringAmount / 10^6)
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmount:
        revert with 0, 'SafeMath: division by zero'
    if not offeringAmount:
        return 0
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * offeringAmount / offeringAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= startBlock:
        revert with 0, 'not ifo time'
    if block.number >= endBlock:
        revert with 0, 'not ifo time'
    if arg1 <= 0:
        revert with 0, 'need _amount > 0'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call lpTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if not userInfo[msg.sender].field_0:
        addressList.length++
        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[msg.sender].field_0 += arg1
    if arg1 + totalAmount < totalAmount:
        revert with 0, 'SafeMath: addition overflow'
    totalAmount += arg1
    emit Deposit(arg1, msg.sender);
}

function finalWithdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'not enough token 0'
    require ext_code.size(offeringTokenAddress)
    staticcall offeringTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'not enough token 1'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call lpTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, arg1
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, msg.sender, Mask(224, 32, arg2) >> 32
        call offeringTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg2, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, arg1
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg2) >> 32
        call offeringTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg2, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, arg1
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeBEP20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
