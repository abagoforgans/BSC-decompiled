contract main {




// =====================  Runtime code  =====================


address governanceAddress;
mapping of uint8 stor1;
address tokenAddress;
uint256 mininumBurnAmount;
uint256 mintedAmount;

function mintedAmount() payable {
    return mintedAmount
}

function governance() payable {
    return governanceAddress
}

function mininumBurnAmount() payable {
    return mininumBurnAmount
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = 0
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setMinimumBurnAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mininumBurnAmount = arg1
}

function unwrapFromNetwork(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, '!governance && !minter'
    if arg3 > mintedAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    mintedAmount -= arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x497a2874: arg1, address(arg2), arg3
}

function wrapToNetwork(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 < mininumBurnAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe5f616d6f756e74206c657373207468616e206d696e696e756d4275726e416d6f756e,
                    mem[199 len 29]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 + mintedAmount < mintedAmount:
        revert with 0, 'SafeMath: addition overflow'
    mintedAmount += arg3
    emit 0x1c94c61e: arg1, address(arg2), arg3
}



}
