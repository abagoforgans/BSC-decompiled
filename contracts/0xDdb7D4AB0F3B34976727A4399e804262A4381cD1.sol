contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor3;
uint8 initialDistributionFinished; offset 160
uint128 stor4; offset 160
address pairContractAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 treasuryFee;
uint256 sellFee;
uint256 sub_39e42abf;
uint256 denominator;
uint256 sub_d4c196a7;
uint256 sub_755747b3;
uint256 sub_451a6c42;
uint256 sub_87cddab1;
uint256 sub_9163120c;
uint256 sub_cc9367f5;
uint256 sub_d41f106e;
uint8 sub_e64d3794;
address stor18;
address treasuryAddress; offset 8
address stor19;
address stor20;
address routerAddress;
address pairAddress;
uint256 totalSupply;
uint256 stor24;
mapping of uint256 stor25;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function sub_131e6a16(?) {
    return sub_d41f106e
}

function totalSupply() {
    return totalSupply
}

function getDenominator() {
    return denominator
}

function sub_22a52353(?) {
    return bool(sub_e64d3794)
}

function sub_2a62807a(?) {
    return sub_451a6c42
}

function sellFee() {
    return sellFee
}

function decimals() {
    return decimals
}

function sub_363f1b6b(?) {
    return sub_87cddab1
}

function sub_39e42abf(?) {
    return sub_39e42abf
}

function sub_4272f726(?) {
    return sub_d4c196a7
}

function sub_451a6c42(?) {
    return sub_451a6c42
}

function pairContract() {
    return pairContractAddress
}

function sub_566da541(?) {
    return sub_9163120c
}

function treasury() {
    return treasuryAddress
}

function sub_683d9aad(?) {
    return sub_cc9367f5
}

function sub_755747b3(?) {
    return sub_755747b3
}

function sub_87cddab1(?) {
    return sub_87cddab1
}

function owner() {
    return owner
}

function sub_9163120c(?) {
    return sub_9163120c
}

function symbol() {
    return symbol[0 len symbol.length]
}

function denominator() {
    return denominator
}

function pair() {
    return pairAddress
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor3[address(arg1)])
}

function treasuryFee() {
    return treasuryFee
}

function sub_cc9367f5(?) {
    return sub_cc9367f5
}

function initialDistributionFinished() {
    return bool(initialDistributionFinished)
}

function sub_d41f106e(?) {
    return sub_d41f106e
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function sub_d4c196a7(?) {
    return sub_d4c196a7
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e64d3794(?) {
    return bool(sub_e64d3794)
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_f1da4f4d(?) {
    return sub_d41f106e <= block.timestamp
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    stor4 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    treasuryAddress = arg1
}

function setFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor24 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor24
    return (stor25[address(arg1)] / stor24)
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swipe(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getCirculatingSupply() {
    if stor25[stor19] > 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor25[stor20] > -stor25[stor19] - 471584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor24 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor24
    return (-stor25[stor19] + -stor25[stor20] - 471584007913129639936 / stor24)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function sub_7e119cce(?) {
    require msg.sender == owner
    require sub_cc9367f5 > 0
    sub_cc9367f5--
    sub_9163120c--
    if not sub_9163120c:
        if not sub_d4c196a7:
            if denominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require denominator
            if 0 / denominator > sub_d4c196a7:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_d4c196a7 -= 0 / denominator
        else:
            require sub_d4c196a7
            if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if denominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require denominator
            if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
        sub_9163120c = sub_87cddab1
    if sub_755747b3:
        if sub_755747b3 >= 0:
            if totalSupply + sub_755747b3 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if -sub_755747b3 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        totalSupply += sub_755747b3
        if totalSupply > -1:
            totalSupply = -1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xa53bd38f: totalSupply, block.timestamp
    sub_d41f106e = block.timestamp + sub_451a6c42
}

function sub_cfc34de9(?) {
    require msg.sender == owner
    if sub_d41f106e <= block.timestamp:
        if sub_e64d3794:
            sub_9163120c--
            if not sub_9163120c:
                if not sub_d4c196a7:
                    if denominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require denominator
                    if 0 / denominator > sub_d4c196a7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_d4c196a7 -= 0 / denominator
                else:
                    require sub_d4c196a7
                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if denominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require denominator
                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                sub_9163120c = sub_87cddab1
            if sub_755747b3:
                if sub_755747b3 >= 0:
                    if totalSupply + sub_755747b3 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if -sub_755747b3 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                totalSupply += sub_755747b3
                if totalSupply > -1:
                    totalSupply = -1
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit 0xa53bd38f: totalSupply, block.timestamp
            sub_d41f106e = block.timestamp + sub_451a6c42
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    if allowance[address(arg1)][address(msg.sender)] == -1:
        if not arg3:
            if 0 > stor25[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if pairAddress == arg1:
                if stor6[address(arg1)]:
                    if stor25[address(arg2)] < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((0 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if arg2 == pairAddress:
                        if treasuryFee + sellFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                    if denominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require denominator
                    if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[stor18] += 0 / denominator
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                    if 0 / denominator > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor25[address(arg2)] - (0 / denominator) < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[address(arg2)] -= 0 / denominator
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((-0 / denominator / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
            else:
                if pairAddress != arg2:
                    if stor25[address(arg2)] < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((0 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if stor6[address(arg1)]:
                        if stor25[address(arg2)] < stor25[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((0 / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
                    else:
                        if arg2 == pairAddress:
                            if treasuryFee + sellFee < treasuryFee:
                                revert with 0, 'SafeMath: addition overflow'
                        if denominator <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require denominator
                        if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor25[stor18] += 0 / denominator
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                        if 0 / denominator > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor25[address(arg2)] - (0 / denominator) < stor25[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor25[address(arg2)] -= 0 / denominator
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((-0 / denominator / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
        else:
            require arg3
            if arg3 * stor24 / arg3 != stor24:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg3 * stor24 > stor25[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor25[address(arg1)] += -1 * arg3 * stor24
            if pairAddress == arg1:
                if stor6[address(arg1)]:
                    if stor25[address(arg2)] + (arg3 * stor24) < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[address(arg2)] += arg3 * stor24
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((arg3 * stor24 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if arg2 != pairAddress:
                        if not arg3 * stor24:
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += 0 / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                            if 0 / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                        else:
                            require arg3 * stor24
                            if arg3 * stor24 * treasuryFee / arg3 * stor24 != treasuryFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + (arg3 * stor24 * treasuryFee / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += arg3 * stor24 * treasuryFee / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer((arg3 * stor24 * treasuryFee / denominator / stor24), arg1, treasuryAddress);
                            if arg3 * stor24 * treasuryFee / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) / stor24), arg1, arg2);
                    else:
                        if treasuryFee + sellFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg3 * stor24:
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += 0 / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                            if 0 / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                        else:
                            require arg3 * stor24
                            if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / arg3 * stor24 != treasuryFee + sellFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator / stor24), arg1, treasuryAddress);
                            if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
            else:
                if pairAddress != arg2:
                    if stor25[address(arg2)] + (arg3 * stor24) < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[address(arg2)] += arg3 * stor24
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((arg3 * stor24 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if stor6[address(arg1)]:
                        if stor25[address(arg2)] + (arg3 * stor24) < stor25[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor25[address(arg2)] += arg3 * stor24
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((arg3 * stor24 / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
                    else:
                        if arg2 != pairAddress:
                            if not arg3 * stor24:
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += 0 / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                                if 0 / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                            else:
                                require arg3 * stor24
                                if arg3 * stor24 * treasuryFee / arg3 * stor24 != treasuryFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + (arg3 * stor24 * treasuryFee / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += arg3 * stor24 * treasuryFee / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer((arg3 * stor24 * treasuryFee / denominator / stor24), arg1, treasuryAddress);
                                if arg3 * stor24 * treasuryFee / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) / stor24), arg1, arg2);
                        else:
                            if treasuryFee + sellFee < treasuryFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg3 * stor24:
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += 0 / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                                if 0 / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                            else:
                                require arg3 * stor24
                                if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / arg3 * stor24 != treasuryFee + sellFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator / stor24), arg1, treasuryAddress);
                                if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'Insufficient Allowance'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        if not arg3:
            if 0 > stor25[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if pairAddress == arg1:
                if stor6[address(arg1)]:
                    if stor25[address(arg2)] < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((0 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if arg2 == pairAddress:
                        if treasuryFee + sellFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                    if denominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require denominator
                    if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[stor18] += 0 / denominator
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                    if 0 / denominator > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor25[address(arg2)] - (0 / denominator) < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[address(arg2)] -= 0 / denominator
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((-0 / denominator / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
            else:
                if pairAddress != arg2:
                    if stor25[address(arg2)] < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((0 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if stor6[address(arg1)]:
                        if stor25[address(arg2)] < stor25[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((0 / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
                    else:
                        if arg2 == pairAddress:
                            if treasuryFee + sellFee < treasuryFee:
                                revert with 0, 'SafeMath: addition overflow'
                        if denominator <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require denominator
                        if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor25[stor18] += 0 / denominator
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                        if 0 / denominator > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor25[address(arg2)] - (0 / denominator) < stor25[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor25[address(arg2)] -= 0 / denominator
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((-0 / denominator / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
        else:
            require arg3
            if arg3 * stor24 / arg3 != stor24:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if arg3 * stor24 > stor25[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor25[address(arg1)] += -1 * arg3 * stor24
            if pairAddress == arg1:
                if stor6[address(arg1)]:
                    if stor25[address(arg2)] + (arg3 * stor24) < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[address(arg2)] += arg3 * stor24
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((arg3 * stor24 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if arg2 != pairAddress:
                        if not arg3 * stor24:
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += 0 / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                            if 0 / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                        else:
                            require arg3 * stor24
                            if arg3 * stor24 * treasuryFee / arg3 * stor24 != treasuryFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + (arg3 * stor24 * treasuryFee / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += arg3 * stor24 * treasuryFee / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer((arg3 * stor24 * treasuryFee / denominator / stor24), arg1, treasuryAddress);
                            if arg3 * stor24 * treasuryFee / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) / stor24), arg1, arg2);
                    else:
                        if treasuryFee + sellFee < treasuryFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg3 * stor24:
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += 0 / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                            if 0 / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                        else:
                            require arg3 * stor24
                            if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / arg3 * stor24 != treasuryFee + sellFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if denominator <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require denominator
                            if stor25[stor18] + ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[stor18] += (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator / stor24), arg1, treasuryAddress);
                            if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator > arg3 * stor24:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator)
                            if stor24 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor24
                            emit Transfer(((arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
            else:
                if pairAddress != arg2:
                    if stor25[address(arg2)] + (arg3 * stor24) < stor25[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor25[address(arg2)] += arg3 * stor24
                    if stor24 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor24
                    emit Transfer((arg3 * stor24 / stor24), arg1, arg2);
                    if sub_d41f106e <= block.timestamp:
                        if sub_e64d3794:
                            sub_9163120c--
                            if not sub_9163120c:
                                if not sub_d4c196a7:
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if 0 / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= 0 / denominator
                                else:
                                    require sub_d4c196a7
                                    if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if denominator <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require denominator
                                    if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                sub_9163120c = sub_87cddab1
                            if sub_755747b3:
                                if sub_755747b3 >= 0:
                                    if totalSupply + sub_755747b3 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if -sub_755747b3 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply += sub_755747b3
                                if totalSupply > -1:
                                    totalSupply = -1
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                require ext_code.size(pairContractAddress)
                                call pairContractAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0xa53bd38f: totalSupply, block.timestamp
                            sub_d41f106e = block.timestamp + sub_451a6c42
                else:
                    if stor6[address(arg1)]:
                        if stor25[address(arg2)] + (arg3 * stor24) < stor25[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor25[address(arg2)] += arg3 * stor24
                        if stor24 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor24
                        emit Transfer((arg3 * stor24 / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
                    else:
                        if arg2 != pairAddress:
                            if not arg3 * stor24:
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += 0 / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                                if 0 / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                            else:
                                require arg3 * stor24
                                if arg3 * stor24 * treasuryFee / arg3 * stor24 != treasuryFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + (arg3 * stor24 * treasuryFee / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += arg3 * stor24 * treasuryFee / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer((arg3 * stor24 * treasuryFee / denominator / stor24), arg1, treasuryAddress);
                                if arg3 * stor24 * treasuryFee / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - (arg3 * stor24 * treasuryFee / denominator) / stor24), arg1, arg2);
                        else:
                            if treasuryFee + sellFee < treasuryFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg3 * stor24:
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + (0 / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += 0 / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer((0 / denominator / stor24), arg1, treasuryAddress);
                                if 0 / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - (0 / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - (0 / denominator) / stor24), arg1, arg2);
                            else:
                                require arg3 * stor24
                                if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / arg3 * stor24 != treasuryFee + sellFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if denominator <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require denominator
                                if stor25[stor18] + ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[stor18]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[stor18] += (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator / stor24), arg1, treasuryAddress);
                                if (treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator > arg3 * stor24:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) < stor25[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor25[address(arg2)] = stor25[address(arg2)] + (arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator)
                                if stor24 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor24
                                emit Transfer(((arg3 * stor24) - ((treasuryFee * arg3 * stor24) + (sellFee * arg3 * stor24) / denominator) / stor24), arg1, arg2);
                        if sub_d41f106e <= block.timestamp:
                            if sub_e64d3794:
                                sub_9163120c--
                                if not sub_9163120c:
                                    if not sub_d4c196a7:
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if 0 / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= 0 / denominator
                                    else:
                                        require sub_d4c196a7
                                        if sub_d4c196a7 * sub_39e42abf / sub_d4c196a7 != sub_39e42abf:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        if denominator <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require denominator
                                        if sub_d4c196a7 * sub_39e42abf / denominator > sub_d4c196a7:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_d4c196a7 -= sub_d4c196a7 * sub_39e42abf / denominator
                                    sub_9163120c = sub_87cddab1
                                if sub_755747b3:
                                    if sub_755747b3 >= 0:
                                        if totalSupply + sub_755747b3 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if -sub_755747b3 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply += sub_755747b3
                                    if totalSupply > -1:
                                        totalSupply = -1
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    stor24 = 0x123456789abcdf0123456789abcdf0123456789abcdf01217403c5a4be8000 * 3600 / totalSupply
                                    require ext_code.size(pairContractAddress)
                                    call pairContractAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit 0xa53bd38f: totalSupply, block.timestamp
                                sub_d41f106e = block.timestamp + sub_451a6c42
    return 1
}



}
