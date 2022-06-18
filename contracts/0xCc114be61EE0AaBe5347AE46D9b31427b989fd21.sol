contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_4417d6a5;
uint256 sub_abfea13d;
address stableCoinAddress;
mapping of uint256 sub_f1f6bf0f;
mapping of struct stor5;
mapping of uint8 stor6;
uint256 tokenTarget;
uint256 sub_3ba94b7a;
uint256 multiplier;
uint8 stor10;
uint256 totalOwed;
mapping of uint256 claimable;
uint256 sub_f8757ba3;
uint256 participants;

function multiplier() payable {
    return multiplier
}

function endUnlocked() payable {
    return bool(stor10)
}

function sub_3ba94b7a(?) payable {
    return sub_3ba94b7a
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimable[arg1]
}

function sub_4417d6a5(?) payable {
    return sub_4417d6a5
}

function participants() payable {
    return participants
}

function tokenTarget() payable {
    return tokenTarget
}

function owner() payable {
    return owner
}

function stableCoin() payable {
    return stableCoinAddress
}

function sub_abfea13d(?) payable {
    return sub_abfea13d
}

function totalOwed() payable {
    return totalOwed
}

function sub_f1f6bf0f(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_f1f6bf0f[arg1])
}

function sub_f8757ba3(?) payable {
    return sub_f8757ba3
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

function setRound1Timestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_4417d6a5 = arg1
}

function removeWhitelistedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint256(sub_f1f6bf0f[address(arg1)]) = 0
}

function addWhitelistedAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint256(sub_f1f6bf0f[address(arg1)]) = arg2
}

function finishSale() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor10:
        revert with 0, 'Presale already ended!'
    stor10 = 1
    emit EndUnlockedEvent(block.timestamp);
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor6[address(arg1)]:
        if not uint256(sub_f1f6bf0f[address(arg1)]):
            if not stor5[address(arg1)].field_0:
                return 0
    return 1
}

function roundNumber() payable {
    if block.timestamp < sub_4417d6a5:
        return 0
    if not sub_4417d6a5:
        return 0
    if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= sub_4417d6a5:
        if block.timestamp < sub_abfea13d + sub_4417d6a5:
            return 1
    if block.timestamp < sub_abfea13d + sub_4417d6a5:
        if not stor10:
            return 0
        return 3
    if stor10:
        return 3
    return 2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x684f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if not claimable[address(arg1)]:
        return 0
    if multiplier * claimable[address(arg1)] / claimable[address(arg1)] != multiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (multiplier * claimable[address(arg1)] / 100)
}

function round2Allowance(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6[address(arg1)]:
        return stor5[msg.sender].field_0
    if not uint256(sub_f1f6bf0f[address(arg1)]):
        return 0
    if not uint256(sub_f1f6bf0f[address(arg1)]):
        return 0
    if 4 * uint256(sub_f1f6bf0f[address(arg1)]) / uint256(sub_f1f6bf0f[address(arg1)]) != 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (4 * uint256(sub_f1f6bf0f[address(arg1)]))
}

function startSale() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= sub_4417d6a5:
        if sub_4417d6a5:
            if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= sub_4417d6a5:
                if block.timestamp < sub_abfea13d + sub_4417d6a5:
                    revert with 0, 'Presale round isn't 0'
            if block.timestamp >= sub_abfea13d + sub_4417d6a5:
                revert with 0, 'Presale round isn't 0'
            if stor10:
                revert with 0, 'Presale round isn't 0'
    sub_4417d6a5 = block.timestamp
    emit StartSale(block.timestamp);
}

function emergencyWithdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawStable() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor10:
        revert with 0, 'presale has not yet ended'
    require ext_code.size(stableCoinAddress)
    staticcall stableCoinAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stableCoinAddress)
    call stableCoinAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function initSale(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 <= 0:
        revert with 0, 'stable target can't be Zero'
    if arg1 <= 0:
        revert with 0, 'token target can't be Zero'
    tokenTarget = arg1
    sub_3ba94b7a = arg2
    if not arg1:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        multiplier = 0 / arg2
    else:
        if 100 * arg1 / arg1 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        multiplier = 100 * arg1 / arg2
}

function sub_536baf0f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe497373756520696e205f61646472657373657320616e64205f616c6c6f636174696f6e73206c656e6774,
                    mem[207 len 21]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        uint256(sub_f1f6bf0f[address(cd[((32 * idx) + cd[4] + 36)])]) = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function setStableTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= sub_4417d6a5:
        if sub_4417d6a5:
            if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= sub_4417d6a5:
                if block.timestamp < sub_abfea13d + sub_4417d6a5:
                    revert with 0, 'Presale already started!'
            if block.timestamp >= sub_abfea13d + sub_4417d6a5:
                revert with 0, 'Presale already started!'
            if stor10:
                revert with 0, 'Presale already started!'
    sub_3ba94b7a = arg1
    if not tokenTarget:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        multiplier = 0 / arg1
    else:
        if 100 * tokenTarget / tokenTarget != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        multiplier = 100 * tokenTarget / arg1
}

function setTokenTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= sub_4417d6a5:
        if sub_4417d6a5:
            if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= sub_4417d6a5:
                if block.timestamp < sub_abfea13d + sub_4417d6a5:
                    revert with 0, 'Presale already started!'
            if block.timestamp >= sub_abfea13d + sub_4417d6a5:
                revert with 0, 'Presale already started!'
            if stor10:
                revert with 0, 'Presale already started!'
    tokenTarget = arg1
    if not arg1:
        if sub_3ba94b7a <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ba94b7a
        multiplier = 0 / sub_3ba94b7a
    else:
        if 100 * arg1 / arg1 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_3ba94b7a <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ba94b7a
        multiplier = 100 * arg1 / sub_3ba94b7a
}

function buyRound1Stable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_4417d6a5:
        revert with 0, 'presale isn't on good round'
    else:
        if not sub_4417d6a5:
            revert with 0, 'presale isn't on good round'
        else:
            if block.timestamp < sub_4417d6a5:
                if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if block.timestamp < sub_abfea13d + sub_4417d6a5:
                        if stor10:
                            revert with 0, 'presale isn't on good round'
                        else:
                            revert with 0, 'presale isn't on good round'
                    else:
                        if not stor10:
                            revert with 0, 'presale isn't on good round'
                        else:
                            revert with 0, 'presale isn't on good round'
            else:
                if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if block.timestamp >= sub_abfea13d + sub_4417d6a5:
                        if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp < sub_abfea13d + sub_4417d6a5:
                                if stor10:
                                    revert with 0, 'presale isn't on good round'
                                else:
                                    revert with 0, 'presale isn't on good round'
                            else:
                                if not stor10:
                                    revert with 0, 'presale isn't on good round'
                                else:
                                    revert with 0, 'presale isn't on good round'
                    else:
                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg1 + sub_f8757ba3 > sub_3ba94b7a:
                                revert with 0, 'Target already hit'
                            else:
                                if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x72416d6f756e7420746f6f2068696768206f72206e6f74207768697465206c69737465,
                                                mem[199 len 29]
                                else:
                                    if stor6[msg.sender]:
                                        require ext_code.size(stableCoinAddress)
                                        call stableCoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, this.address, arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            if arg1:
                                                if multiplier * arg1 / arg1 != multiplier:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                else:
                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                            revert with 0, 'sold out'
                                                        else:
                                                            if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                                                revert with 0, 'purchase cap hit'
                                                            else:
                                                                uint256(sub_f1f6bf0f[msg.sender]) -= arg1
                                                                if claimable[msg.sender]:
                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        claimable[msg.sender] += arg1
                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            totalOwed += multiplier * arg1 / 100
                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                sub_f8757ba3 += arg1
                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                else:
                                                                                    emit RoundChange(3);
                                                                                    stor10 = 1
                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                else:
                                                                    if participants + 1 < participants:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        participants++
                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            claimable[msg.sender] += arg1
                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                totalOwed += multiplier * arg1 / 100
                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    sub_f8757ba3 += arg1
                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                    else:
                                                                                        emit RoundChange(3);
                                                                                        stor10 = 1
                                                                                        emit EndUnlockedEvent(block.timestamp);
                                            else:
                                                if totalOwed < totalOwed:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if totalOwed > tokenTarget:
                                                        revert with 0, 'sold out'
                                                    else:
                                                        if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                                            revert with 0, 'purchase cap hit'
                                                        else:
                                                            uint256(sub_f1f6bf0f[msg.sender]) -= arg1
                                                            if claimable[msg.sender]:
                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    claimable[msg.sender] += arg1
                                                                    if totalOwed < totalOwed:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            sub_f8757ba3 += arg1
                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                            else:
                                                                                emit RoundChange(3);
                                                                                stor10 = 1
                                                                                emit EndUnlockedEvent(block.timestamp);
                                                            else:
                                                                if participants + 1 < participants:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    participants++
                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        claimable[msg.sender] += arg1
                                                                        if totalOwed < totalOwed:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                sub_f8757ba3 += arg1
                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                else:
                                                                                    emit RoundChange(3);
                                                                                    stor10 = 1
                                                                                    emit EndUnlockedEvent(block.timestamp);
                                    else:
                                        stor6[msg.sender] = 1
                                        if uint256(sub_f1f6bf0f[msg.sender]):
                                            if 4 * uint256(sub_f1f6bf0f[msg.sender]) / uint256(sub_f1f6bf0f[msg.sender]) != 4:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            else:
                                                stor5[msg.sender].field_0 = 0
                                                stor5[msg.sender].field_2 = Mask(254, 0, sub_f1f6bf0f[msg.sender])
                                                require ext_code.size(stableCoinAddress)
                                                call stableCoinAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0]
                                                    if arg1:
                                                        if multiplier * arg1 / arg1 != multiplier:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        else:
                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                    revert with 0, 'sold out'
                                                                else:
                                                                    if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                                                        revert with 0, 'purchase cap hit'
                                                                    else:
                                                                        uint256(sub_f1f6bf0f[msg.sender]) -= arg1
                                                                        if claimable[msg.sender]:
                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                claimable[msg.sender] += arg1
                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        sub_f8757ba3 += arg1
                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                        else:
                                                                                            emit RoundChange(3);
                                                                                            stor10 = 1
                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                        else:
                                                                            if participants + 1 < participants:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                participants++
                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    claimable[msg.sender] += arg1
                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            sub_f8757ba3 += arg1
                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                            else:
                                                                                                emit RoundChange(3);
                                                                                                stor10 = 1
                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                    else:
                                                        if totalOwed < totalOwed:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if totalOwed > tokenTarget:
                                                                revert with 0, 'sold out'
                                                            else:
                                                                if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                                                    revert with 0, 'purchase cap hit'
                                                                else:
                                                                    uint256(sub_f1f6bf0f[msg.sender]) -= arg1
                                                                    if claimable[msg.sender]:
                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            claimable[msg.sender] += arg1
                                                                            if totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    sub_f8757ba3 += arg1
                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                    else:
                                                                                        emit RoundChange(3);
                                                                                        stor10 = 1
                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                    else:
                                                                        if participants + 1 < participants:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            participants++
                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                claimable[msg.sender] += arg1
                                                                                if totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        sub_f8757ba3 += arg1
                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                        else:
                                                                                            emit RoundChange(3);
                                                                                            stor10 = 1
                                                                                            emit EndUnlockedEvent(block.timestamp);
                                        else:
                                            stor5[msg.sender].field_0 = 0
                                            require ext_code.size(stableCoinAddress)
                                            call stableCoinAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, this.address, arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                if arg1:
                                                    if multiplier * arg1 / arg1 != multiplier:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    else:
                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                revert with 0, 'sold out'
                                                            else:
                                                                if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                                                    revert with 0, 'purchase cap hit'
                                                                else:
                                                                    uint256(sub_f1f6bf0f[msg.sender]) -= arg1
                                                                    if claimable[msg.sender]:
                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            claimable[msg.sender] += arg1
                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                totalOwed += multiplier * arg1 / 100
                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    sub_f8757ba3 += arg1
                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                    else:
                                                                                        emit RoundChange(3);
                                                                                        stor10 = 1
                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                    else:
                                                                        if participants + 1 < participants:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            participants++
                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                claimable[msg.sender] += arg1
                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        sub_f8757ba3 += arg1
                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                        else:
                                                                                            emit RoundChange(3);
                                                                                            stor10 = 1
                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                else:
                                                    if totalOwed < totalOwed:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if totalOwed > tokenTarget:
                                                            revert with 0, 'sold out'
                                                        else:
                                                            if arg1 > uint256(sub_f1f6bf0f[msg.sender]):
                                                                revert with 0, 'purchase cap hit'
                                                            else:
                                                                uint256(sub_f1f6bf0f[msg.sender]) -= arg1
                                                                if claimable[msg.sender]:
                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        claimable[msg.sender] += arg1
                                                                        if totalOwed < totalOwed:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                sub_f8757ba3 += arg1
                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                else:
                                                                                    emit RoundChange(3);
                                                                                    stor10 = 1
                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                else:
                                                                    if participants + 1 < participants:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        participants++
                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            claimable[msg.sender] += arg1
                                                                            if totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    sub_f8757ba3 += arg1
                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                    else:
                                                                                        emit RoundChange(3);
                                                                                        stor10 = 1
                                                                                        emit EndUnlockedEvent(block.timestamp);
}

function buyRound2Stable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_4417d6a5:
        revert with 0, 'Not the good round'
    else:
        if not sub_4417d6a5:
            revert with 0, 'Not the good round'
        else:
            if block.timestamp < sub_4417d6a5:
                if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if block.timestamp < sub_abfea13d + sub_4417d6a5:
                        if stor10:
                            revert with 0, 'Not the good round'
                        else:
                            revert with 0, 'Not the good round'
                    else:
                        if stor10:
                            revert with 0, 'Not the good round'
                        else:
                            if not stor6[address(msg.sender)]:
                                if not uint256(sub_f1f6bf0f[address(msg.sender)]):
                                    revert with 0, 'you are not whitelisted'
                                else:
                                    if not uint256(sub_f1f6bf0f[address(msg.sender)]):
                                        revert with 0, 'you are not whitelisted'
                                    else:
                                        if 4 * uint256(sub_f1f6bf0f[address(msg.sender)]) / uint256(sub_f1f6bf0f[address(msg.sender)]) != 4:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        else:
                                            if 4 * uint256(sub_f1f6bf0f[address(msg.sender)]) <= 0:
                                                revert with 0, 'you are not whitelisted'
                                            else:
                                                if arg1 <= 0:
                                                    revert with 0, 'amount too low'
                                                else:
                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if arg1 + sub_f8757ba3 > sub_3ba94b7a:
                                                            revert with 0, 'target already hit'
                                                        else:
                                                            if stor6[msg.sender]:
                                                                if arg1 > stor5[msg.sender].field_0:
                                                                    revert with 0, 'purchase cap hit'
                                                                else:
                                                                    stor5[msg.sender].field_0 -= arg1
                                                                    require ext_code.size(stableCoinAddress)
                                                                    call stableCoinAddress.0x23b872dd with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, this.address, arg1
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                                                        if arg1:
                                                                            if multiplier * arg1 / arg1 != multiplier:
                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                            else:
                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                        revert with 0, 'sold out'
                                                                                    else:
                                                                                        if claimable[msg.sender]:
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                                        else:
                                                                                            if participants + 1 < participants:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                participants++
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                        else:
                                                                            if totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if totalOwed > tokenTarget:
                                                                                    revert with 0, 'sold out'
                                                                                else:
                                                                                    if claimable[msg.sender]:
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                    else:
                                                                                        if participants + 1 < participants:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            participants++
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                            else:
                                                                stor6[msg.sender] = 1
                                                                if uint256(sub_f1f6bf0f[msg.sender]):
                                                                    if 4 * uint256(sub_f1f6bf0f[msg.sender]) / uint256(sub_f1f6bf0f[msg.sender]) != 4:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    33,
                                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[197 len 31]
                                                                    else:
                                                                        stor5[msg.sender].field_0 = 0
                                                                        stor5[msg.sender].field_2 = Mask(254, 0, sub_f1f6bf0f[msg.sender])
                                                                        if arg1 > stor5[msg.sender].field_0:
                                                                            revert with 0, 'purchase cap hit'
                                                                        else:
                                                                            stor5[msg.sender].field_0 -= arg1
                                                                            require ext_code.size(stableCoinAddress)
                                                                            call stableCoinAddress.0x23b872dd with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, this.address, arg1
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0]
                                                                                if arg1:
                                                                                    if multiplier * arg1 / arg1 != multiplier:
                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                                    else:
                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                                revert with 0, 'sold out'
                                                                                            else:
                                                                                                if claimable[msg.sender]:
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            totalOwed += multiplier * arg1 / 100
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                                                else:
                                                                                                    if participants + 1 < participants:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        participants++
                                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            claimable[msg.sender] += arg1
                                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                totalOwed += multiplier * arg1 / 100
                                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    sub_f8757ba3 += arg1
                                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                    else:
                                                                                                                        emit RoundChange(3);
                                                                                                                        stor10 = 1
                                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                else:
                                                                                    if totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if totalOwed > tokenTarget:
                                                                                            revert with 0, 'sold out'
                                                                                        else:
                                                                                            if claimable[msg.sender]:
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                                            else:
                                                                                                if participants + 1 < participants:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    participants++
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                else:
                                                                    stor5[msg.sender].field_0 = 0
                                                                    if arg1 > stor5[msg.sender].field_0:
                                                                        revert with 0, 'purchase cap hit'
                                                                    else:
                                                                        stor5[msg.sender].field_0 -= arg1
                                                                        require ext_code.size(stableCoinAddress)
                                                                        call stableCoinAddress.0x23b872dd with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, this.address, arg1
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0]
                                                                            if arg1:
                                                                                if multiplier * arg1 / arg1 != multiplier:
                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                                else:
                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                            revert with 0, 'sold out'
                                                                                        else:
                                                                                            if claimable[msg.sender]:
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                                            else:
                                                                                                if participants + 1 < participants:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    participants++
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            totalOwed += multiplier * arg1 / 100
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                            else:
                                                                                if totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if totalOwed > tokenTarget:
                                                                                        revert with 0, 'sold out'
                                                                                    else:
                                                                                        if claimable[msg.sender]:
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                                        else:
                                                                                            if participants + 1 < participants:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                participants++
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                            else:
                                if stor5[msg.sender].field_0 <= 0:
                                    revert with 0, 'you are not whitelisted'
                                else:
                                    if arg1 <= 0:
                                        revert with 0, 'amount too low'
                                    else:
                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg1 + sub_f8757ba3 > sub_3ba94b7a:
                                                revert with 0, 'target already hit'
                                            else:
                                                if stor6[msg.sender]:
                                                    if arg1 > stor5[msg.sender].field_0:
                                                        revert with 0, 'purchase cap hit'
                                                    else:
                                                        stor5[msg.sender].field_0 -= arg1
                                                        require ext_code.size(stableCoinAddress)
                                                        call stableCoinAddress.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, this.address, arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0]
                                                            if arg1:
                                                                if multiplier * arg1 / arg1 != multiplier:
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                else:
                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                            revert with 0, 'sold out'
                                                                        else:
                                                                            if claimable[msg.sender]:
                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    claimable[msg.sender] += arg1
                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            sub_f8757ba3 += arg1
                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                            else:
                                                                                                emit RoundChange(3);
                                                                                                stor10 = 1
                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                            else:
                                                                                if participants + 1 < participants:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    participants++
                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        claimable[msg.sender] += arg1
                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            totalOwed += multiplier * arg1 / 100
                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                sub_f8757ba3 += arg1
                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                else:
                                                                                                    emit RoundChange(3);
                                                                                                    stor10 = 1
                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                            else:
                                                                if totalOwed < totalOwed:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if totalOwed > tokenTarget:
                                                                        revert with 0, 'sold out'
                                                                    else:
                                                                        if claimable[msg.sender]:
                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                claimable[msg.sender] += arg1
                                                                                if totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        sub_f8757ba3 += arg1
                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                        else:
                                                                                            emit RoundChange(3);
                                                                                            stor10 = 1
                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                        else:
                                                                            if participants + 1 < participants:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                participants++
                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    claimable[msg.sender] += arg1
                                                                                    if totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            sub_f8757ba3 += arg1
                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                            else:
                                                                                                emit RoundChange(3);
                                                                                                stor10 = 1
                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                else:
                                                    stor6[msg.sender] = 1
                                                    if uint256(sub_f1f6bf0f[msg.sender]):
                                                        if 4 * uint256(sub_f1f6bf0f[msg.sender]) / uint256(sub_f1f6bf0f[msg.sender]) != 4:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        else:
                                                            stor5[msg.sender].field_0 = 0
                                                            stor5[msg.sender].field_2 = Mask(254, 0, sub_f1f6bf0f[msg.sender])
                                                            if arg1 > stor5[msg.sender].field_0:
                                                                revert with 0, 'purchase cap hit'
                                                            else:
                                                                stor5[msg.sender].field_0 -= arg1
                                                                require ext_code.size(stableCoinAddress)
                                                                call stableCoinAddress.0x23b872dd with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, this.address, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0]
                                                                    if arg1:
                                                                        if multiplier * arg1 / arg1 != multiplier:
                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                        else:
                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                    revert with 0, 'sold out'
                                                                                else:
                                                                                    if claimable[msg.sender]:
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                totalOwed += multiplier * arg1 / 100
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                    else:
                                                                                        if participants + 1 < participants:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            participants++
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                    else:
                                                                        if totalOwed < totalOwed:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if totalOwed > tokenTarget:
                                                                                revert with 0, 'sold out'
                                                                            else:
                                                                                if claimable[msg.sender]:
                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        claimable[msg.sender] += arg1
                                                                                        if totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                sub_f8757ba3 += arg1
                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                else:
                                                                                                    emit RoundChange(3);
                                                                                                    stor10 = 1
                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                                else:
                                                                                    if participants + 1 < participants:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        participants++
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                    else:
                                                        stor5[msg.sender].field_0 = 0
                                                        if arg1 > stor5[msg.sender].field_0:
                                                            revert with 0, 'purchase cap hit'
                                                        else:
                                                            stor5[msg.sender].field_0 -= arg1
                                                            require ext_code.size(stableCoinAddress)
                                                            call stableCoinAddress.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, this.address, arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0]
                                                                if arg1:
                                                                    if multiplier * arg1 / arg1 != multiplier:
                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                    else:
                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                revert with 0, 'sold out'
                                                                            else:
                                                                                if claimable[msg.sender]:
                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        claimable[msg.sender] += arg1
                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            totalOwed += multiplier * arg1 / 100
                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                sub_f8757ba3 += arg1
                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                else:
                                                                                                    emit RoundChange(3);
                                                                                                    stor10 = 1
                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                                else:
                                                                                    if participants + 1 < participants:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        participants++
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                totalOwed += multiplier * arg1 / 100
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                else:
                                                                    if totalOwed < totalOwed:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if totalOwed > tokenTarget:
                                                                            revert with 0, 'sold out'
                                                                        else:
                                                                            if claimable[msg.sender]:
                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    claimable[msg.sender] += arg1
                                                                                    if totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            sub_f8757ba3 += arg1
                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                            else:
                                                                                                emit RoundChange(3);
                                                                                                stor10 = 1
                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                            else:
                                                                                if participants + 1 < participants:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    participants++
                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        claimable[msg.sender] += arg1
                                                                                        if totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                sub_f8757ba3 += arg1
                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                else:
                                                                                                    emit RoundChange(3);
                                                                                                    stor10 = 1
                                                                                                    emit EndUnlockedEvent(block.timestamp);
            else:
                if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if block.timestamp < sub_abfea13d + sub_4417d6a5:
                        revert with 0, 'Not the good round'
                    else:
                        if sub_abfea13d + sub_4417d6a5 < sub_4417d6a5:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp < sub_abfea13d + sub_4417d6a5:
                                if stor10:
                                    revert with 0, 'Not the good round'
                                else:
                                    revert with 0, 'Not the good round'
                            else:
                                if stor10:
                                    revert with 0, 'Not the good round'
                                else:
                                    if not stor6[address(msg.sender)]:
                                        if not uint256(sub_f1f6bf0f[address(msg.sender)]):
                                            revert with 0, 'you are not whitelisted'
                                        else:
                                            if not uint256(sub_f1f6bf0f[address(msg.sender)]):
                                                revert with 0, 'you are not whitelisted'
                                            else:
                                                if 4 * uint256(sub_f1f6bf0f[address(msg.sender)]) / uint256(sub_f1f6bf0f[address(msg.sender)]) != 4:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                else:
                                                    if 4 * uint256(sub_f1f6bf0f[address(msg.sender)]) <= 0:
                                                        revert with 0, 'you are not whitelisted'
                                                    else:
                                                        if arg1 <= 0:
                                                            revert with 0, 'amount too low'
                                                        else:
                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if arg1 + sub_f8757ba3 > sub_3ba94b7a:
                                                                    revert with 0, 'target already hit'
                                                                else:
                                                                    if stor6[msg.sender]:
                                                                        if arg1 > stor5[msg.sender].field_0:
                                                                            revert with 0, 'purchase cap hit'
                                                                        else:
                                                                            stor5[msg.sender].field_0 -= arg1
                                                                            require ext_code.size(stableCoinAddress)
                                                                            call stableCoinAddress.0x23b872dd with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, this.address, arg1
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0]
                                                                                if arg1:
                                                                                    if multiplier * arg1 / arg1 != multiplier:
                                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                                    else:
                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                                revert with 0, 'sold out'
                                                                                            else:
                                                                                                if claimable[msg.sender]:
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            totalOwed += multiplier * arg1 / 100
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                                                else:
                                                                                                    if participants + 1 < participants:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        participants++
                                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            claimable[msg.sender] += arg1
                                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                totalOwed += multiplier * arg1 / 100
                                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    sub_f8757ba3 += arg1
                                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                    else:
                                                                                                                        emit RoundChange(3);
                                                                                                                        stor10 = 1
                                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                else:
                                                                                    if totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if totalOwed > tokenTarget:
                                                                                            revert with 0, 'sold out'
                                                                                        else:
                                                                                            if claimable[msg.sender]:
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                                            else:
                                                                                                if participants + 1 < participants:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    participants++
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                    else:
                                                                        stor6[msg.sender] = 1
                                                                        if uint256(sub_f1f6bf0f[msg.sender]):
                                                                            if 4 * uint256(sub_f1f6bf0f[msg.sender]) / uint256(sub_f1f6bf0f[msg.sender]) != 4:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            33,
                                                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[197 len 31]
                                                                            else:
                                                                                stor5[msg.sender].field_0 = 0
                                                                                stor5[msg.sender].field_2 = Mask(254, 0, sub_f1f6bf0f[msg.sender])
                                                                                if arg1 > stor5[msg.sender].field_0:
                                                                                    revert with 0, 'purchase cap hit'
                                                                                else:
                                                                                    stor5[msg.sender].field_0 -= arg1
                                                                                    require ext_code.size(stableCoinAddress)
                                                                                    call stableCoinAddress.0x23b872dd with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, this.address, arg1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0]
                                                                                        if arg1:
                                                                                            if multiplier * arg1 / arg1 != multiplier:
                                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                                            else:
                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                                        revert with 0, 'sold out'
                                                                                                    else:
                                                                                                        if claimable[msg.sender]:
                                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                claimable[msg.sender] += arg1
                                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        sub_f8757ba3 += arg1
                                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                        else:
                                                                                                                            emit RoundChange(3);
                                                                                                                            stor10 = 1
                                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                                                        else:
                                                                                                            if participants + 1 < participants:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                participants++
                                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    claimable[msg.sender] += arg1
                                                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                        else:
                                                                                                                            sub_f8757ba3 += arg1
                                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                            else:
                                                                                                                                emit RoundChange(3);
                                                                                                                                stor10 = 1
                                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                                        else:
                                                                                            if totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if totalOwed > tokenTarget:
                                                                                                    revert with 0, 'sold out'
                                                                                                else:
                                                                                                    if claimable[msg.sender]:
                                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            claimable[msg.sender] += arg1
                                                                                                            if totalOwed < totalOwed:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    sub_f8757ba3 += arg1
                                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                    else:
                                                                                                                        emit RoundChange(3);
                                                                                                                        stor10 = 1
                                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                                    else:
                                                                                                        if participants + 1 < participants:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            participants++
                                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                claimable[msg.sender] += arg1
                                                                                                                if totalOwed < totalOwed:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        sub_f8757ba3 += arg1
                                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                        else:
                                                                                                                            emit RoundChange(3);
                                                                                                                            stor10 = 1
                                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                        else:
                                                                            stor5[msg.sender].field_0 = 0
                                                                            if arg1 > stor5[msg.sender].field_0:
                                                                                revert with 0, 'purchase cap hit'
                                                                            else:
                                                                                stor5[msg.sender].field_0 -= arg1
                                                                                require ext_code.size(stableCoinAddress)
                                                                                call stableCoinAddress.0x23b872dd with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, this.address, arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0]
                                                                                    if arg1:
                                                                                        if multiplier * arg1 / arg1 != multiplier:
                                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                                        else:
                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                                    revert with 0, 'sold out'
                                                                                                else:
                                                                                                    if claimable[msg.sender]:
                                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            claimable[msg.sender] += arg1
                                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                totalOwed += multiplier * arg1 / 100
                                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    sub_f8757ba3 += arg1
                                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                    else:
                                                                                                                        emit RoundChange(3);
                                                                                                                        stor10 = 1
                                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                                    else:
                                                                                                        if participants + 1 < participants:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            participants++
                                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                claimable[msg.sender] += arg1
                                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        sub_f8757ba3 += arg1
                                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                        else:
                                                                                                                            emit RoundChange(3);
                                                                                                                            stor10 = 1
                                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                                    else:
                                                                                        if totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if totalOwed > tokenTarget:
                                                                                                revert with 0, 'sold out'
                                                                                            else:
                                                                                                if claimable[msg.sender]:
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                                                else:
                                                                                                    if participants + 1 < participants:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        participants++
                                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            claimable[msg.sender] += arg1
                                                                                                            if totalOwed < totalOwed:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    sub_f8757ba3 += arg1
                                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                    else:
                                                                                                                        emit RoundChange(3);
                                                                                                                        stor10 = 1
                                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                    else:
                                        if stor5[msg.sender].field_0 <= 0:
                                            revert with 0, 'you are not whitelisted'
                                        else:
                                            if arg1 <= 0:
                                                revert with 0, 'amount too low'
                                            else:
                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if arg1 + sub_f8757ba3 > sub_3ba94b7a:
                                                        revert with 0, 'target already hit'
                                                    else:
                                                        if stor6[msg.sender]:
                                                            if arg1 > stor5[msg.sender].field_0:
                                                                revert with 0, 'purchase cap hit'
                                                            else:
                                                                stor5[msg.sender].field_0 -= arg1
                                                                require ext_code.size(stableCoinAddress)
                                                                call stableCoinAddress.0x23b872dd with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, this.address, arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0]
                                                                    if arg1:
                                                                        if multiplier * arg1 / arg1 != multiplier:
                                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                        else:
                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                    revert with 0, 'sold out'
                                                                                else:
                                                                                    if claimable[msg.sender]:
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                totalOwed += multiplier * arg1 / 100
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                    else:
                                                                                        if participants + 1 < participants:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            participants++
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                    else:
                                                                        if totalOwed < totalOwed:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if totalOwed > tokenTarget:
                                                                                revert with 0, 'sold out'
                                                                            else:
                                                                                if claimable[msg.sender]:
                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        claimable[msg.sender] += arg1
                                                                                        if totalOwed < totalOwed:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                sub_f8757ba3 += arg1
                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                else:
                                                                                                    emit RoundChange(3);
                                                                                                    stor10 = 1
                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                                else:
                                                                                    if participants + 1 < participants:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        participants++
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                        else:
                                                            stor6[msg.sender] = 1
                                                            if uint256(sub_f1f6bf0f[msg.sender]):
                                                                if 4 * uint256(sub_f1f6bf0f[msg.sender]) / uint256(sub_f1f6bf0f[msg.sender]) != 4:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                33,
                                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[197 len 31]
                                                                else:
                                                                    stor5[msg.sender].field_0 = 0
                                                                    stor5[msg.sender].field_2 = Mask(254, 0, sub_f1f6bf0f[msg.sender])
                                                                    if arg1 > stor5[msg.sender].field_0:
                                                                        revert with 0, 'purchase cap hit'
                                                                    else:
                                                                        stor5[msg.sender].field_0 -= arg1
                                                                        require ext_code.size(stableCoinAddress)
                                                                        call stableCoinAddress.0x23b872dd with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, this.address, arg1
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0]
                                                                            if arg1:
                                                                                if multiplier * arg1 / arg1 != multiplier:
                                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                                else:
                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                            revert with 0, 'sold out'
                                                                                        else:
                                                                                            if claimable[msg.sender]:
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                                            else:
                                                                                                if participants + 1 < participants:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    participants++
                                                                                                    if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        claimable[msg.sender] += arg1
                                                                                                        if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            totalOwed += multiplier * arg1 / 100
                                                                                                            if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                sub_f8757ba3 += arg1
                                                                                                                if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                                else:
                                                                                                                    emit RoundChange(3);
                                                                                                                    stor10 = 1
                                                                                                                    emit EndUnlockedEvent(block.timestamp);
                                                                            else:
                                                                                if totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if totalOwed > tokenTarget:
                                                                                        revert with 0, 'sold out'
                                                                                    else:
                                                                                        if claimable[msg.sender]:
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                                        else:
                                                                                            if participants + 1 < participants:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                participants++
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                            else:
                                                                stor5[msg.sender].field_0 = 0
                                                                if arg1 > stor5[msg.sender].field_0:
                                                                    revert with 0, 'purchase cap hit'
                                                                else:
                                                                    stor5[msg.sender].field_0 -= arg1
                                                                    require ext_code.size(stableCoinAddress)
                                                                    call stableCoinAddress.0x23b872dd with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, this.address, arg1
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0]
                                                                        if arg1:
                                                                            if multiplier * arg1 / arg1 != multiplier:
                                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                                            else:
                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if (multiplier * arg1 / 100) + totalOwed > tokenTarget:
                                                                                        revert with 0, 'sold out'
                                                                                    else:
                                                                                        if claimable[msg.sender]:
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    totalOwed += multiplier * arg1 / 100
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
                                                                                        else:
                                                                                            if participants + 1 < participants:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                participants++
                                                                                                if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    claimable[msg.sender] += arg1
                                                                                                    if (multiplier * arg1 / 100) + totalOwed < totalOwed:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        totalOwed += multiplier * arg1 / 100
                                                                                                        if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            sub_f8757ba3 += arg1
                                                                                                            if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                            else:
                                                                                                                emit RoundChange(3);
                                                                                                                stor10 = 1
                                                                                                                emit EndUnlockedEvent(block.timestamp);
                                                                        else:
                                                                            if totalOwed < totalOwed:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if totalOwed > tokenTarget:
                                                                                    revert with 0, 'sold out'
                                                                                else:
                                                                                    if claimable[msg.sender]:
                                                                                        if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            claimable[msg.sender] += arg1
                                                                                            if totalOwed < totalOwed:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    sub_f8757ba3 += arg1
                                                                                                    if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                    else:
                                                                                                        emit RoundChange(3);
                                                                                                        stor10 = 1
                                                                                                        emit EndUnlockedEvent(block.timestamp);
                                                                                    else:
                                                                                        if participants + 1 < participants:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            participants++
                                                                                            if arg1 + claimable[msg.sender] < claimable[msg.sender]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                claimable[msg.sender] += arg1
                                                                                                if totalOwed < totalOwed:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if arg1 + sub_f8757ba3 < sub_f8757ba3:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        sub_f8757ba3 += arg1
                                                                                                        if sub_3ba94b7a != arg1 + sub_f8757ba3:
                                                                                                        else:
                                                                                                            emit RoundChange(3);
                                                                                                            stor10 = 1
                                                                                                            emit EndUnlockedEvent(block.timestamp);
}



}
