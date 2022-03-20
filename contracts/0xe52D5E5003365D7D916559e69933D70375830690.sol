contract main {




// =====================  Runtime code  =====================


address owner;
address zyxAddress;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function owner() payable {
    return owner
}

function zyx() payable {
    return zyxAddress
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

function transferOwnership(address arg1) payable {
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

function sub_183a6b19(?) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - userInfo[address(arg1)].field_256:
        return 0
    require block.number - userInfo[address(arg1)].field_256
    if (block.number * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_256 * userInfo[address(arg1)].field_768) / block.number - userInfo[address(arg1)].field_256 != userInfo[address(arg1)].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((block.number * userInfo[address(arg1)].field_768) - (userInfo[address(arg1)].field_256 * userInfo[address(arg1)].field_768))
}

function withdraw() payable {
    if userInfo[address(msg.sender)].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - userInfo[address(msg.sender)].field_256:
        require ext_code.size(zyxAddress)
        staticcall zyxAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(zyxAddress)
        if 0 <= ext_call.return_data[0]:
            call zyxAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            call zyxAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[address(msg.sender)].field_256 = block.number
        if userInfo[address(msg.sender)].field_512 < userInfo[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require block.number - userInfo[address(msg.sender)].field_256
        if (block.number * userInfo[address(msg.sender)].field_768) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_768) / block.number - userInfo[address(msg.sender)].field_256 != userInfo[address(msg.sender)].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(zyxAddress)
        staticcall zyxAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(zyxAddress)
        if (block.number * userInfo[address(msg.sender)].field_768) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_768) <= ext_call.return_data[0]:
            call zyxAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, (block.number * userInfo[address(msg.sender)].field_768) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_768)
        else:
            call zyxAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[address(msg.sender)].field_256 = block.number
        if userInfo[address(msg.sender)].field_512 + (block.number * userInfo[address(msg.sender)].field_768) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_768) < userInfo[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (block.number * userInfo[address(msg.sender)].field_768) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_768)
}



}
