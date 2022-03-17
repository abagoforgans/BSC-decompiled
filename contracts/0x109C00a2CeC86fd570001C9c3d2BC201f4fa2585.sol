contract main {




// =====================  Runtime code  =====================


#
#  - sub_aed35147(?)
#  - sub_efb646c4(?)
#
const currentDateIndex = uint32(block.timestamp / 24 * 3600)


address bonusTokenAddress;
uint256 sub_579fc8b5;
mapping of uint256 sub_5322facb;
mapping of uint256 sub_de7f76fb;
array of address sub_dec8c2bf;
array of uint256 sub_3b286229;
array of address sub_50539f55;
array of address sub_95e0159e;
array of uint256 sub_05c0fd31;
array of uint256 sub_1bd4039d;
array of uint256 sub_3d812727;
array of uint256 sub_c46943fe;
array of uint256 sub_6106c6fc;
uint256 sub_d52ed72f;
mapping of uint256 sub_575ac9ee;
uint16 stor66;
uint16 stor66; offset 16
uint32 sub_3fbc7ad4;
mapping of uint256 stor67;
mapping of uint256 sub_4b1ce612;
mapping of uint256 sub_93532119;
uint256 sub_ddf2fb65;
mapping of uint8 stor71;
uint256 sub_d4e398c9;
address stakeContractAddress;
mapping of uint256 sub_1ecd525d;
mapping of uint256 sub_dd675df3;
mapping of uint256 myAmountSwapped1;
mapping of uint8 stor77;
address governorAddress;
mapping of address miningDifficulty;
mapping of uint256 stor99;

function sub_05c0fd31(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_05c0fd31.length
    return sub_05c0fd31[arg1]
}

function governor() {
    return governorAddress
}

function getMiningDifficulty() {
    return uint256(miningDifficulty['Bounce::MiningDifficulty'])
}

function getBonusToken() {
    return address(miningDifficulty['Bounce::BonusToken'])
}

function stakeContract() {
    return stakeContractAddress
}

function getTxFeeRatio() {
    return uint256(miningDifficulty['Bounce::TxFeeRatio'])
}

function sub_1bd4039d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1bd4039d.length
    return sub_1bd4039d[arg1]
}

function sub_1ecd525d(?) {
    require calldata.size - 4 >= 32
    return sub_1ecd525d[arg1]
}

function sub_20cffa9d(?) {
    return uint256(miningDifficulty['Bounce::TotalBonusDays'])
}

function myAmountSwapped1(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return myAmountSwapped1[arg1][arg2]
}

function sub_3b286229(?) {
    return sub_3b286229[arg1][0 len sub_3b286229[arg1].length]
}

function sub_3d812727(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3d812727.length
    return sub_3d812727[arg1]
}

function sub_3fbc7ad4(?) {
    return sub_3fbc7ad4
}

function bonusToken() {
    return bonusTokenAddress
}

function sub_4b1ce612(?) {
    require calldata.size - 4 >= 64
    return sub_4b1ce612[arg1][arg2]
}

function sub_50539f55(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_50539f55.length
    return sub_50539f55[arg1]
}

function getConfig(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return uint256(miningDifficulty[arg1 xor arg2])
}

function sub_5322facb(?) {
    require calldata.size - 4 >= 64
    return sub_5322facb[arg1][arg2]
}

function sub_575ac9ee(?) {
    require calldata.size - 4 >= 32
    return sub_575ac9ee[arg1]
}

function sub_579fc8b5(?) {
    return sub_579fc8b5
}

function sub_6106c6fc(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6106c6fc.length
    return sub_6106c6fc[arg1]
}

function getMinValueOfBotHolder() {
    return uint256(miningDifficulty['Bounce::MinValueOfBotHolder'])
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(miningDifficulty[arg1])
}

function sub_74ffc226(?) {
    require calldata.size - 4 >= 32
    return bool(stor71[arg1])
}

function getBonusPerDay() {
    return uint256(miningDifficulty['Bounce::BonusPerDay'])
}

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return uint256(miningDifficulty[arg1 xor arg2])
}

function sub_93532119(?) {
    require calldata.size - 4 >= 32
    return sub_93532119[arg1]
}

function sub_95e0159e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_95e0159e.length
    return sub_95e0159e[arg1]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor77[arg1])
}

function sub_c46943fe(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c46943fe.length
    return sub_c46943fe[arg1]
}

function sub_d4e398c9(?) {
    return sub_d4e398c9
}

function sub_d52ed72f(?) {
    return sub_d52ed72f
}

function sub_dd675df3(?) {
    require calldata.size - 4 >= 32
    return sub_dd675df3[arg1]
}

function sub_ddf2fb65(?) {
    return sub_ddf2fb65
}

function sub_de7f76fb(?) {
    require calldata.size - 4 >= 32
    return sub_de7f76fb[arg1]
}

function sub_dec8c2bf(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_dec8c2bf.length
    return sub_dec8c2bf[arg1]
}

function getStakeContract() {
    return address(miningDifficulty['Bounce::StakeContract'])
}

function _fallback() payable {
    revert
}

function isInWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    return not not uint256(miningDifficulty['Bounce::Whitelist' xor arg1])
}

function renounceGovernorship() {
    require msg.sender == governorAddress
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function setConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    if uint256(miningDifficulty[arg1]) != arg2:
        uint256(miningDifficulty[arg1]) = arg2
}

function transferGovernorship(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == governorAddress
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function setConfig(bytes32 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == governorAddress
    if uint256(miningDifficulty[arg1 xor arg2]) != arg3:
        uint256(miningDifficulty[arg1 xor arg2]) = arg3
}

function setConfig(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == governorAddress
    if uint256(miningDifficulty[arg1 xor arg2]) != arg3:
        uint256(miningDifficulty[arg1 xor arg2]) = arg3
}

function sub_2848375a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor67[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function approvePool(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ba167067(?) {
    require calldata.size - 4 >= 32
    if uint256(miningDifficulty['Bounce::Whitelist' xor msg.sender]):
        if sub_4b1ce612[block.timestamp / 24 * 3600 << 224][address(arg1)] + 1 < sub_4b1ce612[block.timestamp / 24 * 3600 << 224][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_4b1ce612[block.timestamp / 24 * 3600 << 224][address(arg1)]++
        if sub_93532119[block.timestamp / 24 * 3600 << 224] + 1 < sub_93532119[block.timestamp / 24 * 3600 << 224]:
            revert with 0, 'SafeMath: addition overflow'
        sub_93532119[block.timestamp / 24 * 3600 << 224]++
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        if governorAddress:
            revert with 0, 'invalid governor'
    governorAddress = arg1
    uint16(stor66.field_0) = 18477
    uint16(stor66.field_16) = 0
    uint256(miningDifficulty['Bounce::TxFeeRatio']) = 25 * 10^14
    uint256(miningDifficulty['Bounce::MiningDifficulty']) = 50 * 10^18
    uint256(miningDifficulty['Bounce::BonusPerDay']) = 1536 * 10^16
    uint256(miningDifficulty['Bounce::MinValueOfBotHolder']) = 10^17
    uint256(miningDifficulty['Bounce::TotalBonusDays']) = 1470
    uint256(miningDifficulty['Bounce::BonusToken']) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
    uint256(miningDifficulty['Bounce::StakeContract']) = 0x1dd665ba1591756aa87157f082f175bdca9fb91a
    if uint256(miningDifficulty['Bounce::Whitelist' xor 0x6b6a36c7d01952a1dd3829a4ac952f30e31c57d0]) != 1:
        uint256(miningDifficulty['Bounce::Whitelist' xor 0x6b6a36c7d01952a1dd3829a4ac952f30e31c57d0]) = 1
}

function totalBonus() {
    if uint32((block.timestamp / 24 * 3600) - 1) > uint256(miningDifficulty['Bounce::TotalBonusDays']) + sub_3fbc7ad4:
        return 0
    if not sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]:
        return 0
    if not uint256(miningDifficulty['Bounce::BonusPerDay']):
        if sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]:
            return (0 / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224])
    else:
        if uint256(miningDifficulty['Bounce::BonusPerDay']):
            if uint256(miningDifficulty['Bounce::BonusPerDay']) * sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] / uint256(miningDifficulty['Bounce::BonusPerDay']) != sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)]:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]:
                return (uint256(miningDifficulty['Bounce::BonusPerDay']) * sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224])
    revert
}

function sub_7327ad74(?) payable {
    if not sub_575ac9ee[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe7468697320706f6f6c206973206e6f74206f776e656420627920746869732061646472657373,
                    mem[203 len 25]
    if sub_575ac9ee[address(msg.sender)] - 1 >= sub_d52ed72f:
        revert with 0, 'this pool does not exist.'
    require sub_575ac9ee[address(msg.sender)] - 1 < sub_6106c6fc.length
    if sub_6106c6fc[stor65[address(msg.sender)]] > block.timestamp:
        revert with 0, 'this pool is not closed.'
    require sub_575ac9ee[address(msg.sender)] - 1 < sub_3d812727.length
    require sub_575ac9ee[address(msg.sender)] - 1 < sub_05c0fd31.length
    if sub_05c0fd31[stor65[address(msg.sender)]] <= sub_3d812727[stor65[address(msg.sender)]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e74686520746f74616c20616d6f756e74206f66207468697320706f6f6c2069732073776170706564,
                    mem[205 len 23]
    require sub_575ac9ee[address(msg.sender)] - 1 < sub_3d812727.length
    require sub_575ac9ee[address(msg.sender)] - 1 < sub_05c0fd31.length
    sub_575ac9ee[address(msg.sender)] = 0
    if sub_05c0fd31[stor65[address(msg.sender)]] - sub_3d812727[stor65[address(msg.sender)]] > 0:
        require sub_575ac9ee[address(msg.sender)] - 1 < sub_50539f55.length
        require ext_code.size(sub_50539f55[stor65[address(msg.sender)]])
        call sub_50539f55[stor65[address(msg.sender)]].0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_05c0fd31[stor65[address(msg.sender)]] - sub_3d812727[stor65[address(msg.sender)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'token transfer failed.'
    emit 0xa2a0f38c: msg.sender, sub_05c0fd31[stor65[address(msg.sender)]] - sub_3d812727[stor65[address(msg.sender)]]
}

function sub_48695482(?) {
    if uint32((block.timestamp / 24 * 3600) - 1) > uint256(miningDifficulty['Bounce::TotalBonusDays']) + sub_3fbc7ad4:
        emit 0x4e69fdc4: msg.sender, 0
    else:
        if not sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]:
            emit 0x4e69fdc4: msg.sender, 0
        else:
            if not uint256(miningDifficulty['Bounce::BonusPerDay']):
                if sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]
                if 0 / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224] > 0:
                    sub_5322facb[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] = 0
                    sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] = 0
                    require ext_code.size(address(miningDifficulty['Bounce::BonusToken']))
                    call address(miningDifficulty['Bounce::BonusToken']).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'token transfer failed.'
                emit 0x4e69fdc4: msg.sender, 0 / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]
            else:
                require uint256(miningDifficulty['Bounce::BonusPerDay'])
                if uint256(miningDifficulty['Bounce::BonusPerDay']) * sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] / uint256(miningDifficulty['Bounce::BonusPerDay']) != sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)]:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]
                if uint256(miningDifficulty['Bounce::BonusPerDay']) * sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224] > 0:
                    sub_5322facb[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] = 0
                    sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] = 0
                    require ext_code.size(address(miningDifficulty['Bounce::BonusToken']))
                    call address(miningDifficulty['Bounce::BonusToken']).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint256(miningDifficulty['Bounce::BonusPerDay']) * sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'token transfer failed.'
                emit 0x4e69fdc4: msg.sender, uint256(miningDifficulty['Bounce::BonusPerDay']) * sub_4b1ce612[(block.timestamp / 24 * 3600) - 1 << 224][address(msg.sender)] / sub_93532119[(block.timestamp / 24 * 3600) - 1 << 224]
}

function sub_b3b60a53(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_575ac9ee[address(msg.sender)] > 0:
        require sub_575ac9ee[address(msg.sender)] - 1 < sub_c46943fe.length
        require sub_575ac9ee[address(msg.sender)] - 1 < sub_1bd4039d.length
        if sub_1bd4039d[stor65[address(msg.sender)]] > sub_c46943fe[stor65[address(msg.sender)]]:
            revert with 0, 
                        32,
                        35,
                        0x2e6120706f6f6c20686173206372656174656420627920746869732061646472657373,
                        mem[ceil32(arg1.length) + 231 len 29]
        sub_575ac9ee[address(msg.sender)] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 67
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] > 0:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 67
        require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] - 1 < sub_dec8c2bf.length
        if sub_575ac9ee[stor55[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]]] > 0:
            require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] - 1 < sub_6106c6fc.length
            if sub_6106c6fc[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]] > block.timestamp:
                revert with 0, 
                            32,
                            37,
                            0x2e61206c69766520706f6f6c2068617320637265617465642062792074686973206e616d65,
                            mem[ceil32(arg1.length) + 233 len 27]
    if arg2 == arg3:
        revert with 0, 
                    32,
                    34,
                    0x31746f6b656e3020616e6420746f6b656e312069732073616d652061646472657373,
                    mem[ceil32(arg1.length) + 230 len 30]
    if arg3:
        revert with 0, 'token1 is not ETH.'
    if not arg4:
        revert with 0, 
                    32,
                    34,
                    0x777468652076616c7565206f6620616d6f756e74546f74616c30206973207a65726f,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not arg5:
        revert with 0, 
                    32,
                    34,
                    0x2e7468652076616c7565206f6620616d6f756e74546f74616c31206973207a65726f,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not arg6:
        revert with 0, 'the value of duration is zero.'
    if arg1.length > 15:
        revert with 0, 'the length of name is too long'
    if not arg2:
        if arg4 != msg.value:
            revert with 0, 'invalid amount of ETH.'
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_dec8c2bf.length++
        sub_dec8c2bf[sub_dec8c2bf.length] = msg.sender
        sub_3b286229.length++
        sub_3b286229[sub_3b286229.length][] = Array(len=arg1.length, data=arg1[all])
        sub_50539f55.length++
        sub_50539f55[sub_50539f55.length] = arg2
        sub_95e0159e.length++
        sub_95e0159e[sub_95e0159e.length] = arg3
        sub_05c0fd31.length++
        sub_05c0fd31[sub_05c0fd31.length] = arg4
        sub_1bd4039d.length++
        sub_1bd4039d[sub_1bd4039d.length] = arg5
        sub_3d812727.length++
        sub_3d812727[sub_3d812727.length] = 0
        sub_c46943fe.length++
        sub_c46943fe[sub_c46943fe.length] = 0
        sub_6106c6fc.length++
        sub_6106c6fc[sub_6106c6fc.length] = block.timestamp + arg6
        sub_d52ed72f = sub_dec8c2bf.length
        sub_575ac9ee[address(msg.sender)] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 67
        stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 160] = 224
        mem[ceil32(arg1.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xe98fe843: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 384] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 416 len arg1.length % 32]
            emit 0xe98fe843: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 384 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    else:
        mem[ceil32(arg1.length) + 196] = arg4
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0x2e7472616e7366657220746f6b656e2066726f6d2063726561746f7220746f207468697320636f6e7472616374206661696c6564,
                        mem[ceil32(arg1.length) + 248 len 12]
        mem[ceil32(arg1.length) + 132] = this.address
        mem[ceil32(arg1.length) + 164] = 0
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), 0
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_dec8c2bf.length++
        sub_dec8c2bf[sub_dec8c2bf.length] = msg.sender
        sub_3b286229.length++
        sub_3b286229[sub_3b286229.length][] = Array(len=arg1.length, data=arg1[all])
        sub_50539f55.length++
        sub_50539f55[sub_50539f55.length] = arg2
        sub_95e0159e.length++
        sub_95e0159e[sub_95e0159e.length] = arg3
        sub_05c0fd31.length++
        sub_05c0fd31[sub_05c0fd31.length] = arg4
        sub_1bd4039d.length++
        sub_1bd4039d[sub_1bd4039d.length] = arg5
        sub_3d812727.length++
        sub_3d812727[sub_3d812727.length] = 0
        sub_c46943fe.length++
        sub_c46943fe[sub_c46943fe.length] = 0
        sub_6106c6fc.length++
        sub_6106c6fc[sub_6106c6fc.length] = block.timestamp + arg6
        sub_d52ed72f = sub_dec8c2bf.length
        sub_575ac9ee[address(msg.sender)] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 67
        stor[mem[ceil32(arg1.length) + 132 len arg1.length + 28]][0] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xe98fe843: 0, Mask(224, 0, msg.sender), 224, address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 384] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 416 len arg1.length % 32]
            emit 0xe98fe843: 0, Mask(224, 0, msg.sender), 224, address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 384 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}

function sub_5bb68afd(?) payable {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_575ac9ee[address(msg.sender)] > 0:
        require sub_575ac9ee[address(msg.sender)] - 1 < sub_c46943fe.length
        require sub_575ac9ee[address(msg.sender)] - 1 < sub_1bd4039d.length
        if sub_1bd4039d[stor65[address(msg.sender)]] > sub_c46943fe[stor65[address(msg.sender)]]:
            revert with 0, 
                        32,
                        35,
                        0x2e6120706f6f6c20686173206372656174656420627920746869732061646472657373,
                        mem[ceil32(arg1.length) + 231 len 29]
        sub_575ac9ee[address(msg.sender)] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 67
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] > 0:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 67
        require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] - 1 < sub_dec8c2bf.length
        if sub_575ac9ee[stor55[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]]] > 0:
            require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] - 1 < sub_6106c6fc.length
            if sub_6106c6fc[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]] > block.timestamp:
                revert with 0, 
                            32,
                            37,
                            0x2e61206c69766520706f6f6c2068617320637265617465642062792074686973206e616d65,
                            mem[ceil32(arg1.length) + 233 len 27]
    if arg2 == arg3:
        revert with 0, 
                    32,
                    34,
                    0x31746f6b656e3020616e6420746f6b656e312069732073616d652061646472657373,
                    mem[ceil32(arg1.length) + 230 len 30]
    if arg3:
        revert with 0, 'token1 is not ETH.'
    if not arg4:
        revert with 0, 
                    32,
                    34,
                    0x777468652076616c7565206f6620616d6f756e74546f74616c30206973207a65726f,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not arg5:
        revert with 0, 
                    32,
                    34,
                    0x2e7468652076616c7565206f6620616d6f756e74546f74616c31206973207a65726f,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not arg6:
        revert with 0, 'the value of duration is zero.'
    if arg1.length > 15:
        revert with 0, 'the length of name is too long'
    if not arg2:
        if arg4 != msg.value:
            revert with 0, 'invalid amount of ETH.'
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_dec8c2bf.length++
        sub_dec8c2bf[sub_dec8c2bf.length] = msg.sender
        sub_3b286229.length++
        sub_3b286229[sub_3b286229.length][] = Array(len=arg1.length, data=arg1[all])
        sub_50539f55.length++
        sub_50539f55[sub_50539f55.length] = arg2
        sub_95e0159e.length++
        sub_95e0159e[sub_95e0159e.length] = arg3
        sub_05c0fd31.length++
        sub_05c0fd31[sub_05c0fd31.length] = arg4
        sub_1bd4039d.length++
        sub_1bd4039d[sub_1bd4039d.length] = arg5
        sub_3d812727.length++
        sub_3d812727[sub_3d812727.length] = 0
        sub_c46943fe.length++
        sub_c46943fe[sub_c46943fe.length] = 0
        sub_6106c6fc.length++
        sub_6106c6fc[sub_6106c6fc.length] = block.timestamp + arg6
        sub_d52ed72f = sub_dec8c2bf.length
        sub_575ac9ee[address(msg.sender)] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 67
        stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 160] = 224
        mem[ceil32(arg1.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xe98fe843: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 384] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 416 len arg1.length % 32]
            emit 0xe98fe843: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 384 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    else:
        mem[ceil32(arg1.length) + 196] = arg4
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0x2e7472616e7366657220746f6b656e2066726f6d2063726561746f7220746f207468697320636f6e7472616374206661696c6564,
                        mem[ceil32(arg1.length) + 248 len 12]
        mem[ceil32(arg1.length) + 132] = this.address
        mem[ceil32(arg1.length) + 164] = 0
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), 0
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_dec8c2bf.length++
        sub_dec8c2bf[sub_dec8c2bf.length] = msg.sender
        sub_3b286229.length++
        sub_3b286229[sub_3b286229.length][] = Array(len=arg1.length, data=arg1[all])
        sub_50539f55.length++
        sub_50539f55[sub_50539f55.length] = arg2
        sub_95e0159e.length++
        sub_95e0159e[sub_95e0159e.length] = arg3
        sub_05c0fd31.length++
        sub_05c0fd31[sub_05c0fd31.length] = arg4
        sub_1bd4039d.length++
        sub_1bd4039d[sub_1bd4039d.length] = arg5
        sub_3d812727.length++
        sub_3d812727[sub_3d812727.length] = 0
        sub_c46943fe.length++
        sub_c46943fe[sub_c46943fe.length] = 0
        sub_6106c6fc.length++
        sub_6106c6fc[sub_6106c6fc.length] = block.timestamp + arg6
        sub_d52ed72f = sub_dec8c2bf.length
        sub_575ac9ee[address(msg.sender)] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 67
        stor[mem[ceil32(arg1.length) + 132 len arg1.length + 28]][0] = sub_d52ed72f
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xe98fe843: 0, Mask(224, 0, msg.sender), 224, address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 384] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 416 len arg1.length % 32]
            emit 0xe98fe843: 0, Mask(224, 0, msg.sender), 224, address(arg2), address(arg3), arg4, arg5, block.timestamp + arg6, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 384 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    stor71[stor64 - 1] = uint8(arg7)
    if arg8:
        sub_1ecd525d[stor64 - 1] = arg8
    if arg9:
        sub_dd675df3[stor64 - 1] = arg9
}



}
