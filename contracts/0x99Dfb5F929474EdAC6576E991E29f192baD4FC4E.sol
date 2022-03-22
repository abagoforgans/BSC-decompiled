contract main {




// =====================  Runtime code  =====================


address owner;
array of struct airdropInfo;

function airdropLength() payable {
    return airdropInfo.length
}

function owner() payable {
    return owner
}

function airdropInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < airdropInfo.length
    return airdropInfo[arg1].field_0, airdropInfo[arg1].field_256
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

function isClaimed(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < airdropInfo.length
    return (stor[(3 * arg1) + ('name', 'airdropInfo', 1) + 2][Mask(248, 8, arg2)].field_0 and 1 << uint8(arg2) == 1 << uint8(arg2))
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

function addAirdrop(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x44426e45583a3a4469737472696275746f723a3a61646441697264726f703a3a494e56414c49445f544f4b45,
                    mem[208 len 20]
    airdropInfo.length++
    airdropInfo[airdropInfo.length].field_0 = arg1
    airdropInfo[airdropInfo.length].field_256 = arg2
}

function recoverERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x4e446576546f6f6c733a3a7265636f76657245524332303a3a5452414e534645525f4641494c45,
                    mem[203 len 25]
}

function claim(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, bytes32[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg1 < airdropInfo.length
    mem[32] = (3 * arg1) + sha3(1) + 2
    if stor[(3 * arg1) + ('name', 'airdropInfo', 1) + 2][Mask(248, 8, arg2)].field_0 and 1 << uint8(arg2) == 1 << uint8(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x44426e45583a3a4469737472696275746f723a3a636c61696d3a3a414c52454144595f434c41494d45,
                    mem[205 len 23]
    mem[128] = arg2
    mem[160] = address(arg3)
    mem[180] = arg4
    mem[96] = 84
    mem[64] = (32 * arg5.length) + 244
    mem[212] = arg5.length
    mem[244 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 244] = 0
    require arg1 < airdropInfo.length
    mem[0] = 1
    idx = 0
    s = 0
    while idx < arg5.length:
        require idx < mem[212]
        _39 = mem[(32 * idx) + 244]
        if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
            mem[mem[64] + 32] = mem[(32 * idx) + 244]
            mem[mem[64] + 64] = s + sha3(mem[128 len 84])
            _43 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_43 + 32 len mem[_43]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 84])
        mem[mem[64] + 64] = _39
        _47 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_47 + 32 len mem[_47]])
        continue 
    if s != airdropInfo[arg1].field_256:
        revert with 0, 32, 39, 0x44426e45583a3a4469737472696275746f723a3a636c61696d3a3a494e56414c49445f50524f4f, mem[mem[64] + 107 len 25]
    require arg1 < airdropInfo.length
    stor[(3 * arg1) + ('name', 'airdropInfo', 1) + 2][Mask(248, 8, arg2)].field_0 = 1
    require ext_code.size(airdropInfo[arg1].field_0)
    call airdropInfo[arg1].field_0.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    41,
                    0x73426e45583a3a4469737472696275746f723a3a636c61696d3a3a5452414e534645525f4641494c45,
                    mem[mem[64] + 109 len 23]
    emit Claimed(arg1, arg2, address(arg3), arg4);
}



}
