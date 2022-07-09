contract main {




// =====================  Runtime code  =====================


const getCurrentTime = block.timestamp

const contractBalancebnb = eth.balance(this.address)


address tokenAddress;
address BUSDAddress;
address sub_06131fafAddress;
address owner;
address airDropAddress;
uint256 sub_b2761471;
uint256 minAmount;
uint256 maxAmount;
uint256 preSaleStartTime;
uint256 preSaleEndTime;
uint256 soldToken;
uint256 amountRaised;
uint256 refPercent;
mapping of uint256 coinBalance;
mapping of struct referrerData;

function sub_06131faf(?) {
    return sub_06131fafAddress
}

function preSaleStartTime() {
    return preSaleStartTime
}

function BUSD() {
    return BUSDAddress
}

function refPercent() {
    return refPercent
}

function maxAmount() {
    return maxAmount
}

function soldToken() {
    return soldToken
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function minAmount() {
    return minAmount
}

function getReferrerData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrerData[address(arg1)].field_0, referrerData[address(arg1)].field_256
}

function sub_b2761471(?) {
    return sub_b2761471
}

function airDrop() {
    return airDropAddress
}

function preSaleEndTime() {
    return preSaleEndTime
}

function coinBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return coinBalance[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    owner = arg1
}

function changeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    tokenAddress = arg1
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    sub_b2761471 = arg1
}

function changeRefPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    refPercent = arg1
}

function sub_290f4f20(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    airDropAddress = address(arg1)
}

function setPreSaletLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    minAmount = arg1
    maxAmount = arg2
}

function setPreSaleTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    preSaleStartTime = arg1
    preSaleEndTime = arg2
}

function transferFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fc5addd6(?) {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args airDropAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getContractTokenApproval() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args owner, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'PRESALE: Not an owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLatestPricebnb() {
    require ext_code.size(sub_06131fafAddress)
    staticcall sub_06131fafAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_e2b7c320(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_06131fafAddress)
    staticcall sub_06131fafAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not arg1:
        return 0
    if arg1 and ext_call.return_data[32] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * ext_call.return_data[32] / arg1 != ext_call.return_data[32]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * ext_call.return_data[32] / 10^18)
}

function bnbToToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1]:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
            return 0
        else:
            return 0
    if arg1 and sub_b2761471 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * sub_b2761471 / arg1 != sub_b2761471:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if not arg1 * sub_b2761471:
            return 0
        if arg1 * sub_b2761471 and 1 > -1 / arg1 * sub_b2761471:
            revert with 'NH{q', 17
        if not arg1 * sub_b2761471:
            revert with 'NH{q', 18
        if arg1 * sub_b2761471 / arg1 * sub_b2761471 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * sub_b2761471 / 10^18)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if not arg1 * sub_b2761471:
            return 0
        if arg1 * sub_b2761471 and 10^ext_call.return_data[31 len 1] > -1 / arg1 * sub_b2761471:
            revert with 'NH{q', 17
        if not arg1 * sub_b2761471:
            revert with 'NH{q', 18
        if arg1 * sub_b2761471 * 10^ext_call.return_data[31 len 1] / arg1 * sub_b2761471 != 10^ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if not arg1 * sub_b2761471:
        return 0
    if arg1 * sub_b2761471 and t * s > -1 / arg1 * sub_b2761471:
        revert with 'NH{q', 17
    if not arg1 * sub_b2761471:
        revert with 'NH{q', 18
    if arg1 * sub_b2761471 * t * s / arg1 * sub_b2761471 != t * s:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * sub_b2761471 * t * s / 10^18)
}

function sub_73fa80c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_06131fafAddress)
    staticcall sub_06131fafAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not arg1:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1]:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
            return 0
        else:
            return 0
    if arg1 and ext_call.return_data[32] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * ext_call.return_data[32] / arg1 != ext_call.return_data[32]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1 * ext_call.return_data[32] / 10^18:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1]:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
            return 0
        else:
            return 0
    if arg1 * ext_call.return_data[32] / 10^18 and sub_b2761471 > -1 / arg1 * ext_call.return_data[32] / 10^18:
        revert with 'NH{q', 17
    if not arg1 * ext_call.return_data[32] / 10^18:
        revert with 'NH{q', 18
    if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 / arg1 * ext_call.return_data[32] / 10^18 != sub_b2761471:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if not arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
            return 0
        if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 and 1 > -1 / arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
            revert with 'NH{q', 17
        if not arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
            revert with 'NH{q', 18
        if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 / arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if not arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
            return 0
        if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 and 10^ext_call.return_data[31 len 1] > -1 / arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
            revert with 'NH{q', 17
        if not arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
            revert with 'NH{q', 18
        if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^ext_call.return_data[31 len 1] / arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 != 10^ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if not arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
        return 0
    if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 and t * s > -1 / arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
        revert with 'NH{q', 17
    if not arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471:
        revert with 'NH{q', 18
    if arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 != t * s:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18)
}

function sub_2870bf89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'PRESALE: invalid referrer'
    if address(arg1) == msg.sender:
        revert with 0, 'PRESALE: invalid referrer'
    if block.timestamp < preSaleStartTime:
        revert with 0, 'PRESALE: PreSale time not met'
    if block.timestamp >= preSaleEndTime:
        revert with 0, 'PRESALE: PreSale time not met'
    if msg.value < minAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PRESALE: Amount less than min amount'
    if coinBalance[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if coinBalance[address(msg.sender)] + msg.value > maxAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PRESALE: Amount exceeds max limit'
    if not msg.value:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1]:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if soldToken > -1:
            revert with 'NH{q', 17
        if soldToken < soldToken:
            revert with 0, 'SafeMath: addition overflow'
        if amountRaised > -msg.value - 1:
            revert with 'NH{q', 17
        if amountRaised + msg.value < amountRaised:
            revert with 0, 'SafeMath: addition overflow'
        amountRaised += msg.value
        if coinBalance[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        coinBalance[address(msg.sender)] += msg.value
        if referrerData[address(arg1)].field_0 == -1:
            revert with 'NH{q', 17
        referrerData[address(arg1)].field_0++
        if referrerData[address(arg1)].field_256 > -1:
            revert with 'NH{q', 17
        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args airDropAddress, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BuyToken(msg.sender, 0);
    else:
        if msg.value and sub_b2761471 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * sub_b2761471 / msg.value != sub_b2761471:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not msg.value * sub_b2761471:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if soldToken > -1:
                    revert with 'NH{q', 17
                if soldToken < soldToken:
                    revert with 0, 'SafeMath: addition overflow'
                if amountRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                if amountRaised + msg.value < amountRaised:
                    revert with 0, 'SafeMath: addition overflow'
                amountRaised += msg.value
                if coinBalance[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                coinBalance[address(msg.sender)] += msg.value
                if referrerData[address(arg1)].field_0 == -1:
                    revert with 'NH{q', 17
                referrerData[address(arg1)].field_0++
                if referrerData[address(arg1)].field_256 > -1:
                    revert with 'NH{q', 17
                if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args airDropAddress, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BuyToken(msg.sender, 0);
            else:
                if msg.value * sub_b2761471 and 1 > -1 / msg.value * sub_b2761471:
                    revert with 'NH{q', 17
                if not msg.value * sub_b2761471:
                    revert with 'NH{q', 18
                if msg.value * sub_b2761471 / msg.value * sub_b2761471 != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, msg.sender, msg.value * sub_b2761471 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if soldToken > -(msg.value * sub_b2761471 / 10^18) - 1:
                    revert with 'NH{q', 17
                if soldToken + (msg.value * sub_b2761471 / 10^18) < soldToken:
                    revert with 0, 'SafeMath: addition overflow'
                soldToken += msg.value * sub_b2761471 / 10^18
                if amountRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                if amountRaised + msg.value < amountRaised:
                    revert with 0, 'SafeMath: addition overflow'
                amountRaised += msg.value
                if coinBalance[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                coinBalance[address(msg.sender)] += msg.value
                if referrerData[address(arg1)].field_0 == -1:
                    revert with 'NH{q', 17
                referrerData[address(arg1)].field_0++
                if not msg.value * sub_b2761471 / 10^18:
                    if referrerData[address(arg1)].field_256 > -1:
                        revert with 'NH{q', 17
                    if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if msg.value * sub_b2761471 / 10^18 and refPercent > -1 / msg.value * sub_b2761471 / 10^18:
                        revert with 'NH{q', 17
                    if not msg.value * sub_b2761471 / 10^18:
                        revert with 'NH{q', 18
                    if msg.value * sub_b2761471 / 10^18 * refPercent / msg.value * sub_b2761471 / 10^18 != refPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if referrerData[address(arg1)].field_256 > -(msg.value * sub_b2761471 / 10^18 * refPercent / 100) - 1:
                        revert with 'NH{q', 17
                    if referrerData[address(arg1)].field_256 + (msg.value * sub_b2761471 / 10^18 * refPercent / 100) < referrerData[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    referrerData[address(arg1)].field_256 += msg.value * sub_b2761471 / 10^18 * refPercent / 100
                if not msg.value * sub_b2761471 / 10^18:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args airDropAddress, address(arg1), 0
                else:
                    if msg.value * sub_b2761471 / 10^18 and refPercent > -1 / msg.value * sub_b2761471 / 10^18:
                        revert with 'NH{q', 17
                    if not msg.value * sub_b2761471 / 10^18:
                        revert with 'NH{q', 18
                    if msg.value * sub_b2761471 / 10^18 * refPercent / msg.value * sub_b2761471 / 10^18 != refPercent:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args airDropAddress, address(arg1), msg.value * sub_b2761471 / 10^18 * refPercent / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BuyToken(msg.sender, msg.value * sub_b2761471 / 10^18);
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if not msg.value * sub_b2761471:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if soldToken > -1:
                        revert with 'NH{q', 17
                    if soldToken < soldToken:
                        revert with 0, 'SafeMath: addition overflow'
                    if amountRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    if amountRaised + msg.value < amountRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    amountRaised += msg.value
                    if coinBalance[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    coinBalance[address(msg.sender)] += msg.value
                    if referrerData[address(arg1)].field_0 == -1:
                        revert with 'NH{q', 17
                    referrerData[address(arg1)].field_0++
                    if referrerData[address(arg1)].field_256 > -1:
                        revert with 'NH{q', 17
                    if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args airDropAddress, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BuyToken(msg.sender, 0);
                else:
                    if msg.value * sub_b2761471 and 10^ext_call.return_data[31 len 1] > -1 / msg.value * sub_b2761471:
                        revert with 'NH{q', 17
                    if not msg.value * sub_b2761471:
                        revert with 'NH{q', 18
                    if msg.value * sub_b2761471 * 10^ext_call.return_data[31 len 1] / msg.value * sub_b2761471 != 10^ext_call.return_data[31 len 1]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if soldToken > -(msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if soldToken + (msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18) < soldToken:
                        revert with 0, 'SafeMath: addition overflow'
                    soldToken += msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18
                    if amountRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    if amountRaised + msg.value < amountRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    amountRaised += msg.value
                    if coinBalance[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    coinBalance[address(msg.sender)] += msg.value
                    if referrerData[address(arg1)].field_0 == -1:
                        revert with 'NH{q', 17
                    referrerData[address(arg1)].field_0++
                    if not msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                        if referrerData[address(arg1)].field_256 > -1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 and refPercent > -1 / msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                            revert with 'NH{q', 17
                        if not msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                            revert with 'NH{q', 18
                        if msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 != refPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if referrerData[address(arg1)].field_256 > -(msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100) - 1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 + (msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100) < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        referrerData[address(arg1)].field_256 += msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100
                    if not msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), 0
                    else:
                        if msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 and refPercent > -1 / msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                            revert with 'NH{q', 17
                        if not msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                            revert with 'NH{q', 18
                        if msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 != refPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BuyToken(msg.sender, msg.value * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18);
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if not msg.value * sub_b2761471:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if soldToken > -1:
                        revert with 'NH{q', 17
                    if soldToken < soldToken:
                        revert with 0, 'SafeMath: addition overflow'
                    if amountRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    if amountRaised + msg.value < amountRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    amountRaised += msg.value
                    if coinBalance[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    coinBalance[address(msg.sender)] += msg.value
                    if referrerData[address(arg1)].field_0 == -1:
                        revert with 'NH{q', 17
                    referrerData[address(arg1)].field_0++
                    if referrerData[address(arg1)].field_256 > -1:
                        revert with 'NH{q', 17
                    if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args airDropAddress, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BuyToken(msg.sender, 0);
                else:
                    if msg.value * sub_b2761471 and t * s > -1 / msg.value * sub_b2761471:
                        revert with 'NH{q', 17
                    if not msg.value * sub_b2761471:
                        revert with 'NH{q', 18
                    if msg.value * sub_b2761471 * t * s / msg.value * sub_b2761471 != t * s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, msg.value * sub_b2761471 * t * s / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if soldToken > -(msg.value * sub_b2761471 * t * s / 10^18) - 1:
                        revert with 'NH{q', 17
                    if soldToken + (msg.value * sub_b2761471 * t * s / 10^18) < soldToken:
                        revert with 0, 'SafeMath: addition overflow'
                    soldToken += msg.value * sub_b2761471 * t * s / 10^18
                    if amountRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    if amountRaised + msg.value < amountRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    amountRaised += msg.value
                    if coinBalance[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    if coinBalance[address(msg.sender)] + msg.value < coinBalance[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    coinBalance[address(msg.sender)] += msg.value
                    if referrerData[address(arg1)].field_0 == -1:
                        revert with 'NH{q', 17
                    referrerData[address(arg1)].field_0++
                    if not msg.value * sub_b2761471 * t * s / 10^18:
                        if referrerData[address(arg1)].field_256 > -1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if msg.value * sub_b2761471 * t * s / 10^18 and refPercent > -1 / msg.value * sub_b2761471 * t * s / 10^18:
                            revert with 'NH{q', 17
                        if not msg.value * sub_b2761471 * t * s / 10^18:
                            revert with 'NH{q', 18
                        if msg.value * sub_b2761471 * t * s / 10^18 * refPercent / msg.value * sub_b2761471 * t * s / 10^18 != refPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if referrerData[address(arg1)].field_256 > -(msg.value * sub_b2761471 * t * s / 10^18 * refPercent / 100) - 1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 + (msg.value * sub_b2761471 * t * s / 10^18 * refPercent / 100) < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        referrerData[address(arg1)].field_256 += msg.value * sub_b2761471 * t * s / 10^18 * refPercent / 100
                    if not msg.value * sub_b2761471 * t * s / 10^18:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), 0
                    else:
                        if msg.value * sub_b2761471 * t * s / 10^18 and refPercent > -1 / msg.value * sub_b2761471 * t * s / 10^18:
                            revert with 'NH{q', 17
                        if not msg.value * sub_b2761471 * t * s / 10^18:
                            revert with 'NH{q', 18
                        if msg.value * sub_b2761471 * t * s / 10^18 * refPercent / msg.value * sub_b2761471 * t * s / 10^18 != refPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), msg.value * sub_b2761471 * t * s / 10^18 * refPercent / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BuyToken(msg.sender, msg.value * sub_b2761471 * t * s / 10^18);
}

function sub_c3ee96b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0, 'PRESALE: invalid referrer'
    if address(arg1) == msg.sender:
        revert with 0, 'PRESALE: invalid referrer'
    if block.timestamp < preSaleStartTime:
        revert with 0, 'PRESALE: PreSale time not met'
    if block.timestamp >= preSaleEndTime:
        revert with 0, 'PRESALE: PreSale time not met'
    require ext_code.size(sub_06131fafAddress)
    staticcall sub_06131fafAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not arg2:
        if 0 < minAmount:
            revert with 0, 'PRESALE: Amount less than min amount'
        if coinBalance[address(msg.sender)] > -1:
            revert with 'NH{q', 17
        if coinBalance[address(msg.sender)] < coinBalance[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if coinBalance[address(msg.sender)] > maxAmount:
            revert with 0, 'PRESALE: Amount exceeds max limit'
        require ext_code.size(BUSDAddress)
        call BUSDAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1]:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if soldToken > -1:
            revert with 'NH{q', 17
        if soldToken < soldToken:
            revert with 0, 'SafeMath: addition overflow'
        if amountRaised > -1:
            revert with 'NH{q', 17
        if amountRaised < amountRaised:
            revert with 0, 'SafeMath: addition overflow'
        if coinBalance[address(msg.sender)] > -1:
            revert with 'NH{q', 17
        if coinBalance[address(msg.sender)] < coinBalance[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if referrerData[address(arg1)].field_0 == -1:
            revert with 'NH{q', 17
        referrerData[address(arg1)].field_0++
        if referrerData[address(arg1)].field_256 > -1:
            revert with 'NH{q', 17
        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args airDropAddress, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BuyToken(msg.sender, 0);
    else:
        if arg2 and ext_call.return_data[32] > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * ext_call.return_data[32] / arg2 != ext_call.return_data[32]:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 * ext_call.return_data[32] / 10^18 < minAmount:
            revert with 0, 'PRESALE: Amount less than min amount'
        if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
            revert with 'NH{q', 17
        if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) > maxAmount:
            revert with 0, 'PRESALE: Amount exceeds max limit'
        require ext_code.size(BUSDAddress)
        call BUSDAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2 * ext_call.return_data[32] / 10^18:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1]:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args owner, msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if soldToken > -1:
                revert with 'NH{q', 17
            if soldToken < soldToken:
                revert with 0, 'SafeMath: addition overflow'
            if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                revert with 'NH{q', 17
            if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                revert with 0, 'SafeMath: addition overflow'
            amountRaised += arg2 * ext_call.return_data[32] / 10^18
            if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                revert with 'NH{q', 17
            if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
            if referrerData[address(arg1)].field_0 == -1:
                revert with 'NH{q', 17
            referrerData[address(arg1)].field_0++
            if referrerData[address(arg1)].field_256 > -1:
                revert with 'NH{q', 17
            if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args airDropAddress, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BuyToken(msg.sender, 0);
        else:
            if arg2 * ext_call.return_data[32] / 10^18 and sub_b2761471 > -1 / arg2 * ext_call.return_data[32] / 10^18:
                revert with 'NH{q', 17
            if not arg2 * ext_call.return_data[32] / 10^18:
                revert with 'NH{q', 18
            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / arg2 * ext_call.return_data[32] / 10^18 != sub_b2761471:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if soldToken > -1:
                        revert with 'NH{q', 17
                    if soldToken < soldToken:
                        revert with 0, 'SafeMath: addition overflow'
                    if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                        revert with 'NH{q', 17
                    if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    amountRaised += arg2 * ext_call.return_data[32] / 10^18
                    if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                        revert with 'NH{q', 17
                    if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
                    if referrerData[address(arg1)].field_0 == -1:
                        revert with 'NH{q', 17
                    referrerData[address(arg1)].field_0++
                    if referrerData[address(arg1)].field_256 > -1:
                        revert with 'NH{q', 17
                    if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args airDropAddress, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BuyToken(msg.sender, 0);
                else:
                    if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 and 1 > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                        revert with 'NH{q', 17
                    if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                        revert with 'NH{q', 18
                    if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if soldToken > -(arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if soldToken + (arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18) < soldToken:
                        revert with 0, 'SafeMath: addition overflow'
                    soldToken += arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18
                    if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                        revert with 'NH{q', 17
                    if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    amountRaised += arg2 * ext_call.return_data[32] / 10^18
                    if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                        revert with 'NH{q', 17
                    if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
                    if referrerData[address(arg1)].field_0 == -1:
                        revert with 'NH{q', 17
                    referrerData[address(arg1)].field_0++
                    if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18:
                        if referrerData[address(arg1)].field_256 > -1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 and refPercent > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18:
                            revert with 'NH{q', 17
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18:
                            revert with 'NH{q', 18
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 * refPercent / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 != refPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if referrerData[address(arg1)].field_256 > -(arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 * refPercent / 100) - 1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 + (arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 * refPercent / 100) < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        referrerData[address(arg1)].field_256 += arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 * refPercent / 100
                    if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), 0
                    else:
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 and refPercent > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18:
                            revert with 'NH{q', 17
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18:
                            revert with 'NH{q', 18
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 * refPercent / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 != refPercent:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18 * refPercent / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BuyToken(msg.sender, arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 / 10^18);
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if soldToken > -1:
                            revert with 'NH{q', 17
                        if soldToken < soldToken:
                            revert with 0, 'SafeMath: addition overflow'
                        if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                            revert with 0, 'SafeMath: addition overflow'
                        amountRaised += arg2 * ext_call.return_data[32] / 10^18
                        if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
                        if referrerData[address(arg1)].field_0 == -1:
                            revert with 'NH{q', 17
                        referrerData[address(arg1)].field_0++
                        if referrerData[address(arg1)].field_256 > -1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit BuyToken(msg.sender, 0);
                    else:
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 and 10^ext_call.return_data[31 len 1] > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                            revert with 'NH{q', 17
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                            revert with 'NH{q', 18
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^ext_call.return_data[31 len 1] / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 != 10^ext_call.return_data[31 len 1]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if soldToken > -(arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18) - 1:
                            revert with 'NH{q', 17
                        if soldToken + (arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18) < soldToken:
                            revert with 0, 'SafeMath: addition overflow'
                        soldToken += arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18
                        if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                            revert with 0, 'SafeMath: addition overflow'
                        amountRaised += arg2 * ext_call.return_data[32] / 10^18
                        if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
                        if referrerData[address(arg1)].field_0 == -1:
                            revert with 'NH{q', 17
                        referrerData[address(arg1)].field_0++
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                            if referrerData[address(arg1)].field_256 > -1:
                                revert with 'NH{q', 17
                            if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 and refPercent > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                                revert with 'NH{q', 17
                            if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                                revert with 'NH{q', 18
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 != refPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if referrerData[address(arg1)].field_256 > -(arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100) - 1:
                                revert with 'NH{q', 17
                            if referrerData[address(arg1)].field_256 + (arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100) < referrerData[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            referrerData[address(arg1)].field_256 += arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args airDropAddress, address(arg1), 0
                        else:
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 and refPercent > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                                revert with 'NH{q', 17
                            if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18:
                                revert with 'NH{q', 18
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 != refPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args airDropAddress, address(arg1), arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18 * refPercent / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit BuyToken(msg.sender, arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * 10^uint8(ext_call.return_data[0]) / 10^18);
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if soldToken > -1:
                            revert with 'NH{q', 17
                        if soldToken < soldToken:
                            revert with 0, 'SafeMath: addition overflow'
                        if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                            revert with 0, 'SafeMath: addition overflow'
                        amountRaised += arg2 * ext_call.return_data[32] / 10^18
                        if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
                        if referrerData[address(arg1)].field_0 == -1:
                            revert with 'NH{q', 17
                        referrerData[address(arg1)].field_0++
                        if referrerData[address(arg1)].field_256 > -1:
                            revert with 'NH{q', 17
                        if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args airDropAddress, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit BuyToken(msg.sender, 0);
                    else:
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 and t * s > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                            revert with 'NH{q', 17
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471:
                            revert with 'NH{q', 18
                        if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 != t * s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, msg.sender, arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if soldToken > -(arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18) - 1:
                            revert with 'NH{q', 17
                        if soldToken + (arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18) < soldToken:
                            revert with 0, 'SafeMath: addition overflow'
                        soldToken += arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18
                        if amountRaised > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if amountRaised + (arg2 * ext_call.return_data[32] / 10^18) < amountRaised:
                            revert with 0, 'SafeMath: addition overflow'
                        amountRaised += arg2 * ext_call.return_data[32] / 10^18
                        if coinBalance[address(msg.sender)] > -(arg2 * ext_call.return_data[32] / 10^18) - 1:
                            revert with 'NH{q', 17
                        if coinBalance[address(msg.sender)] + (arg2 * ext_call.return_data[32] / 10^18) < coinBalance[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        coinBalance[address(msg.sender)] += arg2 * ext_call.return_data[32] / 10^18
                        if referrerData[address(arg1)].field_0 == -1:
                            revert with 'NH{q', 17
                        referrerData[address(arg1)].field_0++
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18:
                            if referrerData[address(arg1)].field_256 > -1:
                                revert with 'NH{q', 17
                            if referrerData[address(arg1)].field_256 < referrerData[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 and refPercent > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18:
                                revert with 'NH{q', 17
                            if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18:
                                revert with 'NH{q', 18
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 * refPercent / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 != refPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if referrerData[address(arg1)].field_256 > -(arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 * refPercent / 100) - 1:
                                revert with 'NH{q', 17
                            if referrerData[address(arg1)].field_256 + (arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 * refPercent / 100) < referrerData[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            referrerData[address(arg1)].field_256 += arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 * refPercent / 100
                        if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args airDropAddress, address(arg1), 0
                        else:
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 and refPercent > -1 / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18:
                                revert with 'NH{q', 17
                            if not arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18:
                                revert with 'NH{q', 18
                            if arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 * refPercent / arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 != refPercent:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args airDropAddress, address(arg1), arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18 * refPercent / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit BuyToken(msg.sender, arg2 * ext_call.return_data[32] / 10^18 * sub_b2761471 * t * s / 10^18);
}



}
