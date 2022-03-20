contract main {




// =====================  Runtime code  =====================


const name = 'Saturn'

const decimals = 18

const symbol = 'Saturn'

const MIN_CONTRIBUTION = 10^16


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 totalDistributed;
uint256 tokensPerEth;
uint8 distributionFinished;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(distributionFinished)
}

function tokensPerEth() {
    return tokensPerEth
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == stor1
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function finishDistribution() {
    require msg.sender == stor1
    require not distributionFinished
    distributionFinished = 1
    emit DistrFinished()
    return 1
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require msg.sender == stor1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function adminClaimAirdrop(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg2 > 0
    require totalDistributed < totalSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalDistributed + arg2 >= totalDistributed
    totalDistributed += arg2
    if totalDistributed >= totalSupply:
        distributionFinished = 1
    emit Airdrop(arg2, balanceOf[address(arg1)], arg1);
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokens() payable {
    require not distributionFinished
    require msg.value >= 10^16
    require msg.value > 0
    if tokensPerEth:
        require tokensPerEth
        require tokensPerEth * msg.value / tokensPerEth == msg.value
        if tokensPerEth * msg.value / 10^18 > 0:
            require not distributionFinished
            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
            totalDistributed += tokensPerEth * msg.value / 10^18
            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}

function _fallback() payable {
    require not distributionFinished
    require msg.value >= 10^16
    require msg.value > 0
    if tokensPerEth:
        require tokensPerEth
        require tokensPerEth * msg.value / tokensPerEth == msg.value
        if tokensPerEth * msg.value / 10^18 > 0:
            require not distributionFinished
            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
            totalDistributed += tokensPerEth * msg.value / 10^18
            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}

function adminClaimAirdropMultiple(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        require arg2 > 0
        require totalDistributed < totalSupply
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        require totalDistributed + arg2 >= totalDistributed
        totalDistributed += arg2
        if totalDistributed < totalSupply:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _22 = sha3(address(mem[(32 * idx) + 128]), 2)
            mem[(32 * arg1.length) + 160] = balanceOf[address(mem[(32 * idx) + 128])]
            emit Airdrop(arg2, stor[_22], address(_19));
        else:
            distributionFinished = 1
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _27 = sha3(address(mem[(32 * idx) + 128]), 2)
            mem[(32 * arg1.length) + 160] = balanceOf[address(mem[(32 * idx) + 128])]
            emit Airdrop(arg2, stor[_27], address(_19));
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_19));
        idx = idx + 1
        continue 
}



}
