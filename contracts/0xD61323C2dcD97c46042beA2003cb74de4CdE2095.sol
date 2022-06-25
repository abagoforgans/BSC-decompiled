contract main {




// =====================  Runtime code  =====================


address managerAddress;
address stor1;

function manager() payable {
    return managerAddress
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(managerAddress, 0);
    managerAddress = 0
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(managerAddress, stor1);
    managerAddress = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(managerAddress, arg1);
    stor1 = arg1
}

function sub_beadb32e(?) payable {
    require calldata.size - 4 >= 96
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg1), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(arg1), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(arg1)
    call arg1.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
