contract main {




// =====================  Runtime code  =====================


address dev_address;
mapping of uint256 tokenBalanceOf;
mapping of uint256 sub_e5c0d296;
uint8 stor3;
uint8 stor3; offset 8
address tokenRewardAddress; offset 16
address stor4;

function tokenReward() payable {
    return tokenRewardAddress
}

function dev_address() payable {
    return dev_address
}

function sub_cf7c0c38(?) payable {
    return bool(uint8(stor3.field_0))
}

function tokenBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenBalanceOf[arg1]
}

function sub_e5c0d296(?) payable {
    require calldata.size - 4 >= 32
    return sub_e5c0d296[arg1]
}

function sub_f62bcab0(?) payable {
    return bool(uint8(stor3.field_8))
}

function _fallback() payable {
    revert
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    stor4 = arg1
    tokenRewardAddress = arg1
}

function batchTransfer(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not arg1.length:
        revert with 0, 'length is 0'
    if dev_address != msg.sender:
        revert with 0, 'length is 0'
    idx = 0
    while idx < arg1.length:
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + arg1 + 36)])
        mem[164] = arg2
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg1 + 36)]), arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
