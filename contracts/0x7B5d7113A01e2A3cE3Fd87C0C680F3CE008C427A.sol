contract main {




// =====================  Runtime code  =====================


address owner;
address staketokenAddress;
address sub_a8799e1aAddress;
uint256 sub_84720571;
uint256 sub_51e1267e;
array of struct stakers;
uint256 sub_7494de9c;
uint256 sub_19f636c5;
uint256 sub_08749c4b;
uint256 sub_54505ceb;
uint256 sub_7df029fe;
uint256 fees;
address feewalletAddress;
uint256 maxInvestment;
uint256 sub_6f33d9ed;
mapping of uint256 sub_9f2dd016;
mapping of uint256 sub_ab86037f;
mapping of uint256 userStaked;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function maxInvestment() payable {
    return maxInvestment
}

function sub_08749c4b(?) payable {
    return sub_08749c4b
}

function sub_19f636c5(?) payable {
    return sub_19f636c5
}

function sub_51e1267e(?) payable {
    return sub_51e1267e
}

function sub_54505ceb(?) payable {
    return sub_54505ceb
}

function sub_6f33d9ed(?) payable {
    return sub_6f33d9ed
}

function sub_7494de9c(?) payable {
    return sub_7494de9c
}

function sub_7df029fe(?) payable {
    return sub_7df029fe
}

function sub_84720571(?) payable {
    return sub_84720571
}

function owner() payable {
    return owner
}

function fees() payable {
    return fees
}

function sub_9f2dd016(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9f2dd016[arg1]
}

function sub_a8799e1a(?) payable {
    return sub_a8799e1aAddress
}

function sub_ab86037f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ab86037f[arg1]
}

function userStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userStaked[arg1]
}

function staketoken() payable {
    return staketokenAddress
}

function feewallet() payable {
    return feewalletAddress
}

function stakers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakers.length
    return stakers[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fees = arg1
}

function changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_51e1267e = arg1
}

function changestakinglimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7494de9c = arg1
}

function changeFeeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feewalletAddress = arg1
}

function changesredeemrange(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= arg1:
        revert with 0, 'Incorrect range'
    sub_19f636c5 = arg1
    sub_08749c4b = arg2
    sub_54505ceb = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withdrawAdmin(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawtokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(staketokenAddress)
    call staketokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_7df029fe:
        revert with 0, 'tokens already staked'
    if arg6 <= 0:
        revert with 0, 'Incorrect staking amount'
    staketokenAddress = arg1
    sub_a8799e1aAddress = arg2
    sub_51e1267e = arg3
    sub_84720571 = arg6
    maxInvestment = arg7
    if arg5 <= arg4:
        revert with 0, 'Incorrect redeem range'
    sub_19f636c5 = arg4
    sub_08749c4b = arg5
    sub_54505ceb = 0
}

function emergencyunstaketoken() payable {
    if userStaked[msg.sender] < sub_84720571:
        revert with 0, 'User not Staked Tokens'
    if block.timestamp >= sub_9f2dd016[msg.sender]:
        revert with 0, 'Claim Time reached'
    sub_9f2dd016[msg.sender] = 0
    sub_ab86037f[msg.sender] = 0
    userStaked[msg.sender] = 0
    sub_7df029fe--
    if userStaked[msg.sender] > sub_6f33d9ed:
        revert with 0, 'SafeMath: subtraction overflow', 0
    sub_6f33d9ed -= userStaked[msg.sender]
    require ext_code.size(staketokenAddress)
    call staketokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userStaked[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit unstake(address(this.address), msg.sender, userStaked[msg.sender]);
}

function sub_ac901f9e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_a8799e1aAddress)
        call sub_a8799e1aAddress.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_3bb1319c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 68).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[36])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(cd[36]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function redeemNft() payable {
    mem[64] = 96
    if userStaked[msg.sender] < sub_84720571:
        revert with 0, 'User not Staked Tokens'
    if block.timestamp < sub_9f2dd016[msg.sender]:
        revert with 0, 'Claim Time not reached'
    mem[0] = msg.sender
    sub_9f2dd016[msg.sender] = 0
    userStaked[msg.sender] = 0
    mem[32] = 16
    sub_ab86037f[msg.sender] = 0
    sub_7df029fe--
    require sub_ab86037f[msg.sender] + sub_54505ceb + sub_19f636c5 <= sub_08749c4b
    sub_54505ceb += sub_ab86037f[msg.sender]
    idx = sub_54505ceb + sub_19f636c5
    while idx < sub_ab86037f[msg.sender] + sub_54505ceb + sub_19f636c5:
        mem[mem[64] + 68] = idx
        require ext_code.size(sub_a8799e1aAddress)
        call sub_a8799e1aAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = this.address
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = idx
        emit redeem(address(this.address), msg.sender, idx);
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = userStaked[msg.sender]
    require ext_code.size(staketokenAddress)
    call staketokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userStaked[msg.sender]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_22] == bool(mem[_22])
}

function reset() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(staketokenAddress)
    staticcall staketokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Contract not empty'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_a8799e1aAddress)
    staticcall sub_a8799e1aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Contract not empty'
    if stakers.length:
        mem[(2 * ceil32(return_data.size)) + 128] = address(stakers.field_0)
        idx = (2 * ceil32(return_data.size)) + 128
        s = 0
        while (2 * ceil32(return_data.size)) + (32 * stakers.length) + 96 > idx:
            mem[idx + 32] = stakers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
        mem[32] = 17
        if userStaked[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]] != 0:
            require idx < stakers.length
            userStaked[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]] = 0
            require idx < stakers.length
            sub_9f2dd016[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]] = 0
            require idx < stakers.length
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            mem[32] = 16
            sub_ab86037f[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    sub_84720571 = 0
    sub_54505ceb = 0
    sub_7df029fe = 0
    sub_19f636c5 = 0
    sub_08749c4b = 0
    staketokenAddress = 0
    sub_a8799e1aAddress = 0
    maxInvestment = 0
    sub_6f33d9ed = 0
    stakers.length = 0
    idx = 0
    while stakers.length > idx:
        stakers[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function stakeTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Incorrect Staking amount'
    if arg1 > sub_7494de9c:
        revert with 0, 'Incorrect Staking amount'
    if userStaked[msg.sender]:
        revert with 0, 'Already Staked'
    if not arg1:
        if maxInvestment < sub_6f33d9ed:
            revert with 0, 'maxInvestment reached'
        if sub_6f33d9ed < sub_6f33d9ed:
            revert with 0, 'SafeMath: addition overflow'
        stakers.length++
        stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
        if sub_51e1267e + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        sub_9f2dd016[msg.sender] = sub_51e1267e + block.timestamp
        sub_ab86037f[msg.sender] = arg1
        userStaked[msg.sender] = 0
        sub_7df029fe++
        require ext_code.size(staketokenAddress)
        call staketokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feewalletAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(staketokenAddress)
        call staketokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit stake(msg.sender, 0);
    else:
        if sub_84720571 * arg1 / arg1 != sub_84720571:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if maxInvestment < sub_6f33d9ed + (sub_84720571 * arg1):
            revert with 0, 'maxInvestment reached'
        if (sub_84720571 * arg1) + sub_6f33d9ed < sub_6f33d9ed:
            revert with 0, 'SafeMath: addition overflow'
        sub_6f33d9ed += sub_84720571 * arg1
        if not sub_84720571 * arg1:
            stakers.length++
            stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
            if sub_51e1267e + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_9f2dd016[msg.sender] = sub_51e1267e + block.timestamp
            sub_ab86037f[msg.sender] = arg1
            userStaked[msg.sender] = sub_84720571 * arg1
            sub_7df029fe++
            require ext_code.size(staketokenAddress)
            call staketokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feewalletAddress, 0
        else:
            if fees * sub_84720571 * arg1 / sub_84720571 * arg1 != fees:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            stakers.length++
            stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
            if sub_51e1267e + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_9f2dd016[msg.sender] = sub_51e1267e + block.timestamp
            sub_ab86037f[msg.sender] = arg1
            userStaked[msg.sender] = sub_84720571 * arg1
            sub_7df029fe++
            require ext_code.size(staketokenAddress)
            call staketokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feewalletAddress, fees * sub_84720571 * arg1 / 100 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(staketokenAddress)
        call staketokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sub_84720571 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit stake(msg.sender, sub_84720571 * arg1);
}



}
