contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address owner;
uint256 sub_2134ef58;
uint8 sub_43b9d9c3;
uint256 stor6;
uint256 vestingTime;
uint256 initialDate;
uint256 sub_cdf5a2fd;
uint256 sub_dfba4bc0;
uint256 sub_6965ada5;
uint256 sub_35c20642;
uint256 investment;
address clientAddress;
mapping of uint256 paidOut;
mapping of uint256 sub_fc319208;
uint256 stor17;
uint256 stor18;
address stor19;

function client() {
    return clientAddress
}

function sub_2134ef58(?) {
    return sub_2134ef58
}

function rate() {
    return rate
}

function sub_35c20642(?) {
    return sub_35c20642
}

function weiRaised() {
    return weiRaised
}

function sub_43b9d9c3(?) {
    return bool(uint8(sub_43b9d9c3))
}

function investment() {
    return investment
}

function wallet() {
    return walletAddress
}

function sub_6965ada5(?) {
    return sub_6965ada5
}

function paidOut(address arg1) {
    require calldata.size - 4 >= 32
    return paidOut[arg1]
}

function owner() {
    return owner
}

function initialDate() {
    return initialDate
}

function vestingTime() {
    return vestingTime
}

function sub_cdf5a2fd(?) {
    return sub_cdf5a2fd
}

function sub_dfba4bc0(?) {
    return sub_dfba4bc0
}

function token() {
    return tokenAddress
}

function sub_fc319208(?) {
    require calldata.size - 4 >= 32
    return sub_fc319208[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rate = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function vestingPeriod() {
    if block.timestamp >= sub_35c20642:
        return sub_35c20642
    if block.timestamp >= sub_6965ada5:
        return sub_6965ada5
    if block.timestamp >= sub_dfba4bc0:
        return sub_dfba4bc0
    if block.timestamp < sub_cdf5a2fd:
        return 0
    return sub_cdf5a2fd
}

function sub_99c70de0(?) {
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function TokenBalance() {
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_183966fe(?) {
    if not paidOut[address(msg.sender)]:
        return 0
    require paidOut[address(msg.sender)]
    if paidOut[address(msg.sender)] * rate / paidOut[address(msg.sender)] != rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (paidOut[address(msg.sender)] * rate)
}

function sub_d50c847f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    call stor19.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x4f9340e9: ext_call.return_data[0], block.timestamp
}

function sub_c9511636(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(sub_43b9d9c3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x734c61207265636c616d6163696f6e20646520546f707320657374c3a120686162696c69746164,
                    mem[203 len 25]
    clientAddress = arg1
    investment = arg2
    paidOut[address(arg1)] = arg2
    if not paidOut[address(arg1)]:
        sub_2134ef58 = 0
    else:
        require paidOut[address(arg1)]
        if paidOut[address(arg1)] * rate / paidOut[address(arg1)] != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_2134ef58 = paidOut[address(arg1)] * rate
    sub_fc319208[address(arg1)] = 4
}

function activateClaim() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor6) = not bool(uint8(sub_43b9d9c3)) or Mask(248, 8, uint256(stor6))
    initialDate = block.timestamp
    sub_cdf5a2fd = initialDate
    if initialDate + vestingTime < initialDate:
        revert with 0, 'SafeMath: addition overflow'
    sub_dfba4bc0 = initialDate + vestingTime
    if not vestingTime:
        if initialDate < initialDate:
            revert with 0, 'SafeMath: addition overflow'
        sub_6965ada5 = initialDate
    else:
        require vestingTime
        if 2 * vestingTime / vestingTime != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if initialDate + (2 * vestingTime) < initialDate:
            revert with 0, 'SafeMath: addition overflow'
        sub_6965ada5 = initialDate + (2 * vestingTime)
    if not vestingTime:
        if initialDate < initialDate:
            revert with 0, 'SafeMath: addition overflow'
        sub_35c20642 = initialDate
    else:
        require vestingTime
        if 3 * vestingTime / vestingTime != 3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if initialDate + (3 * vestingTime) < initialDate:
            revert with 0, 'SafeMath: addition overflow'
        sub_35c20642 = initialDate + (3 * vestingTime)
}

function claimToken() {
    if clientAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6545737461206375656e7461206e6f207469656e65207065726d6974696461206c61207265636c616d6163696f,
                    mem[209 len 19]
    if not uint8(sub_43b9d9c3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734c61207265636c616d6163696f6e20646520546f7073206e6f206573746120686162696c697461646120746f64617669,
                    mem[213 len 15]
    if not sub_fc319208[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x6e5573746564206e6f207469656e65206e6164612072657365727661646f206f207961206861207265636c616d61646f20746f646f732073757320746f6b656e
    if block.timestamp >= sub_35c20642:
        if not sub_35c20642:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0xfe456c2076657374696e67206e6f2065737461206162696572746f2e20436f6d70727565626520656c207469656d70,
                        mem[211 len 17]
        if sub_35c20642 == sub_cdf5a2fd:
            if sub_fc319208[address(msg.sender)] != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                            mem[211 len 17]
            if not paidOut[address(msg.sender)]:
                stor17 = 0
            else:
                require paidOut[address(msg.sender)]
                if 25 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 25:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                stor17 = 25 * paidOut[address(msg.sender)] / 100
            if not stor17:
                stor18 = 0
            else:
                require stor17
                if stor17 * rate / stor17 != rate:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                stor18 = stor17 * rate
            if stor17 > paidOut[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            paidOut[address(msg.sender)] -= stor17
            if 1 > sub_fc319208[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_fc319208[address(msg.sender)]--
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor18 > sub_2134ef58:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_2134ef58 -= stor18
        else:
            if sub_35c20642 == sub_dfba4bc0:
                if sub_fc319208[address(msg.sender)] == 3:
                    if not paidOut[address(msg.sender)]:
                        stor17 = 0
                    else:
                        require paidOut[address(msg.sender)]
                        if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        stor17 = 33 * paidOut[address(msg.sender)] / 100
                else:
                    if sub_fc319208[address(msg.sender)] != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                    mem[211 len 17]
                    if not paidOut[address(msg.sender)]:
                        stor17 = 0
                    else:
                        require paidOut[address(msg.sender)]
                        if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        stor17 = 50 * paidOut[address(msg.sender)] / 100
                if not stor17:
                    stor18 = 0
                else:
                    require stor17
                    if stor17 * rate / stor17 != rate:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    stor18 = stor17 * rate
                if stor17 > paidOut[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                paidOut[address(msg.sender)] -= stor17
                if 1 > sub_fc319208[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_fc319208[address(msg.sender)]--
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor18 > sub_2134ef58:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_2134ef58 -= stor18
            else:
                if sub_35c20642 != sub_6965ada5:
                    if sub_35c20642 != sub_35c20642:
                        revert with 0, 'Ya ha reclamado todos sus tokens'
                    if not sub_fc319208[address(msg.sender)]:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > sub_2134ef58:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        stor17 = paidOut[address(msg.sender)]
                        if not stor17:
                            stor18 = 0
                        else:
                            require stor17
                            if stor17 * rate / stor17 != rate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            stor18 = stor17 * rate
                        if stor17 > paidOut[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        paidOut[address(msg.sender)] -= stor17
                        sub_fc319208[address(msg.sender)] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor18 > sub_2134ef58:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_2134ef58 -= stor18
                else:
                    if sub_fc319208[address(msg.sender)] == 2:
                        if not paidOut[address(msg.sender)]:
                            stor17 = 0
                        else:
                            require paidOut[address(msg.sender)]
                            if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            stor17 = 50 * paidOut[address(msg.sender)] / 100
                    else:
                        if sub_fc319208[address(msg.sender)] == 3:
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 33 * paidOut[address(msg.sender)] / 100
                        else:
                            if sub_fc319208[address(msg.sender)] != 4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            47,
                                            0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                            mem[211 len 17]
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 75 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 75:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 75 * paidOut[address(msg.sender)] / 100
                    if not stor17:
                        stor18 = 0
                    else:
                        require stor17
                        if stor17 * rate / stor17 != rate:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        stor18 = stor17 * rate
                    if stor17 > paidOut[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    paidOut[address(msg.sender)] -= stor17
                    if 1 > sub_fc319208[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_fc319208[address(msg.sender)]--
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor18 > sub_2134ef58:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_2134ef58 -= stor18
    else:
        if block.timestamp >= sub_6965ada5:
            if not sub_6965ada5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0xfe456c2076657374696e67206e6f2065737461206162696572746f2e20436f6d70727565626520656c207469656d70,
                            mem[211 len 17]
            if sub_6965ada5 == sub_cdf5a2fd:
                if sub_fc319208[address(msg.sender)] != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                mem[211 len 17]
                if not paidOut[address(msg.sender)]:
                    stor17 = 0
                else:
                    require paidOut[address(msg.sender)]
                    if 25 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 25:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    stor17 = 25 * paidOut[address(msg.sender)] / 100
                if not stor17:
                    stor18 = 0
                else:
                    require stor17
                    if stor17 * rate / stor17 != rate:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    stor18 = stor17 * rate
                if stor17 > paidOut[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                paidOut[address(msg.sender)] -= stor17
                if 1 > sub_fc319208[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_fc319208[address(msg.sender)]--
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor18 > sub_2134ef58:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_2134ef58 -= stor18
            else:
                if sub_6965ada5 == sub_dfba4bc0:
                    if sub_fc319208[address(msg.sender)] == 3:
                        if not paidOut[address(msg.sender)]:
                            stor17 = 0
                        else:
                            require paidOut[address(msg.sender)]
                            if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            stor17 = 33 * paidOut[address(msg.sender)] / 100
                    else:
                        if sub_fc319208[address(msg.sender)] != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        47,
                                        0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                        mem[211 len 17]
                        if not paidOut[address(msg.sender)]:
                            stor17 = 0
                        else:
                            require paidOut[address(msg.sender)]
                            if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            stor17 = 50 * paidOut[address(msg.sender)] / 100
                    if not stor17:
                        stor18 = 0
                    else:
                        require stor17
                        if stor17 * rate / stor17 != rate:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        stor18 = stor17 * rate
                    if stor17 > paidOut[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    paidOut[address(msg.sender)] -= stor17
                    if 1 > sub_fc319208[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_fc319208[address(msg.sender)]--
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor18 > sub_2134ef58:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_2134ef58 -= stor18
                else:
                    if sub_6965ada5 != sub_6965ada5:
                        if sub_6965ada5 != sub_35c20642:
                            revert with 0, 'Ya ha reclamado todos sus tokens'
                        if not sub_fc319208[address(msg.sender)]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > sub_2134ef58:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            stor17 = paidOut[address(msg.sender)]
                            if not stor17:
                                stor18 = 0
                            else:
                                require stor17
                                if stor17 * rate / stor17 != rate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor18 = stor17 * rate
                            if stor17 > paidOut[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            paidOut[address(msg.sender)] -= stor17
                            sub_fc319208[address(msg.sender)] = 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor18 > sub_2134ef58:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_2134ef58 -= stor18
                    else:
                        if sub_fc319208[address(msg.sender)] == 2:
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 50 * paidOut[address(msg.sender)] / 100
                        else:
                            if sub_fc319208[address(msg.sender)] == 3:
                                if not paidOut[address(msg.sender)]:
                                    stor17 = 0
                                else:
                                    require paidOut[address(msg.sender)]
                                    if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    stor17 = 33 * paidOut[address(msg.sender)] / 100
                            else:
                                if sub_fc319208[address(msg.sender)] != 4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                47,
                                                0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                                mem[211 len 17]
                                if not paidOut[address(msg.sender)]:
                                    stor17 = 0
                                else:
                                    require paidOut[address(msg.sender)]
                                    if 75 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 75:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    stor17 = 75 * paidOut[address(msg.sender)] / 100
                        if not stor17:
                            stor18 = 0
                        else:
                            require stor17
                            if stor17 * rate / stor17 != rate:
                                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            stor18 = stor17 * rate
                        if stor17 > paidOut[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        paidOut[address(msg.sender)] -= stor17
                        if 1 > sub_fc319208[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_fc319208[address(msg.sender)]--
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor18 > sub_2134ef58:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_2134ef58 -= stor18
        else:
            if block.timestamp >= sub_dfba4bc0:
                if not sub_dfba4bc0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0xfe456c2076657374696e67206e6f2065737461206162696572746f2e20436f6d70727565626520656c207469656d70,
                                mem[211 len 17]
                if sub_dfba4bc0 == sub_cdf5a2fd:
                    if sub_fc319208[address(msg.sender)] != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                    mem[211 len 17]
                    if not paidOut[address(msg.sender)]:
                        stor17 = 0
                    else:
                        require paidOut[address(msg.sender)]
                        if 25 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 25:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        stor17 = 25 * paidOut[address(msg.sender)] / 100
                    if not stor17:
                        stor18 = 0
                    else:
                        require stor17
                        if stor17 * rate / stor17 != rate:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        stor18 = stor17 * rate
                    if stor17 > paidOut[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    paidOut[address(msg.sender)] -= stor17
                    if 1 > sub_fc319208[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_fc319208[address(msg.sender)]--
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor18 > sub_2134ef58:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_2134ef58 -= stor18
                else:
                    if sub_dfba4bc0 == sub_dfba4bc0:
                        if sub_fc319208[address(msg.sender)] == 3:
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 33 * paidOut[address(msg.sender)] / 100
                        else:
                            if sub_fc319208[address(msg.sender)] != 4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            47,
                                            0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                            mem[211 len 17]
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 50 * paidOut[address(msg.sender)] / 100
                        if not stor17:
                            stor18 = 0
                        else:
                            require stor17
                            if stor17 * rate / stor17 != rate:
                                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            stor18 = stor17 * rate
                        if stor17 > paidOut[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        paidOut[address(msg.sender)] -= stor17
                        if 1 > sub_fc319208[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_fc319208[address(msg.sender)]--
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor18 > sub_2134ef58:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_2134ef58 -= stor18
                    else:
                        if sub_dfba4bc0 != sub_6965ada5:
                            if sub_dfba4bc0 != sub_35c20642:
                                revert with 0, 'Ya ha reclamado todos sus tokens'
                            if not sub_fc319208[address(msg.sender)]:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > sub_2134ef58:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                stor17 = paidOut[address(msg.sender)]
                                if not stor17:
                                    stor18 = 0
                                else:
                                    require stor17
                                    if stor17 * rate / stor17 != rate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    stor18 = stor17 * rate
                                if stor17 > paidOut[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                paidOut[address(msg.sender)] -= stor17
                                sub_fc319208[address(msg.sender)] = 0
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, stor18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if stor18 > sub_2134ef58:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_2134ef58 -= stor18
                        else:
                            if sub_fc319208[address(msg.sender)] == 2:
                                if not paidOut[address(msg.sender)]:
                                    stor17 = 0
                                else:
                                    require paidOut[address(msg.sender)]
                                    if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    stor17 = 50 * paidOut[address(msg.sender)] / 100
                            else:
                                if sub_fc319208[address(msg.sender)] == 3:
                                    if not paidOut[address(msg.sender)]:
                                        stor17 = 0
                                    else:
                                        require paidOut[address(msg.sender)]
                                        if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        stor17 = 33 * paidOut[address(msg.sender)] / 100
                                else:
                                    if sub_fc319208[address(msg.sender)] != 4:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    47,
                                                    0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                                    mem[211 len 17]
                                    if not paidOut[address(msg.sender)]:
                                        stor17 = 0
                                    else:
                                        require paidOut[address(msg.sender)]
                                        if 75 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 75:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        stor17 = 75 * paidOut[address(msg.sender)] / 100
                            if not stor17:
                                stor18 = 0
                            else:
                                require stor17
                                if stor17 * rate / stor17 != rate:
                                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                stor18 = stor17 * rate
                            if stor17 > paidOut[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            paidOut[address(msg.sender)] -= stor17
                            if 1 > sub_fc319208[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_fc319208[address(msg.sender)]--
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor18 > sub_2134ef58:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_2134ef58 -= stor18
            else:
                if block.timestamp < sub_cdf5a2fd:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0xfe456c2076657374696e67206e6f2065737461206162696572746f2e20436f6d70727565626520656c207469656d70,
                                mem[211 len 17]
                if not sub_cdf5a2fd:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0xfe456c2076657374696e67206e6f2065737461206162696572746f2e20436f6d70727565626520656c207469656d70,
                                mem[211 len 17]
                if sub_cdf5a2fd == sub_cdf5a2fd:
                    if sub_fc319208[address(msg.sender)] != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                    mem[211 len 17]
                    if not paidOut[address(msg.sender)]:
                        stor17 = 0
                    else:
                        require paidOut[address(msg.sender)]
                        if 25 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 25:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        stor17 = 25 * paidOut[address(msg.sender)] / 100
                    if not stor17:
                        stor18 = 0
                    else:
                        require stor17
                        if stor17 * rate / stor17 != rate:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        stor18 = stor17 * rate
                    if stor17 > paidOut[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    paidOut[address(msg.sender)] -= stor17
                    if 1 > sub_fc319208[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_fc319208[address(msg.sender)]--
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor18 > sub_2134ef58:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_2134ef58 -= stor18
                else:
                    if sub_cdf5a2fd == sub_dfba4bc0:
                        if sub_fc319208[address(msg.sender)] == 3:
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 33 * paidOut[address(msg.sender)] / 100
                        else:
                            if sub_fc319208[address(msg.sender)] != 4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            47,
                                            0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                            mem[211 len 17]
                            if not paidOut[address(msg.sender)]:
                                stor17 = 0
                            else:
                                require paidOut[address(msg.sender)]
                                if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                stor17 = 50 * paidOut[address(msg.sender)] / 100
                        if not stor17:
                            stor18 = 0
                        else:
                            require stor17
                            if stor17 * rate / stor17 != rate:
                                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            stor18 = stor17 * rate
                        if stor17 > paidOut[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        paidOut[address(msg.sender)] -= stor17
                        if 1 > sub_fc319208[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_fc319208[address(msg.sender)]--
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor18 > sub_2134ef58:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_2134ef58 -= stor18
                    else:
                        if sub_cdf5a2fd != sub_6965ada5:
                            if sub_cdf5a2fd != sub_35c20642:
                                revert with 0, 'Ya ha reclamado todos sus tokens'
                            if not sub_fc319208[address(msg.sender)]:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > sub_2134ef58:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                stor17 = paidOut[address(msg.sender)]
                                if not stor17:
                                    stor18 = 0
                                else:
                                    require stor17
                                    if stor17 * rate / stor17 != rate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    stor18 = stor17 * rate
                                if stor17 > paidOut[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                paidOut[address(msg.sender)] -= stor17
                                sub_fc319208[address(msg.sender)] = 0
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, stor18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if stor18 > sub_2134ef58:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_2134ef58 -= stor18
                        else:
                            if sub_fc319208[address(msg.sender)] == 2:
                                if not paidOut[address(msg.sender)]:
                                    stor17 = 0
                                else:
                                    require paidOut[address(msg.sender)]
                                    if 50 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 50:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    stor17 = 50 * paidOut[address(msg.sender)] / 100
                            else:
                                if sub_fc319208[address(msg.sender)] == 3:
                                    if not paidOut[address(msg.sender)]:
                                        stor17 = 0
                                    else:
                                        require paidOut[address(msg.sender)]
                                        if 33 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 33:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        stor17 = 33 * paidOut[address(msg.sender)] / 100
                                else:
                                    if sub_fc319208[address(msg.sender)] != 4:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    47,
                                                    0x775961206861207265636c616d61646f2073752056657374696e672e2045737065726520616c207369677569656e74,
                                                    mem[211 len 17]
                                    if not paidOut[address(msg.sender)]:
                                        stor17 = 0
                                    else:
                                        require paidOut[address(msg.sender)]
                                        if 75 * paidOut[address(msg.sender)] / paidOut[address(msg.sender)] != 75:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        stor17 = 75 * paidOut[address(msg.sender)] / 100
                            if not stor17:
                                stor18 = 0
                            else:
                                require stor17
                                if stor17 * rate / stor17 != rate:
                                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                stor18 = stor17 * rate
                            if stor17 > paidOut[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            paidOut[address(msg.sender)] -= stor17
                            if 1 > sub_fc319208[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_fc319208[address(msg.sender)]--
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor18 > sub_2134ef58:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_2134ef58 -= stor18
}



}
