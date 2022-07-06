contract main {




// =====================  Runtime code  =====================


#
#  - sub_2acb26b0(?)
#  - addr2str(address arg1)
#
mapping of address stor5;
address owner;
uint256 stor7;
uint256 sub_1b570c25;
mapping of struct sub_421a7f56;
address sub_96b1f6b5Address;
mapping of uint8 stor11;
mapping of uint256 sub_8be3b12d;
uint256 sub_e9518196;

function sub_1b570c25(?) {
    return sub_1b570c25
}

function sub_421a7f56(?) {
    require calldata.size - 4 >= 32
    return sub_421a7f56[arg1].field_0, sub_421a7f56[arg1].field_256, sub_421a7f56[arg1].field_512, sub_421a7f56[arg1].field_768
}

function isApproved(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
}

function sub_8be3b12d(?) {
    require calldata.size - 4 >= 32
    return sub_8be3b12d[arg1]
}

function owner() {
    return owner
}

function sub_96b1f6b5(?) {
    return sub_96b1f6b5Address
}

function getPrice(uint16 arg1) {
    require calldata.size - 4 >= 32
    return sub_8be3b12d[arg1 << 240]
}

function sub_e9518196(?) {
    return sub_e9518196
}

function approvedAddresses(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7db66e4c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_e9518196 = arg1
}

function sub_8ad018b1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_96b1f6b5Address = arg1
}

function setPrice(uint16 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_8be3b12d[arg1 << 240] = arg2
}

function setApprovedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor11[address(arg1)] = uint8(arg2)
}

function sub_05941644(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_421a7f56[arg1 << 240].field_0 = arg2
    sub_421a7f56[arg1 << 240].field_256 = arg3
    sub_421a7f56[arg1 << 240].field_512 = arg4
    sub_421a7f56[arg1 << 240].field_768 = block.number - 1
}

function sub_9c1b1c36(?) {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x72536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit 0x35b319a8: arg1, arg2
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'OracleClient: failed to withdraw'
    emit Withdraw(address(arg1), arg2);
    stor7 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        emit WithdrawTokens(address arg1, address arg2, uint256 arg3):
                            address(arg1),
                            arg2,
                            0,
                            arg3,
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        emit WithdrawTokens(address(arg1), address(arg2), arg3);
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if arg3:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
