contract main {




// =====================  Runtime code  =====================


#
#  - takeAllWithBlock()
#  - sub_2bed3643(?)
#  - sub_4a8378b3(?)
#  - mintAll()
#  - sub_90ce4a4c(?)
#  - takeAll()
#
address configAddress;
address owner;
uint256 mintCumulation;
uint256 amountPerBlock;
uint256 lastRewardBlock;
uint256 sub_879325e5;
uint256 sub_9d2e83a6;
uint256 sub_a6eb2030;
uint256 sub_7629d16e;
uint256 sub_ee44212d;
uint256 sub_21b13b10;
uint256 sub_6650c067;
uint256 sub_e8c0b64d;
uint256 sub_83753284;
uint256 sub_7b8a14df;
uint256 sub_2faf4acf;
uint256 sub_8f5f4f81;
mapping of struct lenders;
mapping of struct borrowers;
array of address sub_6085c7df;
array of address borrowerList;
uint256 sub_8601eae9;
uint256 sub_2537bfe2;
array of address stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function sub_21b13b10(?) payable {
    return sub_21b13b10
}

function sub_2537bfe2(?) payable {
    return sub_2537bfe2
}

function lenders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lenders[arg1].field_0, lenders[arg1].field_256, lenders[arg1].field_512, lenders[arg1].field_768
}

function sub_2faf4acf(?) payable {
    return sub_2faf4acf
}

function amountPerBlock() payable {
    return amountPerBlock
}

function sub_6085c7df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6085c7df.length
    return sub_6085c7df[arg1]
}

function sub_6650c067(?) payable {
    return sub_6650c067
}

function sub_7629d16e(?) payable {
    return sub_7629d16e
}

function config() payable {
    return configAddress
}

function sub_7b8a14df(?) payable {
    return sub_7b8a14df
}

function sub_83753284(?) payable {
    return sub_83753284
}

function sub_8601eae9(?) payable {
    return sub_8601eae9
}

function sub_879325e5(?) payable {
    return sub_879325e5
}

function owner() payable {
    return owner
}

function sub_8f5f4f81(?) payable {
    return sub_8f5f4f81
}

function sub_9d2e83a6(?) payable {
    return sub_9d2e83a6
}

function sub_a6eb2030(?) payable {
    return sub_a6eb2030
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function borrowerList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < borrowerList.length
    return borrowerList[arg1]
}

function borrowers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return borrowers[arg1].field_0, borrowers[arg1].field_256, borrowers[arg1].field_512, borrowers[arg1].field_768
}

function mintCumulation() payable {
    return mintCumulation
}

function sub_e8c0b64d(?) payable {
    return sub_e8c0b64d
}

function sub_ee44212d(?) payable {
    return sub_ee44212d
}

function _fallback() payable {
    revert
}

function interestsPerBlock() payable {
    return sub_7629d16e, sub_a6eb2030
}

function getLenderProductivity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lenders[address(arg1)].field_0, sub_879325e5
}

function getBorrowerProductivity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return borrowers[address(arg1)].field_0, sub_9d2e83a6
}

function setupConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWNER FORBIDDEN'
    configAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
}

function changeInterestRatePerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Governor FORBIDDEN'
    if amountPerBlock == arg1:
        revert with 0, 'AMOUNT_PER_BLOCK_NO_CHANGE'
    if block.number > lastRewardBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.number - lastRewardBlock:
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        else:
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) > 0:
                                if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10 < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10
                                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > 0:
                                if ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000
                                if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        lastRewardBlock = block.number
    amountPerBlock = arg1
    emit InterestRatePerBlockChanged(amountPerBlock, arg1);
    return 1
}

function sub_e138a672(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Governor FORBIDDEN'
    if sub_6650c067 == arg1:
        revert with 0, 'POWER_NO_CHANGE'
    if arg1 > 10000:
        revert with 0, 'INVALID_POWER_VALUE'
    if block.number > lastRewardBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.number - lastRewardBlock:
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        else:
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) > 0:
                                if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10 < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10
                                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > 0:
                                if ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000
                                if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        lastRewardBlock = block.number
    sub_6650c067 = arg1
    emit BorrowPowerChange(sub_6650c067, arg1);
}

function sub_e34da7ed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(configAddress)
    staticcall configAddress.platform() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'PLATFORM FORBIDDEN'
    if arg2 <= 0:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    if arg2 > lenders[address(arg1)].field_0:
        revert with 0, 'FORBIDDEN'
    if block.number > lastRewardBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.number - lastRewardBlock:
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        else:
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) > 0:
                                if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10 < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10
                                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > 0:
                                if ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000
                                if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        lastRewardBlock = block.number
    if lenders[address(arg1)].field_0:
        if not lenders[address(arg1)].field_0:
            if lenders[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -lenders[address(arg1)].field_256 + lenders[address(arg1)].field_512 < lenders[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            lenders[address(arg1)].field_512 -= lenders[address(arg1)].field_256
            if -lenders[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation -= lenders[address(arg1)].field_256
        else:
            if sub_a6eb2030 * lenders[address(arg1)].field_0 / lenders[address(arg1)].field_0 != sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(arg1)].field_256 > sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + lenders[address(arg1)].field_512 < lenders[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            lenders[address(arg1)].field_512 = (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + lenders[address(arg1)].field_512
            if (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation = (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + mintCumulation
        if not lenders[address(arg1)].field_0:
            lenders[address(arg1)].field_256 = 0
        else:
            if sub_a6eb2030 * lenders[address(arg1)].field_0 / lenders[address(arg1)].field_0 != sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            lenders[address(arg1)].field_256 = sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12
    if arg2 > lenders[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow', 0
    lenders[address(arg1)].field_0 -= arg2
    if not lenders[address(arg1)].field_0 - arg2:
        lenders[address(arg1)].field_256 = 0
    else:
        if (lenders[address(arg1)].field_0 * sub_a6eb2030) - (arg2 * sub_a6eb2030) / lenders[address(arg1)].field_0 - arg2 != sub_a6eb2030:
            revert with 0, 'SafeMath: multiplication overflow'
        lenders[address(arg1)].field_256 = (lenders[address(arg1)].field_0 * sub_a6eb2030) - (arg2 * sub_a6eb2030) / 10^12
    if arg2 > sub_879325e5:
        revert with 0, 'SafeMath: subtraction overflow', 0
    sub_879325e5 -= arg2
    emit LenderProductivityDecreased(arg2, address(arg1));
    return 1
}

function sub_9fab3e6e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(configAddress)
    staticcall configAddress.platform() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'PLATFORM FORBIDDEN'
    if arg2 <= 0:
        revert with 0, 'PRODUCTIVITY_VALUE_MUST_BE_GREATER_THAN_ZERO'
    if block.number > lastRewardBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.number - lastRewardBlock:
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        else:
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) > 0:
                                if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10 < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10
                                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > 0:
                                if ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000
                                if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        lastRewardBlock = block.number
    if lenders[address(arg1)].field_0:
        if not lenders[address(arg1)].field_0:
            if lenders[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -lenders[address(arg1)].field_256 + lenders[address(arg1)].field_512 < lenders[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            lenders[address(arg1)].field_512 -= lenders[address(arg1)].field_256
            if -lenders[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation -= lenders[address(arg1)].field_256
        else:
            if sub_a6eb2030 * lenders[address(arg1)].field_0 / lenders[address(arg1)].field_0 != sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(arg1)].field_256 > sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + lenders[address(arg1)].field_512 < lenders[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            lenders[address(arg1)].field_512 = (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + lenders[address(arg1)].field_512
            if (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation = (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 + mintCumulation
        if not lenders[address(arg1)].field_0:
            lenders[address(arg1)].field_256 = 0
        else:
            if sub_a6eb2030 * lenders[address(arg1)].field_0 / lenders[address(arg1)].field_0 != sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            lenders[address(arg1)].field_256 = sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12
    if not lenders[address(arg1)].field_768:
        sub_6085c7df.length++
        sub_6085c7df[sub_6085c7df.length] = address(arg1)
        sub_8601eae9++
        lenders[address(arg1)].field_768 = sub_8601eae9 + 1
    if arg2 + sub_879325e5 < sub_879325e5:
        revert with 0, 'SafeMath: addition overflow'
    sub_879325e5 += arg2
    if arg2 + lenders[address(arg1)].field_0 < lenders[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    lenders[address(arg1)].field_0 += arg2
    if not arg2 + lenders[address(arg1)].field_0:
        lenders[address(arg1)].field_256 = 0
    else:
        if (arg2 * sub_a6eb2030) + (lenders[address(arg1)].field_0 * sub_a6eb2030) / arg2 + lenders[address(arg1)].field_0 != sub_a6eb2030:
            revert with 0, 'SafeMath: multiplication overflow'
        lenders[address(arg1)].field_256 = (arg2 * sub_a6eb2030) + (lenders[address(arg1)].field_0 * sub_a6eb2030) / 10^12
    emit LenderProductivityIncreased(arg2, address(arg1));
    return 1
}

function sub_8626cdb3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(configAddress)
    staticcall configAddress.platform() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'PLATFORM FORBIDDEN'
    if arg2 <= 0:
        revert with 0, 'PRODUCTIVITY_VALUE_MUST_BE_GREATER_THAN_ZERO'
    if block.number > lastRewardBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.number - lastRewardBlock:
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        else:
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_e8c0b64d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) > 0:
                                if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10 < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_21b13b10
                                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > 0:
                                if ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000
                                if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6
            else:
                if sub_21b13b10 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_9d2e83a6 + sub_879325e5 < sub_879325e5:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9d2e83a6 + sub_879325e5:
                    if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if sub_879325e5 != 0:
                            if ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) > 0:
                                if ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) < sub_21b13b10:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_21b13b10 = ext_call.return_data[0] - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000)
                                if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += 0 / sub_879325e5
                                else:
                                    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_879325e5:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a6eb2030 += (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5
                        if sub_9d2e83a6:
                            if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > 0:
                                if ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) + sub_ee44212d < sub_ee44212d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ee44212d += (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000
                                if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 0 / sub_9d2e83a6
                                else:
                                    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not sub_9d2e83a6:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_7629d16e += 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6
        lastRewardBlock = block.number
    if borrowers[address(arg1)].field_0:
        if not borrowers[address(arg1)].field_0:
            if borrowers[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -borrowers[address(arg1)].field_256 + borrowers[address(arg1)].field_512 < borrowers[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            borrowers[address(arg1)].field_512 -= borrowers[address(arg1)].field_256
            if -borrowers[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation -= borrowers[address(arg1)].field_256
        else:
            if sub_7629d16e * borrowers[address(arg1)].field_0 / borrowers[address(arg1)].field_0 != sub_7629d16e:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowers[address(arg1)].field_256 > sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256 + borrowers[address(arg1)].field_512 < borrowers[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            borrowers[address(arg1)].field_512 = (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256 + borrowers[address(arg1)].field_512
            if (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation = (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256 + mintCumulation
        if not borrowers[address(arg1)].field_0:
            borrowers[address(arg1)].field_256 = 0
        else:
            if sub_7629d16e * borrowers[address(arg1)].field_0 / borrowers[address(arg1)].field_0 != sub_7629d16e:
                revert with 0, 'SafeMath: multiplication overflow'
            borrowers[address(arg1)].field_256 = sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12
    if not borrowers[address(arg1)].field_768:
        borrowerList.length++
        storCE6D[stor20.length] = address(arg1)
        sub_2537bfe2++
        borrowers[address(arg1)].field_768 = sub_2537bfe2 + 1
    if arg2 + sub_9d2e83a6 < sub_9d2e83a6:
        revert with 0, 'SafeMath: addition overflow'
    sub_9d2e83a6 += arg2
    if arg2 + borrowers[address(arg1)].field_0 < borrowers[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    borrowers[address(arg1)].field_0 += arg2
    if not arg2 + borrowers[address(arg1)].field_0:
        borrowers[address(arg1)].field_256 = 0
    else:
        if (arg2 * sub_7629d16e) + (borrowers[address(arg1)].field_0 * sub_7629d16e) / arg2 + borrowers[address(arg1)].field_0 != sub_7629d16e:
            revert with 0, 'SafeMath: multiplication overflow'
        borrowers[address(arg1)].field_256 = (arg2 * sub_7629d16e) + (borrowers[address(arg1)].field_0 * sub_7629d16e) / 10^12
    emit BorrowerProductivityIncreased(arg2, address(arg1));
    return 1
}

function takeBorrowWithAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if not borrowers[address(arg1)].field_0:
            if borrowers[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                return 0
            if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if sub_7629d16e * borrowers[address(arg1)].field_0 / borrowers[address(arg1)].field_0 != sub_7629d16e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if borrowers[address(arg1)].field_256 > sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(arg1)].field_512 + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256:
            return 0
        if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if not sub_9d2e83a6:
        if not borrowers[address(arg1)].field_0:
            if borrowers[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                return 0
            if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if sub_7629d16e * borrowers[address(arg1)].field_0 / borrowers[address(arg1)].field_0 != sub_7629d16e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if borrowers[address(arg1)].field_256 > sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(arg1)].field_512 + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256:
            return 0
        if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.number - lastRewardBlock:
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not sub_9d2e83a6:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                revert with 0, 'SafeMath: addition overflow'
            if not borrowers[address(arg1)].field_0:
                if borrowers[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                    return 0
                if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowers[address(arg1)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
                return 0
            if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    else:
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                if not sub_9d2e83a6:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                    revert with 0, 'SafeMath: addition overflow'
                if not borrowers[address(arg1)].field_0:
                    if borrowers[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                        return 0
                    if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
                if (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
                    revert with 0, 'SafeMath: multiplication overflow'
                if borrowers[address(arg1)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(arg1)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
                    return 0
                if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                if not sub_9d2e83a6:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                    revert with 0, 'SafeMath: addition overflow'
                if not borrowers[address(arg1)].field_0:
                    if borrowers[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                        return 0
                    if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
                if (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
                    revert with 0, 'SafeMath: multiplication overflow'
                if borrowers[address(arg1)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(arg1)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
                    return 0
                if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_9d2e83a6:
                revert with 0, 'SafeMath: division by zero', 0
            if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                revert with 0, 'SafeMath: addition overflow'
            if not borrowers[address(arg1)].field_0:
                if borrowers[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                    return 0
                if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowers[address(arg1)].field_256 > (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(arg1)].field_512 + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
                return 0
            if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if sub_21b13b10 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
        if not sub_9d2e83a6:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
            revert with 0, 'SafeMath: addition overflow'
        if not borrowers[address(arg1)].field_0:
            if borrowers[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                return 0
            if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
            revert with 0, 'SafeMath: multiplication overflow'
        if borrowers[address(arg1)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
            return 0
        if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
        if not sub_9d2e83a6:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
            revert with 0, 'SafeMath: addition overflow'
        if not borrowers[address(arg1)].field_0:
            if borrowers[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
                return 0
            if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
            revert with 0, 'SafeMath: multiplication overflow'
        if borrowers[address(arg1)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
            return 0
        if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_9d2e83a6:
        revert with 0, 'SafeMath: division by zero', 0
    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
        revert with 0, 'SafeMath: addition overflow'
    if not borrowers[address(arg1)].field_0:
        if borrowers[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 < -borrowers[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256:
            return 0
        if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / borrowers[address(arg1)].field_0 != (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e:
        revert with 0, 'SafeMath: multiplication overflow'
    if borrowers[address(arg1)].field_256 > (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if borrowers[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(configAddress)
    staticcall configAddress.params(bytes32 rg1) with:
            gas gas_remaining wei
           args sub_83753284
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not borrowers[address(arg1)].field_512 + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256:
        return 0
    if (borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / borrowers[address(arg1)].field_512 + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12) - borrowers[address(arg1)].field_256 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((borrowers[address(arg1)].field_512 * ext_call.return_data[0]) + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(arg1)].field_0) + (sub_7629d16e * borrowers[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
}

function takeBorrowWithBlock() payable {
    if block.number <= lastRewardBlock:
        if not borrowers[address(msg.sender)].field_0:
            if borrowers[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                return 0, block.number
            if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if sub_7629d16e * borrowers[address(msg.sender)].field_0 / borrowers[address(msg.sender)].field_0 != sub_7629d16e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if borrowers[address(msg.sender)].field_256 > sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(msg.sender)].field_512 + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12) - borrowers[address(msg.sender)].field_256:
            return 0, block.number
        if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if not sub_9d2e83a6:
        if not borrowers[address(msg.sender)].field_0:
            if borrowers[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                return 0, block.number
            if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if sub_7629d16e * borrowers[address(msg.sender)].field_0 / borrowers[address(msg.sender)].field_0 != sub_7629d16e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if borrowers[address(msg.sender)].field_256 > sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(msg.sender)].field_512 + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12) - borrowers[address(msg.sender)].field_256:
            return 0, block.number
        if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_7629d16e * borrowers[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.number - lastRewardBlock:
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not sub_9d2e83a6:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                revert with 0, 'SafeMath: addition overflow'
            if not borrowers[address(msg.sender)].field_0:
                if borrowers[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                    return 0, block.number
                if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowers[address(msg.sender)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
                return 0, block.number
            if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
    else:
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                if not sub_9d2e83a6:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                    revert with 0, 'SafeMath: addition overflow'
                if not borrowers[address(msg.sender)].field_0:
                    if borrowers[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                        return 0, block.number
                    if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                           block.number
                if (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
                    revert with 0, 'SafeMath: multiplication overflow'
                if borrowers[address(msg.sender)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(msg.sender)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
                    return 0, block.number
                if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000:
                if not sub_9d2e83a6:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                    revert with 0, 'SafeMath: addition overflow'
                if not borrowers[address(msg.sender)].field_0:
                    if borrowers[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                        return 0, block.number
                    if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                           block.number
                if (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
                    revert with 0, 'SafeMath: multiplication overflow'
                if borrowers[address(msg.sender)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(msg.sender)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
                    return 0, block.number
                if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if 10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_9d2e83a6:
                revert with 0, 'SafeMath: division by zero', 0
            if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
                revert with 0, 'SafeMath: addition overflow'
            if not borrowers[address(msg.sender)].field_0:
                if borrowers[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                    return 0, block.number
                if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowers[address(msg.sender)].field_256 > (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(msg.sender)].field_512 + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
                return 0, block.number
            if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
    if sub_21b13b10 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
        if not sub_9d2e83a6:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
            revert with 0, 'SafeMath: addition overflow'
        if not borrowers[address(msg.sender)].field_0:
            if borrowers[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                return 0, block.number
            if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
            revert with 0, 'SafeMath: multiplication overflow'
        if borrowers[address(msg.sender)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
            return 0, block.number
        if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000:
        if not sub_9d2e83a6:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
            revert with 0, 'SafeMath: addition overflow'
        if not borrowers[address(msg.sender)].field_0:
            if borrowers[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
                return 0, block.number
            if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (0 / sub_9d2e83a6) + sub_7629d16e:
            revert with 0, 'SafeMath: multiplication overflow'
        if borrowers[address(msg.sender)].field_256 > (0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
            return 0, block.number
        if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if 10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_9d2e83a6:
        revert with 0, 'SafeMath: division by zero', 0
    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e < sub_7629d16e:
        revert with 0, 'SafeMath: addition overflow'
    if not borrowers[address(msg.sender)].field_0:
        if borrowers[address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 < -borrowers[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256:
            return 0, block.number
        if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / borrowers[address(msg.sender)].field_0 != (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6) + sub_7629d16e:
        revert with 0, 'SafeMath: multiplication overflow'
    if borrowers[address(msg.sender)].field_256 > (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if borrowers[address(msg.sender)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(configAddress)
    staticcall configAddress.params(bytes32 rg1) with:
            gas gas_remaining wei
           args sub_83753284
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not borrowers[address(msg.sender)].field_512 + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256:
        return 0, block.number
    if (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / borrowers[address(msg.sender)].field_512 + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12) - borrowers[address(msg.sender)].field_256 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (borrowers[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 / sub_9d2e83a6 * borrowers[address(msg.sender)].field_0) + (sub_7629d16e * borrowers[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (borrowers[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
           block.number
}

function takeLendWithAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if not lenders[address(arg1)].field_0:
            if lenders[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if sub_a6eb2030 * lenders[address(arg1)].field_0 / lenders[address(arg1)].field_0 != sub_a6eb2030:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if lenders[address(arg1)].field_256 > sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(arg1)].field_512 + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256:
            return 0
        if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if not sub_879325e5:
        if not lenders[address(arg1)].field_0:
            if lenders[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if sub_a6eb2030 * lenders[address(arg1)].field_0 / lenders[address(arg1)].field_0 != sub_a6eb2030:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if lenders[address(arg1)].field_256 > sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(arg1)].field_512 + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256:
            return 0
        if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(arg1)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.number - lastRewardBlock:
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not sub_879325e5:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                revert with 0, 'SafeMath: addition overflow'
            if not lenders[address(arg1)].field_0:
                if lenders[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                    return 0
                if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(arg1)].field_256 > (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    else:
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                if 0 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                    if not sub_879325e5:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                        revert with 0, 'SafeMath: addition overflow'
                    if not lenders[address(arg1)].field_0:
                        if lenders[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(configAddress)
                        staticcall configAddress.params(bytes32 rg1) with:
                                gas gas_remaining wei
                               args sub_83753284
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                            return 0
                        if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
                    if (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if lenders[address(arg1)].field_256 > (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if lenders[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
                        return 0
                    if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
                if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_879325e5:
                    revert with 0, 'SafeMath: division by zero', 0
                if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                    revert with 0, 'SafeMath: addition overflow'
                if not lenders[address(arg1)].field_0:
                    if lenders[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                        return 0
                    if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
                if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5) + sub_a6eb2030:
                    revert with 0, 'SafeMath: multiplication overflow'
                if lenders[address(arg1)].field_256 > ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(arg1)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(arg1)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
                    return 0
                if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                revert with 0, 'SafeMath: multiplication overflow'
            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                if not sub_879325e5:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                    revert with 0, 'SafeMath: addition overflow'
                if not lenders[address(arg1)].field_0:
                    if lenders[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                        return 0
                    if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
                if (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                    revert with 0, 'SafeMath: multiplication overflow'
                if lenders[address(arg1)].field_256 > (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(arg1)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
                    return 0
                if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_879325e5:
                revert with 0, 'SafeMath: division by zero', 0
            if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                revert with 0, 'SafeMath: addition overflow'
            if not lenders[address(arg1)].field_0:
                if lenders[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                    return 0
                if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(arg1)].field_256 > ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if sub_21b13b10 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
        if 0 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
            if not sub_879325e5:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                revert with 0, 'SafeMath: addition overflow'
            if not lenders[address(arg1)].field_0:
                if lenders[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                    return 0
                if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
            if (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(arg1)].field_256 > (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_879325e5:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
            revert with 0, 'SafeMath: addition overflow'
        if not lenders[address(arg1)].field_0:
            if lenders[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5) + sub_a6eb2030:
            revert with 0, 'SafeMath: multiplication overflow'
        if lenders[address(arg1)].field_256 > ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(arg1)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
            return 0
        if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
        revert with 0, 'SafeMath: multiplication overflow'
    if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
        if not sub_879325e5:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
            revert with 0, 'SafeMath: addition overflow'
        if not lenders[address(arg1)].field_0:
            if lenders[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
                return 0
            if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
        if (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
            revert with 0, 'SafeMath: multiplication overflow'
        if lenders[address(arg1)].field_256 > (0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
            return 0
        if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_879325e5:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
        revert with 0, 'SafeMath: addition overflow'
    if not lenders[address(arg1)].field_0:
        if lenders[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 < -lenders[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256:
            return 0
        if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / lenders[address(arg1)].field_0 != ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030:
        revert with 0, 'SafeMath: multiplication overflow'
    if lenders[address(arg1)].field_256 > ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lenders[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(configAddress)
    staticcall configAddress.params(bytes32 rg1) with:
            gas gas_remaining wei
           args sub_83753284
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not lenders[address(arg1)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256:
        return 0
    if (lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / lenders[address(arg1)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12) - lenders[address(arg1)].field_256 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((lenders[address(arg1)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(arg1)].field_0) + (sub_a6eb2030 * lenders[address(arg1)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(arg1)].field_256 * ext_call.return_data[0]) / 10000)
}

function takeLendWithBlock() payable {
    if block.number <= lastRewardBlock:
        if not lenders[address(msg.sender)].field_0:
            if lenders[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if sub_a6eb2030 * lenders[address(msg.sender)].field_0 / lenders[address(msg.sender)].field_0 != sub_a6eb2030:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if lenders[address(msg.sender)].field_256 > sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(msg.sender)].field_512 + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12) - lenders[address(msg.sender)].field_256:
            return 0, block.number
        if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if not sub_879325e5:
        if not lenders[address(msg.sender)].field_0:
            if lenders[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if sub_a6eb2030 * lenders[address(msg.sender)].field_0 / lenders[address(msg.sender)].field_0 != sub_a6eb2030:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if lenders[address(msg.sender)].field_256 > sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(msg.sender)].field_512 + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12) - lenders[address(msg.sender)].field_256:
            return 0, block.number
        if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0 / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.number - lastRewardBlock:
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not sub_879325e5:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                revert with 0, 'SafeMath: addition overflow'
            if not lenders[address(msg.sender)].field_0:
                if lenders[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                    return 0, block.number
                if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(msg.sender)].field_256 > (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
    else:
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) / block.number - lastRewardBlock != amountPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_e8c0b64d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ee44212d + sub_21b13b10 < sub_21b13b10:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) + sub_ee44212d + sub_21b13b10 <= ext_call.return_data[0]:
            if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                if 0 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                    if not sub_879325e5:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                        revert with 0, 'SafeMath: addition overflow'
                    if not lenders[address(msg.sender)].field_0:
                        if lenders[address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(configAddress)
                        staticcall configAddress.params(bytes32 rg1) with:
                                gas gas_remaining wei
                               args sub_83753284
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                            return 0, block.number
                        if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                               block.number
                    if (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if lenders[address(msg.sender)].field_256 > (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if lenders[address(msg.sender)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
                        return 0, block.number
                    if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                           block.number
                if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_879325e5:
                    revert with 0, 'SafeMath: division by zero', 0
                if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                    revert with 0, 'SafeMath: addition overflow'
                if not lenders[address(msg.sender)].field_0:
                    if lenders[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                        return 0, block.number
                    if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                           block.number
                if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5) + sub_a6eb2030:
                    revert with 0, 'SafeMath: multiplication overflow'
                if lenders[address(msg.sender)].field_256 > ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(msg.sender)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(msg.sender)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
                    return 0, block.number
                if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) != sub_6650c067:
                revert with 0, 'SafeMath: multiplication overflow'
            if (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000 > (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000):
                if not sub_879325e5:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                    revert with 0, 'SafeMath: addition overflow'
                if not lenders[address(msg.sender)].field_0:
                    if lenders[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(configAddress)
                    staticcall configAddress.params(bytes32 rg1) with:
                            gas gas_remaining wei
                           args sub_83753284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                        return 0, block.number
                    if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                           block.number
                if (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                    revert with 0, 'SafeMath: multiplication overflow'
                if lenders[address(msg.sender)].field_256 > (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(msg.sender)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
                    return 0, block.number
                if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / (block.number * amountPerBlock) - (lastRewardBlock * amountPerBlock) - ((block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_879325e5:
                revert with 0, 'SafeMath: division by zero', 0
            if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                revert with 0, 'SafeMath: addition overflow'
            if not lenders[address(msg.sender)].field_0:
                if lenders[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                    return 0, block.number
                if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(msg.sender)].field_256 > ((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * block.number * amountPerBlock) - (10^12 * lastRewardBlock * amountPerBlock) - (10^12 * (block.number * amountPerBlock * sub_6650c067) - (lastRewardBlock * amountPerBlock * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
    if sub_21b13b10 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ee44212d > ext_call.return_data[0] - sub_21b13b10:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
        if 0 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
            if not sub_879325e5:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
                revert with 0, 'SafeMath: addition overflow'
            if not lenders[address(msg.sender)].field_0:
                if lenders[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(configAddress)
                staticcall configAddress.params(bytes32 rg1) with:
                        gas gas_remaining wei
                       args sub_83753284
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                    return 0, block.number
                if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                       block.number
            if (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
                revert with 0, 'SafeMath: multiplication overflow'
            if lenders[address(msg.sender)].field_256 > (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_879325e5:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
            revert with 0, 'SafeMath: addition overflow'
        if not lenders[address(msg.sender)].field_0:
            if lenders[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5) + sub_a6eb2030:
            revert with 0, 'SafeMath: multiplication overflow'
        if lenders[address(msg.sender)].field_256 > ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(msg.sender)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
            return 0, block.number
        if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d != sub_6650c067:
        revert with 0, 'SafeMath: multiplication overflow'
    if (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000 > ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000):
        if not sub_879325e5:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
            revert with 0, 'SafeMath: addition overflow'
        if not lenders[address(msg.sender)].field_0:
            if lenders[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.params(bytes32 rg1) with:
                    gas gas_remaining wei
                   args sub_83753284
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
                return 0, block.number
            if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
                   block.number
        if (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != (0 / sub_879325e5) + sub_a6eb2030:
            revert with 0, 'SafeMath: multiplication overflow'
        if lenders[address(msg.sender)].field_256 > (0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
            return 0, block.number
        if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + ((0 / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if (10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / ext_call.return_data[0] - sub_21b13b10 - sub_ee44212d - ((ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_879325e5:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030 < sub_a6eb2030:
        revert with 0, 'SafeMath: addition overflow'
    if not lenders[address(msg.sender)].field_0:
        if lenders[address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 < -lenders[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.params(bytes32 rg1) with:
                gas gas_remaining wei
               args sub_83753284
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256:
            return 0, block.number
        if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
               block.number
    if ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / lenders[address(msg.sender)].field_0 != ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5) + sub_a6eb2030:
        revert with 0, 'SafeMath: multiplication overflow'
    if lenders[address(msg.sender)].field_256 > ((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lenders[address(msg.sender)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(configAddress)
    staticcall configAddress.params(bytes32 rg1) with:
            gas gas_remaining wei
           args sub_83753284
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not lenders[address(msg.sender)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256:
        return 0, block.number
    if (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / lenders[address(msg.sender)].field_512 + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12) - lenders[address(msg.sender)].field_256 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (lenders[address(msg.sender)].field_512 * ext_call.return_data[0]) + (((10^12 * ext_call.return_data[0]) - (10^12 * sub_21b13b10) - (10^12 * sub_ee44212d) - (10^12 * (ext_call.return_data[0] * sub_6650c067) - (sub_21b13b10 * sub_6650c067) - (sub_ee44212d * sub_6650c067) / 10000) / sub_879325e5 * lenders[address(msg.sender)].field_0) + (sub_a6eb2030 * lenders[address(msg.sender)].field_0) / 10^12 * ext_call.return_data[0]) - (lenders[address(msg.sender)].field_256 * ext_call.return_data[0]) / 10000, 
           block.number
}



}
