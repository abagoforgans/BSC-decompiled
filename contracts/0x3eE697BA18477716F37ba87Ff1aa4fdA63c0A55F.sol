contract main {




// =====================  Runtime code  =====================


address owner;
address sub_a8799e1aAddress;
uint256 sub_85fb006b;
mapping of uint8 stor3;
uint256 sub_51e1267e;
array of struct stakers;
mapping of address sub_b405896b;
mapping of uint256 sub_dac1ef44;
mapping of uint256 sub_2544de62;
uint256 sub_19f636c5;
uint256 sub_08749c4b;
uint256 stakingIndex;
uint256 sub_54505ceb;
uint8 status;
mapping of uint256 sub_1009c89a;
mapping of uint256 userStaked;
address feeTokenAddress;
uint256 fee;
address feewalletAddress;
address sub_d734e6e6Address;
mapping of uint256 stor99;

function sub_08749c4b(?) payable {
    return sub_08749c4b
}

function sub_1009c89a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1009c89a[arg1]
}

function sub_19f636c5(?) payable {
    return sub_19f636c5
}

function status() payable {
    return bool(status)
}

function sub_2544de62(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2544de62[arg1]
}

function stakingIndex() payable {
    return stakingIndex
}

function sub_51e1267e(?) payable {
    return sub_51e1267e
}

function sub_54505ceb(?) payable {
    return sub_54505ceb
}

function sub_57847c14(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function feeToken() payable {
    return feeTokenAddress
}

function sub_85fb006b(?) payable {
    return sub_85fb006b
}

function owner() payable {
    return owner
}

function userStaked(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userStaked[arg1][arg2]
}

function sub_a8799e1a(?) payable {
    return sub_a8799e1aAddress
}

function sub_b405896b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b405896b[arg1]
}

function sub_d734e6e6(?) payable {
    return sub_d734e6e6Address
}

function sub_dac1ef44(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_dac1ef44[arg1]
}

function fee() payable {
    return fee
}

function feewallet() payable {
    return feewalletAddress
}

function stakers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stakers.length
    return address(stakers[arg1].field_0)
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

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function changeStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    status = uint8(arg1)
}

function changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_51e1267e = arg1
}

function setFeeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feewalletAddress = arg1
}

function sub_03822c37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeTokenAddress = address(arg1)
}

function sub_4b87500b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a8799e1aAddress = address(arg1)
}

function sub_aa1d31f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d734e6e6Address = address(arg1)
}

function changesredeemrange(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withdrawAdmin(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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

function initialiaze(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingIndex:
        revert with 0, 'Nft already staked'
    sub_a8799e1aAddress = arg1
    sub_51e1267e = arg2
    if arg4 <= arg3:
        revert with 0, 'Incorrect redeem range'
    sub_19f636c5 = arg3
    sub_08749c4b = arg4
    sub_54505ceb = 0
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

function sub_83b2d321(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingIndex:
        revert with 0, 'Nft already staked'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Incorrect arguments'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'Incorrect arguments'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        sub_b405896b[idx] = mem[(32 * idx) + 140 len 20]
        require idx < ('cd', 36).length
        sub_dac1ef44[idx] = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 68).length
        mem[0] = idx
        mem[32] = 8
        sub_2544de62[idx] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    sub_85fb006b = ('cd', 4).length
}

function emergencyunstakenft() payable {
    if sub_1009c89a[address(msg.sender)] <= block.timestamp:
        revert with 0, 'Claim Time reached'
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'No nfts staked'
    idx = 0
    while idx < sub_85fb006b:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = userStaked[address(msg.sender)][idx]
        require ext_code.size(sub_b405896b[idx])
        call sub_b405896b[idx].0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, userStaked[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        userStaked[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
    sub_1009c89a[address(msg.sender)] = 0
    stakingIndex--
    if stakers.length:
        mem[128] = address(stakers.field_0)
        idx = 128
        s = 0
        while (32 * stakers.length) + 96 > idx:
            mem[idx + 32] = address(stakers[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        if mem[(32 * idx) + 140 len 20] != msg.sender:
            idx = idx + 1
            continue 
        require stakers.length - 1 < stakers.length
        require idx < stakers.length
        address(stakers[idx].field_0) = address(stakers[stakers.length].field_0)
        require stakers.length
        address(stakers[stakers.length].field_0) = 0
        stakers.length--
        stor3[address(msg.sender)] = 0
    stor3[address(msg.sender)] = 0
}

function redeemNft() payable {
    if sub_1009c89a[address(msg.sender)] > block.timestamp:
        revert with 0, 'Claim Time not reached'
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'No nfts staked'
    require sub_19f636c5 + sub_54505ceb <= sub_08749c4b
    sub_1009c89a[address(msg.sender)] = 0
    sub_54505ceb++
    stakingIndex--
    idx = 0
    while idx < sub_85fb006b:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 15)
        userStaked[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
    mem[132] = msg.sender
    mem[164] = sub_19f636c5 + sub_54505ceb
    require ext_code.size(sub_a8799e1aAddress)
    call sub_a8799e1aAddress.0x42842e0e with:
         gas gas_remaining wei
        args sub_d734e6e6Address, msg.sender, sub_19f636c5 + sub_54505ceb
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stakers.length:
        mem[128] = address(stakers.field_0)
        idx = 128
        s = 0
        while (32 * stakers.length) + 96 > idx:
            mem[idx + 32] = address(stakers[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        if mem[(32 * idx) + 140 len 20] != msg.sender:
            idx = idx + 1
            continue 
        require stakers.length - 1 < stakers.length
        require idx < stakers.length
        address(stakers[idx].field_0) = address(stakers[stakers.length].field_0)
        require stakers.length
        address(stakers[stakers.length].field_0) = 0
        stakers.length--
        stor3[address(msg.sender)] = 0
        sub_1009c89a[address(msg.sender)] = 0
        emit redeem(address(this.address), msg.sender, sub_19f636c5 + sub_54505ceb);
    stor3[address(msg.sender)] = 0
    sub_1009c89a[address(msg.sender)] = 0
    emit redeem(address(this.address), msg.sender, sub_19f636c5 + sub_54505ceb);
}

function reset() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_85fb006b:
        mem[0] = idx
        mem[32] = 6
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_b405896b[idx])
        staticcall sub_b405896b[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_44] == mem[_44]
        if mem[_44]:
            revert with 0, 'Contract not empty'
        sub_b405896b[idx] = 0
        sub_dac1ef44[idx] = 0
        mem[0] = idx
        mem[32] = 8
        sub_2544de62[idx] = 0
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[64] = mem[64] + (32 * stakers.length) + 32
    mem[_27] = stakers.length
    if not stakers.length:
        idx = 0
        while idx < stakers.length:
            require idx < mem[_27]
            mem[0] = mem[(32 * idx) + _27 + 44 len 20]
            mem[32] = 14
            sub_1009c89a[mem[0]] = 0
            require idx < mem[_27]
            mem[0] = mem[(32 * idx) + _27 + 44 len 20]
            mem[32] = 3
            stor3[mem[0]] = 0
            s = 0
            while s < sub_85fb006b:
                require idx < mem[_27]
                _66 = sha3(mem[(32 * idx) + _27 + 44 len 20], 15)
                mem[0] = s
                mem[32] = sha3(mem[(32 * idx) + _27 + 44 len 20], 15)
                stor[_66][s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        mem[0] = 5
        mem[_27 + 32] = address(stakers.field_0)
        idx = _27 + 32
        s = 0
        while _27 + (32 * stakers.length) > idx:
            mem[idx + 32] = address(stakers[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stakers.length:
            require idx < mem[_27]
            mem[0] = mem[(32 * idx) + _27 + 44 len 20]
            mem[32] = 14
            sub_1009c89a[mem[0]] = 0
            require idx < mem[_27]
            mem[0] = mem[(32 * idx) + _27 + 44 len 20]
            mem[32] = 3
            stor3[mem[0]] = 0
            s = 0
            while s < sub_85fb006b:
                require idx < mem[_27]
                _93 = sha3(mem[(32 * idx) + _27 + 44 len 20], 15)
                mem[0] = s
                mem[32] = sha3(mem[(32 * idx) + _27 + 44 len 20], 15)
                stor[_93][s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    sub_19f636c5 = 0
    sub_08749c4b = 0
    sub_54505ceb = 0
    sub_85fb006b = 0
    sub_51e1267e = 0
    stakingIndex = 0
    sub_a8799e1aAddress = 0
    status = 0
    stakers.length = 0
    idx = 0
    while stakers.length > idx:
        stakers[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_4017cdce(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if bool(status) != 1:
        revert with 0, 'Contract not active'
    if sub_1009c89a[address(msg.sender)]:
        revert with 0, 'Already Staked'
    if stor3[address(msg.sender)]:
        revert with 0, 'Already staked'
    if ('cd', 4).length != sub_85fb006b:
        revert with 0, 'Incorrect no of tokens Ids'
    mem[0] = msg.sender
    mem[32] = 3
    if stor3[address(msg.sender)]:
        idx = 0
        while idx < sub_85fb006b:
            require idx < ('cd', 4).length
            if cd[((32 * idx) + cd[4] + 36)] < sub_dac1ef44[idx]:
                revert with 0, 'Incorrect token id '
            require idx < ('cd', 4).length
            if cd[((32 * idx) + cd[4] + 36)] > sub_2544de62[idx]:
                revert with 0, 'Incorrect token id '
            mem[0] = idx
            mem[32] = 6
            require idx < ('cd', 4).length
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_b405896b[idx])
            staticcall sub_b405896b[idx].0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_92] == mem[_92 + 12 len 20]
            if mem[_92 + 12 len 20] != msg.sender:
                revert with 0, 'Sender has to be owner of the token.'
            require idx < ('cd', 4).length
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_b405896b[idx])
            call sub_b405896b[idx].0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 4).length
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 15)
            userStaked[address(msg.sender)][idx] = cd[((32 * idx) + cd[4] + 36)]
            idx = idx + 1
            continue 
        if block.timestamp + sub_51e1267e < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 14
        sub_1009c89a[address(msg.sender)] = block.timestamp + sub_51e1267e
        stakingIndex++
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = feewalletAddress
        mem[mem[64] + 68] = fee
        require ext_code.size(feeTokenAddress)
        call feeTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feewalletAddress, fee
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _98 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_98] == bool(mem[_98])
    else:
        mem[32] = 3
        stor3[address(msg.sender)] = 1
        stakers.length++
        mem[0] = 5
        address(stakers[stakers.length].field_0) = msg.sender
        idx = 0
        while idx < sub_85fb006b:
            require idx < ('cd', 4).length
            if cd[((32 * idx) + cd[4] + 36)] < sub_dac1ef44[idx]:
                revert with 0, 'Incorrect token id '
            require idx < ('cd', 4).length
            if cd[((32 * idx) + cd[4] + 36)] > sub_2544de62[idx]:
                revert with 0, 'Incorrect token id '
            mem[0] = idx
            mem[32] = 6
            require idx < ('cd', 4).length
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_b405896b[idx])
            staticcall sub_b405896b[idx].0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_93] == mem[_93 + 12 len 20]
            if mem[_93 + 12 len 20] != msg.sender:
                revert with 0, 'Sender has to be owner of the token.'
            require idx < ('cd', 4).length
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_b405896b[idx])
            call sub_b405896b[idx].0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 4).length
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 15)
            userStaked[address(msg.sender)][idx] = cd[((32 * idx) + cd[4] + 36)]
            idx = idx + 1
            continue 
        if block.timestamp + sub_51e1267e < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 14
        sub_1009c89a[address(msg.sender)] = block.timestamp + sub_51e1267e
        stakingIndex++
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = feewalletAddress
        mem[mem[64] + 68] = fee
        require ext_code.size(feeTokenAddress)
        call feeTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feewalletAddress, fee
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_100] == bool(mem[_100])
    require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit stake(msg.sender, address(this.address), Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length]));
}



}
