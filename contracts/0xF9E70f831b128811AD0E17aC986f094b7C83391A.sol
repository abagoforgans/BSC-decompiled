contract main {




// =====================  Runtime code  =====================


const sub_470176c9(?) = 10^18

const sub_4e6fd6c4(?) = 57005

const sub_50abc065(?) = 10

const sub_b8f6a04a(?) = 18


uint256 stor0;
uint256 tokensSold;
address tokenSellingAddress;
uint256 maxLots;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
uint32 stor8;
address walletAddress;
mapping of uint256 rate;
mapping of uint256 weiRaisedFor;
uint256 tokenCap;
uint256 openingTime;
uint256 closingTime;
address whitelistContractAddress;
mapping of uint256 tokensPurchasedBy;
uint8 paused;
address sub_27144c05Address; offset 8
address sub_c86b42e4Address;

function rate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero payment token address'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: payment token unaccepted'
    return rate[address(arg1)]
}

function sub_27144c05(?) payable {
    return sub_27144c05Address
}

function weiRaisedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero payment token address'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: payment token unaccepted'
    return weiRaisedFor[address(arg1)]
}

function getTokensPurchasedBy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[223 len 5]
    return tokensPurchasedBy[address(arg1)]
}

function closingTime() payable {
    return closingTime
}

function tokensSold() payable {
    return tokensSold
}

function wallet() payable {
    return address(walletAddress)
}

function paused() payable {
    return bool(paused)
}

function whitelistContract() payable {
    return whitelistContractAddress
}

function maxLots() payable {
    return maxLots
}

function isPaymentToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero payment token address'
    return bool(stor7[address(arg1)])
}

function openingTime() payable {
    return openingTime
}

function tokenSelling() payable {
    return tokenSellingAddress
}

function sub_c86b42e4(?) payable {
    return sub_c86b42e4Address
}

function tokenCap() payable {
    return tokenCap
}

function _fallback() payable {
    revert
}

function hasClosed() payable {
    return (block.timestamp > closingTime)
}

function tokenCapReached(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenCap <= arg1
}

function isOpen() payable {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function getRemainingTokens() payable {
    if tokensSold > tokenCap:
        revert with 0, 'SafeMath: subtraction overflow'
    return (tokenCap - tokensSold)
}

function pause() payable {
    if sub_c86b42e4Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LaunchpadCrowdsale: sender unauthorized'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if sub_c86b42e4Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LaunchpadCrowdsale: sender unauthorized'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setCrowdsaleAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_27144c05Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LaunchpadCrowdsale: sender unauthorized'
    if not arg1:
        revert with 0, 'LaunchpadCrowdsale: zero account'
    sub_c86b42e4Address = arg1
}

function setGovernanceAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_27144c05Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LaunchpadCrowdsale: sender unauthorized'
    if not arg1:
        revert with 0, 'LaunchpadCrowdsale: zero account'
    sub_27144c05Address = arg1
}

function lotSize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero beneficiary address'
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function extendTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_c86b42e4Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LaunchpadCrowdsale: sender unauthorized'
    if block.timestamp > closingTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimedCrowdsaleHelper: already closed'
    if arg1 <= closingTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimedCrowdsaleHelper: before current closing time'
    closingTime = arg1
    emit TimedCrowdsaleExtended(closingTime, arg1);
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f206163636f756e,
                    mem[211 len 17]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getBeneficiaryCap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[223 len 5]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTokenAmount(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 <= 0:
        revert with 0, 'Crowdsale: zero lots'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero beneficiary address'
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * arg1)
}

function paymentTokens() payable {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = (32 * stor5.length) + 192
        t = 128
        while idx < stor5.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor5.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function getWeiAmount(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero payment token address'
    if arg2 <= 0:
        revert with 0, 'Crowdsale: zero lots'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero beneficiary address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: zero payment token address'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: payment token unaccepted'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[223 len 5]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        return 0
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * arg2:
        return 0
    if rate[address(arg1)] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != rate[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18)
}

function getAvailableLotsFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f206163636f756e,
                    mem[211 len 17]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[223 len 5]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[223 len 5]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    return (ext_call.return_data[0] - tokensPurchasedBy[address(arg1)] / ext_call.return_data[0])
}

function buyTokensFor(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0, 'Crowdsale: zero beneficiary address'
    if not arg2:
        revert with 0, 'Crowdsale: zero payment token address'
    if arg3 <= 0:
        revert with 0, 'Crowdsale: zero lots'
    if not arg2:
        revert with 0, 'Crowdsale: zero payment token address'
    if not stor7[address(arg2)]:
        revert with 0, 'Crowdsale: payment token unaccepted'
    if not arg1:
        revert with 0, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[255 len 5]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if not arg1:
            revert with 0, 
                        32,
                        59,
                        0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                        mem[255 len 5]
        require ext_code.size(whitelistContractAddress)
        staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if paused:
                revert with 0, 'Pausable: paused'
            if block.timestamp < openingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if block.timestamp > closingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            if tokensSold > tokenCap:
                revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            58,
                            0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                            mem[254 len 6]
            if not arg1:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            if tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
                revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
            if weiRaisedFor[address(arg2)] < weiRaisedFor[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            if tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            emit 0xe198196b: arg3, 0, 0, 128, 0, msg.sender, arg1, arg2
            if 18 <= stor6[address(arg2)]:
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                mem[448 len 4] = 0
                call arg2 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args 0, mem[420 len 4]
            else:
                if stor6[address(arg2)] > 18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^(-stor6[address(arg2)] + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^(-stor6[address(arg2)] + 18)
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) >> 32
                mem[448 len 4] = 0
                call arg2 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) << 480, mem[420 len 4]
        else:
            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
            if not ext_call.return_data[0] * arg3:
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if weiRaisedFor[address(arg2)] < weiRaisedFor[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0xe198196b: arg3, 0, 0, 128, 0, msg.sender, arg1, arg2
                if 18 <= stor6[address(arg2)]:
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                else:
                    if stor6[address(arg2)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg2)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg2)] + 18)
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) << 480, mem[420 len 4]
            else:
                if rate[address(arg2)] * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * arg3 != rate[address(arg2)]:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if (rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18) + weiRaisedFor[address(arg2)] < weiRaisedFor[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaisedFor[address(arg2)] += rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0xe198196b: arg3, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18, 0, 128, 0, msg.sender, arg1, arg2
                if 18 <= stor6[address(arg2)]:
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18) >> 32
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18) << 480, mem[420 len 4]
                else:
                    if stor6[address(arg2)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg2)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg2)] + 18)
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18 / 10^(-stor6[address(arg2)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18 / 10^(-stor6[address(arg2)] + 18)) << 480, mem[420 len 4]
    else:
        if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
        if not arg1:
            revert with 0, 
                        32,
                        59,
                        0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                        mem[255 len 5]
        require ext_code.size(whitelistContractAddress)
        staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if paused:
                revert with 0, 'Pausable: paused'
            if block.timestamp < openingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if block.timestamp > closingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if (ext_call.return_data[0] * arg3) + tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * arg3) + tokensSold > tokenCap:
                revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            58,
                            0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                            mem[254 len 6]
            if not arg1:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
                revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
            if weiRaisedFor[address(arg2)] < weiRaisedFor[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * arg3) + tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            tokensSold += ext_call.return_data[0] * arg3
            if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            tokensPurchasedBy[address(arg1)] += ext_call.return_data[0] * arg3
            emit 0xe198196b: arg3, 0, ext_call.return_data[0] * arg3, 128, 0, msg.sender, arg1, arg2
            if 18 <= stor6[address(arg2)]:
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                mem[448 len 4] = 0
                call arg2 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args 0, mem[420 len 4]
            else:
                if stor6[address(arg2)] > 18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^(-stor6[address(arg2)] + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^(-stor6[address(arg2)] + 18)
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) >> 32
                mem[448 len 4] = 0
                call arg2 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) << 480, mem[420 len 4]
        else:
            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
            if not ext_call.return_data[0] * arg3:
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if (ext_call.return_data[0] * arg3) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg3) + tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if weiRaisedFor[address(arg2)] < weiRaisedFor[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg3) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                tokensSold += ext_call.return_data[0] * arg3
                if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                tokensPurchasedBy[address(arg1)] += ext_call.return_data[0] * arg3
                emit 0xe198196b: arg3, 0, ext_call.return_data[0] * arg3, 128, 0, msg.sender, arg1, arg2
                if 18 <= stor6[address(arg2)]:
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                else:
                    if stor6[address(arg2)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg2)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg2)] + 18)
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 10^(-stor6[address(arg2)] + 18)) << 480, mem[420 len 4]
            else:
                if rate[address(arg2)] * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * arg3 != rate[address(arg2)]:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if (ext_call.return_data[0] * arg3) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg3) + tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if (rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18) + weiRaisedFor[address(arg2)] < weiRaisedFor[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaisedFor[address(arg2)] += rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18
                if (ext_call.return_data[0] * arg3) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                tokensSold += ext_call.return_data[0] * arg3
                if (ext_call.return_data[0] * arg3) + tokensPurchasedBy[address(arg1)] < tokensPurchasedBy[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                tokensPurchasedBy[address(arg1)] += ext_call.return_data[0] * arg3
                emit 0xe198196b: arg3, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18, ext_call.return_data[0] * arg3, 128, 0, msg.sender, arg1, arg2
                if 18 <= stor6[address(arg2)]:
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18) >> 32
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18) << 480, mem[420 len 4]
                else:
                    if stor6[address(arg2)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg2)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg2)] + 18)
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18 / 10^(-stor6[address(arg2)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg2 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg2)] * ext_call.return_data[0] * arg3 / 10^18 / 10^(-stor6[address(arg2)] + 18)) << 480, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    stor0 = 1
}

function buyTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not msg.sender:
        revert with 0, 'Crowdsale: zero beneficiary address'
    if not arg1:
        revert with 0, 'Crowdsale: zero payment token address'
    if arg2 <= 0:
        revert with 0, 'Crowdsale: zero lots'
    if not arg1:
        revert with 0, 'Crowdsale: zero payment token address'
    if not stor7[address(arg1)]:
        revert with 0, 'Crowdsale: payment token unaccepted'
    if not msg.sender:
        revert with 0, 
                    32,
                    59,
                    0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                    mem[255 len 5]
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not msg.sender:
            revert with 0, 
                        32,
                        59,
                        0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                        mem[255 len 5]
        require ext_code.size(whitelistContractAddress)
        staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if paused:
                revert with 0, 'Pausable: paused'
            if block.timestamp < openingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if block.timestamp > closingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            if tokensSold > tokenCap:
                revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            58,
                            0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                            mem[254 len 6]
            if not msg.sender:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not msg.sender:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            if tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if tokensPurchasedBy[address(msg.sender)] > ext_call.return_data[0]:
                revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
            if weiRaisedFor[address(arg1)] < weiRaisedFor[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            if tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit 0xe198196b: arg2, 0, 0, 128, 0, msg.sender, msg.sender, arg1
            if 18 <= stor6[address(arg1)]:
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                mem[448 len 4] = 0
                call arg1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args 0, mem[420 len 4]
            else:
                if stor6[address(arg1)] > 18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^(-stor6[address(arg1)] + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^(-stor6[address(arg1)] + 18)
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) >> 32
                mem[448 len 4] = 0
                call arg1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) << 480, mem[420 len 4]
        else:
            if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
            if not ext_call.return_data[0] * arg2:
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(msg.sender)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if weiRaisedFor[address(arg1)] < weiRaisedFor[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0xe198196b: arg2, 0, 0, 128, 0, msg.sender, msg.sender, arg1
                if 18 <= stor6[address(arg1)]:
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                else:
                    if stor6[address(arg1)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg1)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg1)] + 18)
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) << 480, mem[420 len 4]
            else:
                if rate[address(arg1)] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != rate[address(arg1)]:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(msg.sender)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if (rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18) + weiRaisedFor[address(arg1)] < weiRaisedFor[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaisedFor[address(arg1)] += rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18
                if tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0xe198196b: arg2, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18, 0, 128, 0, msg.sender, msg.sender, arg1
                if 18 <= stor6[address(arg1)]:
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18) >> 32
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18) << 480, mem[420 len 4]
                else:
                    if stor6[address(arg1)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg1)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg1)] + 18)
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18 / 10^(-stor6[address(arg1)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18 / 10^(-stor6[address(arg1)] + 18)) << 480, mem[420 len 4]
    else:
        if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
        if not msg.sender:
            revert with 0, 
                        32,
                        59,
                        0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                        mem[255 len 5]
        require ext_code.size(whitelistContractAddress)
        staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if paused:
                revert with 0, 'Pausable: paused'
            if block.timestamp < openingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if block.timestamp > closingTime:
                revert with 0, 'TimedCrowdsaleHelper: not open'
            if (ext_call.return_data[0] * arg2) + tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * arg2) + tokensSold > tokenCap:
                revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            58,
                            0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                            mem[254 len 6]
            if not msg.sender:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            require ext_code.size(whitelistContractAddress)
            staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not msg.sender:
                revert with 0, 
                            32,
                            59,
                            0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                            mem[255 len 5]
            if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] > ext_call.return_data[0]:
                revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
            if weiRaisedFor[address(arg1)] < weiRaisedFor[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * arg2) + tokensSold < tokensSold:
                revert with 0, 'SafeMath: addition overflow'
            tokensSold += ext_call.return_data[0] * arg2
            if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            tokensPurchasedBy[address(msg.sender)] += ext_call.return_data[0] * arg2
            emit 0xe198196b: arg2, 0, ext_call.return_data[0] * arg2, 128, 0, msg.sender, msg.sender, arg1
            if 18 <= stor6[address(arg1)]:
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                mem[448 len 4] = 0
                call arg1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args 0, mem[420 len 4]
            else:
                if stor6[address(arg1)] > 18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^(-stor6[address(arg1)] + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^(-stor6[address(arg1)] + 18)
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) >> 32
                mem[448 len 4] = 0
                call arg1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) << 480, mem[420 len 4]
        else:
            if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
            if not ext_call.return_data[0] * arg2:
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if (ext_call.return_data[0] * arg2) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg2) + tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if weiRaisedFor[address(arg1)] < weiRaisedFor[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg2) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                tokensSold += ext_call.return_data[0] * arg2
                if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                tokensPurchasedBy[address(msg.sender)] += ext_call.return_data[0] * arg2
                emit 0xe198196b: arg2, 0, ext_call.return_data[0] * arg2, 128, 0, msg.sender, msg.sender, arg1
                if 18 <= stor6[address(arg1)]:
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), 0
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                else:
                    if stor6[address(arg1)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg1)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg1)] + 18)
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 10^(-stor6[address(arg1)] + 18)) << 480, mem[420 len 4]
            else:
                if rate[address(arg1)] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != rate[address(arg1)]:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
                if paused:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsaleHelper: not open'
                if (ext_call.return_data[0] * arg2) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg2) + tokensSold > tokenCap:
                    revert with 0, 32, 35, 0x64436170706564546f6b656e536f6c6448656c7065723a206361702065786365656465, mem[231 len 29]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                58,
                                0xfe4c61756e636870616457686974656c69737443726f776473616c6548656c7065723a206163636f756e74206e6f742077686974656c69737465,
                                mem[254 len 6]
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                require ext_code.size(whitelistContractAddress)
                staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 
                                32,
                                59,
                                0x774c61756e636870616457686974656c69737443726f776473616c6548656c7065723a207a65726f2062656e656669636961727920616464726573,
                                mem[255 len 5]
                if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] > ext_call.return_data[0]:
                    revert with 0, 'LaunchpadCrowdsale: beneficiary cap exceeded'
                if (rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18) + weiRaisedFor[address(arg1)] < weiRaisedFor[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaisedFor[address(arg1)] += rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18
                if (ext_call.return_data[0] * arg2) + tokensSold < tokensSold:
                    revert with 0, 'SafeMath: addition overflow'
                tokensSold += ext_call.return_data[0] * arg2
                if (ext_call.return_data[0] * arg2) + tokensPurchasedBy[address(msg.sender)] < tokensPurchasedBy[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                tokensPurchasedBy[address(msg.sender)] += ext_call.return_data[0] * arg2
                emit 0xe198196b: arg2, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18, ext_call.return_data[0] * arg2, 128, 0, msg.sender, msg.sender, arg1
                if 18 <= stor6[address(arg1)]:
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18) >> 32
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18) << 480, mem[420 len 4]
                else:
                    if stor6[address(arg1)] > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 10^(-stor6[address(arg1)] + 18) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 10^(-stor6[address(arg1)] + 18)
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(walletAddress), Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18 / 10^(-stor6[address(arg1)] + 18)) >> 32
                    mem[448 len 4] = 0
                    call arg1 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate[address(arg1)] * ext_call.return_data[0] * arg2 / 10^18 / 10^(-stor6[address(arg1)] + 18)) << 480, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    stor0 = 1
}



}
