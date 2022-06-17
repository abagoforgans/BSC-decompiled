contract main {




// =====================  Runtime code  =====================


address stakingTokenAddress;
address rewardsTokenAddress;
uint256 yearLength;
uint256 APY;
mapping of uint256 stor4;
array of uint256 stor5;
mapping of uint256 sub_568d70cf;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 sub_70cb7b12;
uint256 totalStakedTokens;
uint256 sub_50b27949;
uint256 sub_68d41cac;
address owner;
address stor14;

function totalStakedTokens() payable {
    return totalStakedTokens
}

function sub_50b27949(?) payable {
    return sub_50b27949
}

function sub_568d70cf(?) payable {
    return sub_568d70cf[msg.sender]
}

function sub_68d41cac(?) payable {
    return sub_68d41cac
}

function sub_70cb7b12(?) payable {
    return sub_70cb7b12[msg.sender]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function owner() payable {
    return owner
}

function yearLength() payable {
    return yearLength
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function APY() payable {
    return APY
}

function _fallback() payable {
    revert
}

function sub_4b75918a(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_68d41cac = arg1
}

function sub_6c617dde(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_50b27949 = arg1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_98c25a38(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor14 = address(arg1)
}

function setStakingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stakingTokenAddress = arg1
}

function setRewardsToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    rewardsTokenAddress = arg1
}

function sub_3e7735c3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not yearLength:
        revert with 0, 18
    return (10^18 * arg1 / yearLength)
}

function setAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not yearLength:
        revert with 0, 18
    APY = 10^18 * arg1 / yearLength
}

function sub_320ae164(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == owner
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_064c7be9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call stor14.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fc3a2742(?) payable {
    require msg.sender == owner
    call stor14.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 1000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_81f956f1(?) payable {
    if sub_70cb7b12[msg.sender] > !sub_50b27949:
        revert with 0, 17
    if block.timestamp < sub_70cb7b12[msg.sender] + sub_50b27949:
        revert with 0, 'time restricted'
    call stakingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_568d70cf[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 1 > !stor8[msg.sender]:
        revert with 0, 17
    stor8[msg.sender]++
    if totalStakedTokens < sub_568d70cf[msg.sender]:
        revert with 0, 17
    totalStakedTokens -= sub_568d70cf[msg.sender]
    sub_568d70cf[msg.sender] = 0
    emit 0xe92929b9: msg.sender
}

function sub_2c4b9420(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < sub_68d41cac:
        revert with 0, 'Amount Lesser than Minimum'
    call stakingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4[msg.sender][stor8[msg.sender]][block.timestamp] = arg1
    stor5[msg.sender][stor8[msg.sender]]++
    stor5[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]]] = block.timestamp
    if sub_568d70cf[msg.sender] > !arg1:
        revert with 0, 17
    sub_568d70cf[msg.sender] += arg1
    sub_70cb7b12[msg.sender] = block.timestamp
    if totalStakedTokens > !arg1:
        revert with 0, 17
    totalStakedTokens += arg1
    emit 0xf57c42c7: arg1, msg.sender
}

function calculateRewards() payable {
    idx = 0
    s = 0
    while idx < stor5[msg.sender][stor8[msg.sender]]:
        if idx >= stor5[msg.sender][stor8[msg.sender]]:
            revert with 0, 50
        if block.timestamp < stor5[msg.sender][stor8[msg.sender]][idx]:
            revert with 0, 17
        if stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] and block.timestamp - stor5[msg.sender][stor8[msg.sender]][idx] > -1 / stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]:
            revert with 0, 17
        if (block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]) and APY > -1 / (block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]):
            revert with 0, 17
        if s > !((block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) / 10^18):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = stor8[msg.sender]
        mem[32] = sha3(msg.sender, 5)
        idx = idx + 1
        s = s + ((block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) / 10^18)
        continue 
    if s * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] < stor7[msg.sender][stor8[msg.sender]]:
        revert with 0, 17
    return ((s * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]]) - stor7[msg.sender][stor8[msg.sender]])
}

function sub_1e2b6912(?) payable {
    idx = 0
    s = 0
    while idx < stor5[msg.sender][stor8[msg.sender]]:
        if idx >= stor5[msg.sender][stor8[msg.sender]]:
            revert with 0, 50
        if block.timestamp < stor5[msg.sender][stor8[msg.sender]][idx]:
            revert with 0, 17
        if stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] and block.timestamp - stor5[msg.sender][stor8[msg.sender]][idx] > -1 / stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]:
            revert with 0, 17
        if (block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]) and APY > -1 / (block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]]):
            revert with 0, 17
        if s > !((block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) / 10^18):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = stor8[msg.sender]
        mem[32] = sha3(msg.sender, 5)
        idx = idx + 1
        s = s + ((block.timestamp * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) - (stor5[msg.sender][stor8[msg.sender]][idx] * stor4[msg.sender][stor8[msg.sender]][stor5[msg.sender][stor8[msg.sender]][idx]] * APY) / 10^18)
        continue 
    if s * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] < stor7[msg.sender][stor8[msg.sender]]:
        revert with 0, 17
    if stor7[msg.sender][stor8[msg.sender]] > !((s * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]]) - stor7[msg.sender][stor8[msg.sender]]):
        revert with 0, 17
    stor7[msg.sender][stor8[msg.sender]] = s * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]]
    call rewardsTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (s * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]] * stor5[msg.sender][stor8[msg.sender]]) - stor7[msg.sender][stor8[msg.sender]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
