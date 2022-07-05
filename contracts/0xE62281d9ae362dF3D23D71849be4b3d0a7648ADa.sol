contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address mainWalletAddress;
uint256 sub_49937fc8;
uint256 rewardTokenCount;
uint8 stor5;
mapping of uint256 deposits;

function mainWallet() {
    return mainWalletAddress
}

function sub_49937fc8(?) {
    return sub_49937fc8
}

function owner() {
    return owner
}

function rewardTokenCount() {
    return rewardTokenCount
}

function presaleStatus() {
    return bool(stor5)
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function stopPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = 0
}

function resumePresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardTokenCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardTokenCount = arg1
}

function setWithdrawAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mainWalletAddress = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function releaseFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5:
        revert with 0, 'Presale : Presale is in progress'
    call mainWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > sub_49937fc8:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_49937fc8 -= eth.balance(this.address)
}

function recoverBEP20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Recovered(address(arg1), arg2);
}

function deposit() payable {
    if bool(stor5) != 1:
        revert with 0, 'Presale : Presale is finished'
    if msg.value < 10^17:
        revert with 0, 'Presale : Unsuitable Amount'
    if msg.value > 2 * 10^18:
        revert with 0, 'Presale : Unsuitable Amount'
    if not msg.value / 10^9:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args mainWalletAddress, msg.sender, 0
    else:
        require msg.value / 10^9
        if msg.value / 10^9 * rewardTokenCount / msg.value / 10^9 != rewardTokenCount:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args mainWalletAddress, msg.sender, msg.value / 10^9 * rewardTokenCount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_49937fc8 + msg.value < sub_49937fc8:
        revert with 0, 'SafeMath: addition overflow'
    sub_49937fc8 += msg.value
    if deposits[address(msg.sender)] + msg.value < deposits[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    deposits[address(msg.sender)] += msg.value
    emit Deposited(msg.value, msg.sender);
}



}
