contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 stor51;
address stor51;
address rewardTokenAddress; offset 8
uint256 stor51; offset 8
uint32 stor52;
address adminAddress;
uint256 stor52;
address proposedAdminAddress;
uint256 sub_40d5605a;
address sub_cd2290fbAddress;
address sub_8b26e2c5Address;
mapping of struct userBalance;

function userBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return userBalance[arg1].field_0
}

function proposedAdmin() payable {
    return proposedAdminAddress
}

function sub_40d5605a(?) payable {
    return sub_40d5605a
}

function checkBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return userBalance[address(arg1)].field_0
}

function sub_8b26e2c5(?) payable {
    return sub_8b26e2c5Address
}

function sub_cd2290fb(?) payable {
    return sub_cd2290fbAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function admin() payable {
    return address(adminAddress)
}

function _fallback() payable {
    revert
}

function claimCoinAdmin() payable {
    if sub_8b26e2c5Address != msg.sender:
        revert with 0, 'proposedCoinAdmin required'
    sub_cd2290fbAddress = sub_8b26e2c5Address
    sub_8b26e2c5Address = 0
}

function proposeCoinAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cd2290fbAddress != msg.sender:
        revert with 0, 'CoinAdmin required'
    require arg1
    sub_8b26e2c5Address = arg1
}

function set(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(adminAddress) != msg.sender:
        revert with 0, 'Admin required'
    userBalance[address(arg1)].field_0 = arg2
    emit Set(address(arg1), arg2);
}

function proposeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(adminAddress) != msg.sender:
        revert with 0, 'Admin required'
    require arg1
    proposedAdminAddress = arg1
    emit ProposeAdmin(address(adminAddress), arg1);
}

function claimAdmin() payable {
    if proposedAdminAddress != msg.sender:
        revert with 0, 'ProposedAdmin required'
    address(adminAddress) = proposedAdminAddress
    proposedAdminAddress = 0
    emit ClaimAdmin(address(adminAddress), proposedAdminAddress);
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cd2290fbAddress != msg.sender:
        revert with 0, 'CoinAdmin required'
    rewardTokenAddress = arg1
    emit SetRewardToken(address rg1, address rg2):
                        address(stor51.field_0),
                        0,
                        arg1,
}

function checkRewardBalance() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        address(adminAddress) = arg1
        sub_cd2290fbAddress = arg2
        uint8(stor51.field_0) = 1
        Mask(248, 0, stor51.field_8) = 0
        rewardTokenAddress = arg3
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(adminAddress) = arg1
            sub_cd2290fbAddress = arg2
            uint8(stor51.field_0) = 1
            Mask(248, 0, stor51.field_8) = 0
            rewardTokenAddress = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            address(adminAddress) = arg1
            sub_cd2290fbAddress = arg2
            uint8(stor51.field_0) = 1
            Mask(248, 0, stor51.field_8) = 0
            rewardTokenAddress = arg3
            uint8(stor0.field_8) = 0
}

function sub_cfb4d575(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(adminAddress) != msg.sender:
        revert with 0, 'Admin required'
    if cd[68] <= sub_40d5605a:
        revert with 0, 'Invalid time'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        if cd[((32 * idx) + cd[36] + 36)] + userBalance[address(cd[((32 * idx) + cd[4] + 36)])].field_0 < userBalance[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 57
        userBalance[address(cd[((32 * idx) + cd[4] + 36)])].field_0 += cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
    sub_40d5605a = cd[68]
    emit BatchSet(Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)], ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]), floor32(('cd', 4).length) + 128, cd[68]);
}

function withdrawRewardToAddressWithAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_cd2290fbAddress != msg.sender:
        revert with 0, 'CoinAdmin required'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No reward left'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call rewardTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit WithdrawRewardToAddressWithAmount(address(arg1), arg2);
}

function withdrawRewardWithAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cd2290fbAddress != msg.sender:
        revert with 0, 'CoinAdmin required'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No reward left'
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor52), uint32(stor52), Mask(224, 32, arg1) >> 32
    call rewardTokenAddress with:
       funct uint32(stor52)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor52), uint32(stor52), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor52):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit WithdrawRewardWithAmount(arg1);
}

function claimReward() payable {
    if not uint8(stor51.field_0):
        revert with 0, 're-entered'
    uint8(stor51.field_0) = 0
    if not userBalance[msg.sender].field_0:
        revert with 0, 'No reward'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < userBalance[msg.sender].field_0:
        revert with 0, 'Insufficient rewardToken'
    userBalance[msg.sender].field_0 = 0
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userBalance[msg.sender].field_32
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userBalance[msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userBalance[msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit ClaimReward(msg.sender, userBalance[msg.sender].field_0);
    uint8(stor51.field_0) = 1
}

function withdrawReward() payable {
    if sub_cd2290fbAddress != msg.sender:
        revert with 0, 'CoinAdmin required'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No reward left'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor52), uint32(stor52), ext_call.return_data[0 len 28]
    call rewardTokenAddress with:
       funct uint32(stor52)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor52), uint32(stor52), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor52):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit WithdrawReward(ext_call.return_data[0]);
}

function withdrawRewardToAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cd2290fbAddress != msg.sender:
        revert with 0, 'CoinAdmin required'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No reward left'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
    call rewardTokenAddress with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit WithdrawRewardToAddress(address(arg1), ext_call.return_data[0]);
}



}
