contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1)
#
uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint32 stor5;
address tokenWalletAddress;
uint256 stor5;
uint256 openingTime;
uint256 closingTime;
uint256 cap;
uint256 investorMinCap;
uint256 investorHardCap;
uint256 sub_543b6cd7;
mapping of uint256 contributions;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[arg1]
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_543b6cd7(?) {
    return sub_543b6cd7
}

function investorMinCap() {
    return investorMinCap
}

function openingTime() {
    return openingTime
}

function tokenWallet() {
    return address(tokenWalletAddress)
}

function investorHardCap() {
    return investorHardCap
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(tokenWalletAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(tokenWalletAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if not msg.sender:
            revert with 0, 'Crowdsale: beneficiary is the zero address'
        if not msg.value:
            revert with 0, 'Crowdsale: weiAmount is 0'
        if weiRaised > !msg.value:
            revert with 0, 17
        if weiRaised + msg.value > cap:
            revert with 0, 'CappedCrowdsale: cap exceeded'
        if msg.value and rate > -1 / msg.value:
            revert with 0, 17
        if weiRaised > !msg.value:
            revert with 0, 17
        weiRaised += msg.value
        mem[164] = address(tokenWalletAddress)
        mem[196] = msg.sender
        mem[228] = msg.value * rate / 10 * 10^6
        mem[128] = 100
        mem[164 len 28] = Mask(224, 0, stor5)
        mem[160 len 4] = unknown_0x23b872dd(?????)
        mem[260] = 32
        mem[292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, msg.value * rate / 10 * 10^6, 0
        mem[424] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, msg.value * rate / 10 * 10^6, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, msg.value * rate / 10 * 10^6, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            require not mem[96]
        else:
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[356] == bool(mem[356])
                if not mem[356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit TokensPurchased(msg.value, msg.value * rate / 10 * 10^6, msg.sender, msg.sender);
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if contributions[address(msg.sender)] > !msg.value:
            revert with 0, 17
        if contributions[address(msg.sender)] + msg.value < investorMinCap:
            revert with 0, 'Crowdsale: Under Minimum Cap!'
        if contributions[address(msg.sender)] + msg.value > investorHardCap:
            revert with 0, 'Crowdsale: Over Maximun Cap!'
        contributions[address(msg.sender)] += msg.value
    else:
        if unknown_0x521eb273(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x42e94c90(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1515bc2b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (block.timestamp > closingTime)
                if unknown_0x2c4e722e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rate
                if unknown_0x355274ea(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return cap
                require unknown_0x4042b66f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return weiRaised
            if unknown_0x42e94c90(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return contributions[arg1]
            if unknown_0x47535d7b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if block.timestamp < openingTime:
                    return block.timestamp >= openingTime
                return block.timestamp <= closingTime
            if unknown_0x4b6753bc(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return closingTime
            require unknown_0x4f935945(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return weiRaised >= cap
        if unknown_0xbf583903(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x521eb273(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return walletAddress
            if unknown_0x543b6cd7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_543b6cd7
            if unknown_0xb25d7f54(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return investorMinCap
            require unknown_0xb7a8807c(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return openingTime
        if unknown_0xbf583903(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(tokenWalletAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(tokenWalletAddress), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if unknown_0xbff99c6c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return address(tokenWalletAddress)
        if uint32(call.func_hash) >> 224 != unknown_0xec8ac4d8(?????):
            if unknown_0xed5db874(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return investorHardCap
            require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return tokenAddress
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if not address(arg1):
            revert with 0, 'Crowdsale: beneficiary is the zero address'
        if not msg.value:
            revert with 0, 'Crowdsale: weiAmount is 0'
        if weiRaised > !msg.value:
            revert with 0, 17
        if weiRaised + msg.value > cap:
            revert with 0, 'CappedCrowdsale: cap exceeded'
        if msg.value and rate > -1 / msg.value:
            revert with 0, 17
        if weiRaised > !msg.value:
            revert with 0, 17
        weiRaised += msg.value
        mem[164] = address(tokenWalletAddress)
        mem[196] = address(arg1)
        mem[228] = msg.value * rate / 10 * 10^6
        mem[128] = 100
        mem[164 len 28] = Mask(224, 0, stor5)
        mem[160 len 4] = unknown_0x23b872dd(?????)
        mem[260] = 32
        mem[292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), address(arg1), msg.value * rate / 10 * 10^6, 0
        mem[424] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), address(arg1), msg.value * rate / 10 * 10^6, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), address(arg1), msg.value * rate / 10 * 10^6, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            require not mem[96]
        else:
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[356] == bool(mem[356])
                if not mem[356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit TokensPurchased(msg.value, msg.value * rate / 10 * 10^6, msg.sender, address(arg1));
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if contributions[address(arg1)] > !msg.value:
            revert with 0, 17
        if contributions[address(arg1)] + msg.value < investorMinCap:
            revert with 0, 'Crowdsale: Under Minimum Cap!'
        if contributions[address(arg1)] + msg.value > investorHardCap:
            revert with 0, 'Crowdsale: Over Maximun Cap!'
        contributions[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
