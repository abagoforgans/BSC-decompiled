contract main {




// =====================  Runtime code  =====================


const FACTORY = 0xbcfccbde45ce874adcb698cc183debcf17952812

const INF = 33136721748

const UNIROUTER = 0x5ff2b0db69458a0750badebc4f9e13add608c7f


uint256 rewardValue;
mapping of uint256 timePooled;
mapping of uint256 stor2;
mapping of uint256 viewLPTokenAmount;
mapping of uint256 stor4;
uint32 stor6;
address sub_adb5f6beAddress;
uint8 unchangeable; offset 160
uint8 stor7; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address wETHAddress;
uint256 startsAt;

function WETHAddress() {
    return wETHAddress
}

function rewardValue() {
    return rewardValue
}

function timePooled(address arg1) {
    require calldata.size - 4 >= 32
    return timePooled[arg1]
}

function unchangeable() {
    return bool(unchangeable)
}

function sub_adb5f6be(?) {
    return address(sub_adb5f6beAddress)
}

function startsAt() {
    return startsAt
}

function viewLPTokenAmount(address arg1) {
    require calldata.size - 4 >= 32
    return viewLPTokenAmount[address(arg1)]
}

function _fallback() payable {
    revert
}

function lpToken() {
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function makeUnchangeable() {
    require ext_code.size(0x37683486d6d2d221c4aad853f78361526c16cac1)
    staticcall 0x37683486d6d2d221c4aad853f78361526c16cac1.0xc6dbdf61 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not primary'
    Mask(96, 0, stor7.field_160) = 1
}

function setStartAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x37683486d6d2d221c4aad853f78361526c16cac1)
    staticcall 0x37683486d6d2d221c4aad853f78361526c16cac1.0xc6dbdf61 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not primary'
    startsAt = arg1
}

function earnCalc(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not rewardValue:
        return 0
    require rewardValue
    if rewardValue * arg1 / rewardValue != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardValue * arg1 / 2435 * 10^15 * 3600 * 24 * 3600)
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x37683486d6d2d221c4aad853f78361526c16cac1)
    staticcall 0x37683486d6d2d221c4aad853f78361526c16cac1.0xc6dbdf61 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not primary'
    if uint8(stor7.field_168):
        revert with 0, 'Function was already called'
    Mask(88, 0, stor7.field_168) = 1
    address(sub_adb5f6beAddress) = arg1
}

function updateRewardValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x37683486d6d2d221c4aad853f78361526c16cac1)
    staticcall 0x37683486d6d2d221c4aad853f78361526c16cac1.0xc6dbdf61 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not primary'
    if unchangeable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x746d616b65556e6368616e676561626c6528292066756e6374696f6e2077617320616c72656164792063616c6c65,
                    mem[210 len 18]
    rewardValue = arg1
}

function price() {
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wETHAddress)
    staticcall wETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_adb5f6beAddress))
    staticcall address(sub_adb5f6beAddress).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function viewPooledEthAmount(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wETHAddress)
    staticcall wETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0] != viewLPTokenAmount[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0])
    revert
}

function viewPooledTokenAmount(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_adb5f6beAddress))
    staticcall address(sub_adb5f6beAddress).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0] != viewLPTokenAmount[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0])
    revert
}

function withdrawLPTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timePooled[address(msg.sender)] + (48 * 24 * 3600) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x77497420686173206e6f74206265656e203220646179732073696e636520796f75207374616b6564207965,
                    mem[207 len 21]
    if stor2[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wETHAddress)
    staticcall wETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require 0 / ext_call.return_data[0]
            if (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0])
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != viewLPTokenAmount[address(msg.sender)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]:
            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]
            if (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) / ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0])
    if arg1 > viewLPTokenAmount[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    viewLPTokenAmount[address(msg.sender)] -= arg1
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2[address(msg.sender)] = block.timestamp
}

function withdrawRewardTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timePooled[address(msg.sender)] + (48 * 24 * 3600) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x77497420686173206e6f74206265656e203220646179732073696e636520796f75207374616b6564207965,
                    mem[207 len 21]
    if stor2[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wETHAddress)
    staticcall wETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require 0 / ext_call.return_data[0]
            if (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0])
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != viewLPTokenAmount[address(msg.sender)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]:
            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]
            if (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) / ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0])
    stor2[address(msg.sender)] = block.timestamp
    if not arg1:
        if rewardValue <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardValue
        if 0 / rewardValue / 2 > stor4[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor4[address(msg.sender)] -= 0 / rewardValue / 2
    else:
        require arg1
        if 2435 * 10^15 * 3600 * 24 * 3600 * arg1 / arg1 != 2435 * 10^15 * 3600 * 24 * 3600:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if rewardValue <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardValue
        if 2435 * 10^15 * 3600 * 24 * 3600 * arg1 / rewardValue / 2 > stor4[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor4[address(msg.sender)] -= 2435 * 10^15 * 3600 * 24 * 3600 * arg1 / rewardValue / 2
    require ext_code.size(address(sub_adb5f6beAddress))
    call address(sub_adb5f6beAddress).0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function viewRewardTokenAmount(address arg1) {
    require calldata.size - 4 >= 32
    if stor2[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
            gas gas_remaining wei
           args address(sub_adb5f6beAddress), wETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wETHAddress)
    staticcall wETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            if stor4[address(arg1)] < stor4[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardValue:
                return 0
            require rewardValue
            if rewardValue * 2 * stor4[address(arg1)] / rewardValue != 2 * stor4[address(arg1)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (rewardValue * 2 * stor4[address(arg1)] / 2435 * 10^15 * 3600 * 24 * 3600)
        require 0 / ext_call.return_data[0]
        if (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(arg1)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != block.timestamp - stor2[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if stor4[address(arg1)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(arg1)] * 0 / ext_call.return_data[0]) < stor4[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardValue:
            return 0
        require rewardValue
        if rewardValue * 2 * stor4[address(arg1)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(arg1)] * 0 / ext_call.return_data[0]) / rewardValue != 2 * stor4[address(arg1)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(arg1)] * 0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (rewardValue * 2 * stor4[address(arg1)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(arg1)] * 0 / ext_call.return_data[0]) / 2435 * 10^15 * 3600 * 24 * 3600)
    require ext_call.return_data[0]
    if ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0] != viewLPTokenAmount[address(arg1)]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]:
        if stor4[address(arg1)] < stor4[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardValue:
            return 0
        require rewardValue
        if rewardValue * 2 * stor4[address(arg1)] / rewardValue != 2 * stor4[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (rewardValue * 2 * stor4[address(arg1)] / 2435 * 10^15 * 3600 * 24 * 3600)
    require ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]
    if (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) / ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0] != block.timestamp - stor2[address(arg1)]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if stor4[address(arg1)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) < stor4[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not rewardValue:
        return 0
    require rewardValue
    if rewardValue * 2 * stor4[address(arg1)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) / rewardValue != 2 * stor4[address(arg1)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (rewardValue * 2 * stor4[address(arg1)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0] * viewLPTokenAmount[address(arg1)] / ext_call.return_data[0]) / 2435 * 10^15 * 3600 * 24 * 3600)
}

function stake() payable {
    if startsAt >= block.timestamp:
        revert with 0, 'experiment did not started yet.'
    call 0x37683486d6d2d221c4aad853f78361526c16cac1 with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                gas gas_remaining wei
               args address(sub_adb5f6beAddress), wETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wETHAddress)
        staticcall wETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_adb5f6beAddress))
        staticcall address(sub_adb5f6beAddress).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not eth.balance(this.address):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(address(sub_adb5f6beAddress))
            call address(sub_adb5f6beAddress).0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / ext_call.return_data[0]
        else:
            require eth.balance(this.address)
            if eth.balance(this.address) * ext_call.return_data[0] / eth.balance(this.address) != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(address(sub_adb5f6beAddress))
            call address(sub_adb5f6beAddress).0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), eth.balance(this.address) * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_adb5f6beAddress))
        staticcall address(sub_adb5f6beAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_adb5f6beAddress))
        call address(sub_adb5f6beAddress).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor6), ext_call.return_data[0], 1, 1, address(this.address), 33136721748
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor2[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                gas gas_remaining wei
               args address(sub_adb5f6beAddress), wETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wETHAddress)
        staticcall wETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require 0 / ext_call.return_data[0]
                if (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0])
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != viewLPTokenAmount[address(msg.sender)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]:
                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]
                if (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) / ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0])
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                gas gas_remaining wei
               args address(sub_adb5f6beAddress), wETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wETHAddress)
        staticcall wETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_adb5f6beAddress))
        staticcall address(sub_adb5f6beAddress).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not eth.balance(this.address):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(address(sub_adb5f6beAddress))
            call address(sub_adb5f6beAddress).0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / ext_call.return_data[0]
        else:
            require eth.balance(this.address)
            if eth.balance(this.address) * ext_call.return_data[0] / eth.balance(this.address) != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 198 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(address(sub_adb5f6beAddress))
            call address(sub_adb5f6beAddress).0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), eth.balance(this.address) * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_adb5f6beAddress))
        staticcall address(sub_adb5f6beAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_adb5f6beAddress))
        call address(sub_adb5f6beAddress).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(sub_adb5f6beAddress), ext_call.return_data[0], 1, 1, address(this.address), 33136721748
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor2[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.0xe6a43905 with:
                gas gas_remaining wei
               args address(sub_adb5f6beAddress), wETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wETHAddress)
        staticcall wETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require 0 / ext_call.return_data[0]
                if (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 454 len 31]
                if stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor2[address(msg.sender)] * 0 / ext_call.return_data[0])
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != viewLPTokenAmount[address(msg.sender)]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 390 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]:
                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]
                if (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) / ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0] != block.timestamp - stor2[address(msg.sender)]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 454 len 31]
                if stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (block.timestamp * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0] * viewLPTokenAmount[address(msg.sender)] / ext_call.return_data[0])
    timePooled[address(msg.sender)] = block.timestamp
    stor2[address(msg.sender)] = block.timestamp
    if viewLPTokenAmount[address(msg.sender)] < viewLPTokenAmount[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
}



}
