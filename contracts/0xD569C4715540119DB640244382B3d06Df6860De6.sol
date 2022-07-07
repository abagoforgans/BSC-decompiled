contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address referrers;
mapping of uint256 referralsCount;
mapping of uint256 totalReferralCommissions;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function getReferrer(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[address(arg1)]
}

function referralsCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referralsCount[arg1]
}

function owner() payable {
    return owner
}

function totalReferralCommissions(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalReferralCommissions[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor1[address(arg1)] = uint8(arg2)
    emit OperatorUpdated(arg1, arg2);
}

function transferOwnership(address arg1) payable {
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

function recordReferral(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x644f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1:
        if arg2:
            if arg1 != arg2:
                if not referrers[address(arg1)]:
                    referrers[address(arg1)] = arg2
                    referralsCount[address(arg2)]++
                    emit ReferralRecorded(arg1, arg2);
}

function recordReferralCommission(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x644f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1:
        if arg2 > 0:
            if arg2 + totalReferralCommissions[address(arg1)] < totalReferralCommissions[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            totalReferralCommissions[address(arg1)] += arg2
            emit ReferralCommissionRecorded(arg2, arg1);
}

function sub_1233c21e(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
