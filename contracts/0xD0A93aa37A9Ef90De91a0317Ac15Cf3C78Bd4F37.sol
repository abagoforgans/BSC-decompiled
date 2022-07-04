contract main {




// =====================  Runtime code  =====================


const magic = 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91


address owner;
address lotteryAddress;
array of address sub_9837d5de;
array of address sub_f889ebc6;
array of address sub_bd6a8499;
mapping of uint8 stor5;
uint64 sub_1e3037d5;
uint64 sub_f9a111b1; offset 64
uint64 sub_ba2c3961; offset 128
uint64 sub_ca9c9c72; offset 192
uint256 tokenValue;

function sub_1e3037d5(?) payable {
    return sub_1e3037d5
}

function tokenValue() payable {
    return tokenValue
}

function owner() payable {
    return owner
}

function sub_9837d5de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9837d5de.length
    return sub_9837d5de[arg1]
}

function sub_b4c61530(?) payable {
    return sub_9837d5de.length
}

function lottery() payable {
    return lotteryAddress
}

function sub_ba2c3961(?) payable {
    return sub_ba2c3961
}

function sub_bd6a8499(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_bd6a8499.length
    return sub_bd6a8499[arg1]
}

function sub_ca9c9c72(?) payable {
    return sub_ca9c9c72
}

function sub_f889ebc6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f889ebc6.length
    return sub_f889ebc6[arg1]
}

function sub_f9a111b1(?) payable {
    return sub_f9a111b1
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

function setTokenValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenValue = arg1
}

function sub_de8032c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ca9c9c72 = uint64(arg1)
}

function setAccess(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function sub_14558fab(?) payable {
    require ext_code.size(lotteryAddress)
    staticcall lotteryAddress.0x14558fab with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5ec3b6dd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == uint64(arg2)
    require arg3 == uint64(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1e3037d5 = uint64(arg1)
    sub_f9a111b1 = uint64(arg2)
    sub_ba2c3961 = uint64(arg3)
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

function ticketCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lotteryAddress)
    staticcall lotteryAddress.0x70ca5bbe with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4d28c726(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= sub_9837d5de.length:
        revert with 0, 50
    require ext_code.size(sub_9837d5de[arg1])
    staticcall sub_9837d5de[arg1].0x70ca5bbe with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e2078d18(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_9837d5de.length:
        revert with 0, 50
    require ext_code.size(sub_9837d5de[arg1])
    call sub_9837d5de[arg1].0xdf3a908d with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df3a908d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BonfireLotteryFactory: restricted access only!'
    require ext_code.size(lotteryAddress)
    staticcall lotteryAddress.isOpen() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lotteryAddress)
    if not ext_call.return_data[0]:
        staticcall lotteryAddress.0x14558fab with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x125ddafe: lotteryAddress, sub_9837d5de.length, ext_call.return_data[0]
        sub_9837d5de.length++
        sub_9837d5de[sub_9837d5de.length] = lotteryAddress
        require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
        staticcall 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0xed2be6d1 with:
                gas gas_remaining wei
               args tokenValue
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        create contract with 0 wei
                        code: code.data[8934 len 3858], sub_1e3037d5, ext_call.return_data[0], 128, 192, 21, 0x426f6e6669726520546f6b656e20566f75636865720000000000000000000000, 3, 0x4254560000000000000000000000000000000000000000000000000000000000
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        create contract with 0 wei
                        code: code.data[8934 len 3858], sub_1e3037d5, 0, 128, 192, 19, 0x426f6e66697265204e465420566f756368657200000000000000000000000000, 3, 0x424e560000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xa9059cbb with:
             gas gas_remaining wei
            args lotteryAddress, sub_f9a111b1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xa9059cbb with:
             gas gas_remaining wei
            args lotteryAddress, sub_ba2c3961
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_bd6a8499.length++
        sub_bd6a8499[sub_bd6a8499.length] = address(create.new_address)
        sub_f889ebc6.length++
        sub_f889ebc6[sub_f889ebc6.length] = address(create.new_address)
        create contract with 0 wei
                        code: code.data[6027 len 2907], sub_1e3037d5, sub_ca9c9c72
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        lotteryAddress = address(create.new_address)
    call lotteryAddress.0xdf3a908d with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_94f78fa1(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_9837d5de.length:
        revert with 0, 50
    require ext_code.size(sub_9837d5de[arg1])
    staticcall sub_9837d5de[arg1].timeout() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] > block.number:
        if owner != msg.sender:
            revert with 0, 'BonfireLotteryFactory: public distribution is only possible after timeout.'
    if arg1 >= sub_f889ebc6.length:
        revert with 0, 50
    require ext_code.size(sub_f889ebc6[arg1])
    staticcall sub_f889ebc6[arg1].0x70a08231 with:
            gas gas_remaining wei
           args sub_9837d5de[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if arg2 <= 0:
            if arg2:
                require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
                call 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0x70e9b2fa with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_9837d5de[arg1])
                call sub_9837d5de[arg1].finalise(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg1 >= sub_bd6a8499.length:
                revert with 0, 50
            require ext_code.size(sub_bd6a8499[arg1])
            staticcall sub_bd6a8499[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args sub_9837d5de[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if arg2:
                    require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
                    call 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0x70e9b2fa with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_9837d5de[arg1])
                    call sub_9837d5de[arg1].finalise(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg1 >= sub_bd6a8499.length:
                    revert with 0, 50
                require ext_code.size(sub_9837d5de[arg1])
                call sub_9837d5de[arg1].distribute(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_bd6a8499[arg1], arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 < ext_call.return_data[0]:
                    revert with 0, 17
                if arg2 - ext_call.return_data[0]:
                    require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
                    call 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0x70e9b2fa with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_9837d5de[arg1])
                    call sub_9837d5de[arg1].finalise(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 >= sub_f889ebc6.length:
            revert with 0, 50
        require ext_code.size(sub_9837d5de[arg1])
        call sub_9837d5de[arg1].distribute(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f889ebc6[arg1], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 < ext_call.return_data[0]:
            revert with 0, 17
        if arg2 - ext_call.return_data[0] <= 0:
            if arg2 - ext_call.return_data[0]:
                require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
                call 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0x70e9b2fa with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_9837d5de[arg1])
                call sub_9837d5de[arg1].finalise(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg1 >= sub_bd6a8499.length:
                revert with 0, 50
            require ext_code.size(sub_bd6a8499[arg1])
            staticcall sub_bd6a8499[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args sub_9837d5de[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if arg2 - ext_call.return_data[0]:
                    require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
                    call 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0x70e9b2fa with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_9837d5de[arg1])
                    call sub_9837d5de[arg1].finalise(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg1 >= sub_bd6a8499.length:
                    revert with 0, 50
                require ext_code.size(sub_9837d5de[arg1])
                call sub_9837d5de[arg1].distribute(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_bd6a8499[arg1], arg2 - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 - ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if arg2 - (2 * ext_call.return_data[0]):
                    require ext_code.size(0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91)
                    call 0xf33d46ecbb9fedf80f8feeba8eb9d3c1053d3f91.0x70e9b2fa with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_9837d5de[arg1])
                    call sub_9837d5de[arg1].finalise(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
