contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
mapping of uint8 stor2;
address tokenAddress;
mapping of struct sub_893a5771;
address nftTokenAddress;
uint16 sub_cdaf9975; offset 160
uint16 sub_c43db43d; offset 176
address sub_22f73972Address;
uint256 rate;

function sub_22f73972(?) payable {
    return sub_22f73972Address
}

function rate() payable {
    return rate
}

function orchestration(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(32, 224, arg2)
    return bool(stor2[arg1][arg2])
}

function sub_893a5771(?) payable {
    require calldata.size - 4 >= 32
    return sub_893a5771[arg1].field_256
}

function owner() payable {
    return owner
}

function sub_92751345(?) payable {
    require calldata.size - 4 >= 32
    return sub_893a5771[arg1].field_0
}

function getGrant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_893a5771[arg1].field_0, 
           sub_893a5771[arg1].field_256,
           sub_893a5771[arg1].field_512,
           sub_893a5771[arg1].field_512,
           sub_893a5771[arg1].field_768,
           sub_893a5771[arg1].field_1024
}

function sub_c43db43d(?) payable {
    return sub_c43db43d
}

function sub_cdaf9975(?) payable {
    return sub_cdaf9975
}

function nftToken() payable {
    return nftTokenAddress
}

function token() payable {
    return tokenAddress
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == owner
    require arg1 <= 100
    rate = arg1
}

function sub_3538963a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if adminAddress != msg.sender:
        require msg.sender == owner
    sub_cdaf9975 = uint16(arg1)
}

function sub_bf7533b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if adminAddress != msg.sender:
        require msg.sender == owner
    sub_c43db43d = uint16(arg1)
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        require msg.sender == owner
    require arg1
    adminAddress = arg1
}

function withdrawBNB(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function orchestrate(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(32, 224, arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)][Mask(32, 224, arg2)] = 1
    emit GrantedAccess(address(arg1), Mask(32, 224, arg2));
}

function removeOrchestrate(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(32, 224, arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)][Mask(32, 224, arg2)] = 0
    emit CancelAccess(address(arg1), Mask(32, 224, arg2));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ca480089(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[msg.sender][call.func_hash]:
        revert with 0, 'onlyOrchestrated: getOut', 0
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getClaimAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_22f73972Address)
    staticcall sub_22f73972Address.getAttributes(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if not bool(ceil32(return_data.size) + 352 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_893a5771[arg1].field_256:
        if ext_call.return_data[96] and rate > -1 / ext_call.return_data[96]:
            revert with 0, 17
        return (ext_call.return_data[96] * rate / 100)
    if block.timestamp < sub_893a5771[arg1].field_0:
        return 0
    if sub_893a5771[arg1].field_0 < 24 * 3600:
        revert with 0, 17
    if block.timestamp < sub_893a5771[arg1].field_0 - (24 * 3600):
        revert with 0, 17
    if block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600 >= sub_893a5771[arg1].field_512:
        if sub_893a5771[arg1].field_256 < sub_893a5771[arg1].field_768:
            revert with 0, 17
        return (sub_893a5771[arg1].field_256 - sub_893a5771[arg1].field_768)
    if block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600 < sub_893a5771[arg1].field_528:
        revert with 0, 17
    if 100 < rate:
        revert with 0, 17
    if sub_893a5771[arg1].field_256 and -rate + 100 > -1 / sub_893a5771[arg1].field_256:
        revert with 0, 17
    if not sub_893a5771[arg1].field_512:
        revert with 0, 18
    if uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) and (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512 > -1 / uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528):
        revert with 0, 17
    return (uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) * (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512)
}

function claimVestedTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(nftTokenAddress)
    staticcall nftTokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'nft not belong to you'
    require ext_code.size(sub_22f73972Address)
    staticcall sub_22f73972Address.getAttributes(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if not bool((2 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_893a5771[arg1].field_256:
        if sub_cdaf9975 > 194:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * sub_cdaf9975 % 16777216):
            revert with 0, 17
        if ext_call.return_data[96] and rate > -1 / ext_call.return_data[96]:
            revert with 0, 17
        sub_893a5771[arg1].field_0 = block.timestamp + (24 * 3600 * sub_cdaf9975 % 16777216)
        sub_893a5771[arg1].field_256 = ext_call.return_data[96]
        sub_893a5771[arg1].field_512 = sub_c43db43d
        sub_893a5771[arg1].field_528 = 0
        sub_893a5771[arg1].field_768 = 0
        sub_893a5771[arg1].field_768 = ext_call.return_data[96] * rate / 100
        sub_893a5771[arg1].field_1024 = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[96] / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'no tokens'
        emit 0x94c50dd4: arg1
    if block.timestamp >= sub_893a5771[arg1].field_0:
        if sub_893a5771[arg1].field_0 < 24 * 3600:
            revert with 0, 17
        if block.timestamp < sub_893a5771[arg1].field_0 - (24 * 3600):
            revert with 0, 17
        if block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600 >= sub_893a5771[arg1].field_512:
            if sub_893a5771[arg1].field_256 < sub_893a5771[arg1].field_768:
                revert with 0, 17
            if sub_893a5771[arg1].field_256 - sub_893a5771[arg1].field_768:
                if sub_893a5771[arg1].field_528 > !sub_893a5771[arg1].field_512:
                    revert with 0, 17
                sub_893a5771[arg1].field_528 = uint16(sub_893a5771[arg1].field_528 + sub_893a5771[arg1].field_512)
                if sub_893a5771[arg1].field_768 > !(sub_893a5771[arg1].field_256 - sub_893a5771[arg1].field_768):
                    revert with 0, 17
                sub_893a5771[arg1].field_768 = sub_893a5771[arg1].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), sub_893a5771[arg1].field_256 - sub_893a5771[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'no tokens'
                emit 0x5e14852d: address(ext_call.return_data[0]), sub_893a5771[arg1].field_256 - sub_893a5771[arg1].field_768, arg1
        else:
            if block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600 < sub_893a5771[arg1].field_528:
                revert with 0, 17
            if 100 < rate:
                revert with 0, 17
            if sub_893a5771[arg1].field_256 and -rate + 100 > -1 / sub_893a5771[arg1].field_256:
                revert with 0, 17
            if not sub_893a5771[arg1].field_512:
                revert with 0, 18
            if uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) and (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512 > -1 / uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528):
                revert with 0, 17
            if uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) * (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512:
                if sub_893a5771[arg1].field_528 > !uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528):
                    revert with 0, 17
                sub_893a5771[arg1].field_528 = uint16(sub_893a5771[arg1].field_528 + uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528))
                if sub_893a5771[arg1].field_768 > !(uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) * (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512):
                    revert with 0, 17
                sub_893a5771[arg1].field_768 += uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) * (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) * (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'no tokens'
                emit 0x5e14852d: address(ext_call.return_data[0]), uint16((block.timestamp + -sub_893a5771[arg1].field_0 + (24 * 3600) / 24 * 3600) - sub_893a5771[arg1].field_528) * (100 * sub_893a5771[arg1].field_256) - (rate * sub_893a5771[arg1].field_256) / 100 / sub_893a5771[arg1].field_512, arg1
}



}
