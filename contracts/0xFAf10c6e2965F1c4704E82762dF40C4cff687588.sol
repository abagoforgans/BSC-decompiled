contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_f3fee4afAddress;
address challengerAddress;
address stakingAddress;
address burnAddress;
mapping of uint8 stor5;
mapping of uint256 sub_3db1a748;
mapping of uint256 sub_93f4e378;
uint256 sub_0774ca8a;
uint256 sub_6c3433a8;
uint256 sub_e8f9bb26;
uint256 sub_51df96db;
uint256 sub_f312678a;
uint256 sub_98c9b38f;
uint256 sub_b33c4d1a;
uint256 sub_67e7165a;

function sub_0774ca8a(?) payable {
    return sub_0774ca8a
}

function sub_1c26a735(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_3db1a748(?) payable {
    require calldata.size - 4 >= 32
    return sub_3db1a748[arg1]
}

function staking() payable {
    return stakingAddress
}

function sub_51df96db(?) payable {
    return sub_51df96db
}

function challenger() payable {
    return challengerAddress
}

function sub_67e7165a(?) payable {
    return sub_67e7165a
}

function sub_6c3433a8(?) payable {
    return sub_6c3433a8
}

function burnAddress() payable {
    return burnAddress
}

function owner() payable {
    return address(owner)
}

function sub_93f4e378(?) payable {
    require calldata.size - 4 >= 32
    return sub_93f4e378[arg1]
}

function sub_98c9b38f(?) payable {
    return sub_98c9b38f
}

function sub_b33c4d1a(?) payable {
    return sub_b33c4d1a
}

function sub_e8f9bb26(?) payable {
    return sub_e8f9bb26
}

function sub_f312678a(?) payable {
    return sub_f312678a
}

function sub_f3fee4af(?) payable {
    return sub_f3fee4afAddress
}

function _fallback() payable {
    revert
}

function ownable() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function sub_2a9439b1(?) payable {
    require calldata.size - 4 >= 32
    if 3 < sub_3db1a748[arg1]:
        revert with 0, 17
    return (-sub_3db1a748[arg1] + 3)
}

function setStaking(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(owner)
    stakingAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(owner)
    require arg1
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function setChallenger(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(owner)
    if not uint32(ext_code.size(arg1)):
        revert with 0, 'Not a contract'
    challengerAddress = arg1
}

function sub_e2ee7b55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(owner)
    if not uint32(ext_code.size(arg1)):
        revert with 0, 'Not a contract'
    sub_f3fee4afAddress = address(arg1)
}

function sub_fd326051(?) payable {
    require calldata.size - 4 >= 32
    staticcall challengerAddress.0xfd326051 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_67cfc7fe(?) payable {
    staticcall challengerAddress.0x57151b6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_823bf25e(?) payable {
    staticcall challengerAddress.isCaller(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_468a7492(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == address(owner)
    require ext_code.size(sub_f3fee4afAddress)
    call sub_f3fee4afAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_727cbb66(?) payable {
    require calldata.size - 4 >= 256
    require msg.sender == address(owner)
    if arg1 <= 0:
        revert with 0, 'wrong value'
    if arg2 <= arg1:
        revert with 0, 'wrong value'
    if arg3 <= arg2:
        revert with 0, 'wrong value'
    if arg4 <= arg3:
        revert with 0, 'wrong value'
    if arg5 <= arg4:
        revert with 0, 'wrong value'
    if arg6 <= arg5:
        revert with 0, 'wrong value'
    if arg7 <= arg6:
        revert with 0, 'wrong value'
    if arg8 <= arg7:
        revert with 0, 'wrong value'
    sub_0774ca8a = arg1
    sub_6c3433a8 = arg2
    sub_e8f9bb26 = arg3
    sub_51df96db = arg4
    sub_f312678a = arg5
    sub_98c9b38f = arg6
    sub_b33c4d1a = arg7
    sub_67e7165a = arg8
}

function sub_bff54a71(?) payable {
    require calldata.size - 4 >= 64
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(challengerAddress)
    call challengerAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, burnAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_93f4e378[arg1] > -2:
        revert with 0, 17
    if sub_93f4e378[arg1] + 1 < sub_93f4e378[arg1]:
        revert with 0, 1
    sub_93f4e378[arg1]++
    emit 0xd5d1b1ac: arg1, sub_93f4e378[arg1] + 1, msg.sender
}

function sub_1a59be4f(?) payable {
    require calldata.size - 4 >= 128
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner'
    if arg4 <= 0:
        revert with 0, 'wrong price'
    if 3 <= sub_3db1a748[arg1]:
        revert with 0, 'reset only 3 times'
    if arg3 > 100:
        revert with 0, 'Wrong ability count'
    if arg2 <= 0:
        revert with 0, 'Not valid ability type'
    if arg2 >= 6:
        revert with 0, 'Not valid ability type'
    require ext_code.size(stakingAddress)
    call stakingAddress.0x65002f80 with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call challengerAddress.0x241563ad with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_3db1a748[arg1] > -2:
        revert with 0, 17
    sub_3db1a748[arg1]++
    emit 0x80cb8e08: arg1, msg.sender
}

function sub_31a4735a(?) payable {
    require calldata.size - 4 >= 128
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner'
    if arg4 <= 0:
        revert with 0, 'wrong price'
    if 3 <= sub_3db1a748[arg1]:
        revert with 0, 'reset only 3 times'
    if arg3 > 100:
        revert with 0, 'Wrong ability count'
    if arg2 <= 0:
        revert with 0, 'Not valid ability type'
    if arg2 >= 6:
        revert with 0, 'Not valid ability type'
    call sub_f3fee4afAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, burnAddress, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call challengerAddress.0x241563ad with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_3db1a748[arg1] > -2:
        revert with 0, 17
    sub_3db1a748[arg1]++
    emit 0x80cb8e08: arg1, msg.sender
}

function sub_90162f02(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    staticcall challengerAddress.0xfd326051 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall challengerAddress.0xfd326051 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    if ext_call.return_data[0] >= 9:
        revert with 0, 'over limit level'
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, '2 challenger's level must equal'
    if ext_call.return_data[0] != 1:
        if ext_call.return_data[0] != 2:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 0
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
        else:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_6c3433a8 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_6c3433a8
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
    else:
        if ext_call.return_data[0] != 2:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_0774ca8a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_0774ca8a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
        else:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_6c3433a8 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_6c3433a8
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call sub_f3fee4afAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, burnAddress, 10^18 * sub_67e7165a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(challengerAddress)
    call challengerAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, burnAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3:
        return 0
    require ext_code.size(challengerAddress)
    call challengerAddress.0x1285f5b0 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_93f4e378[arg1] = 0
    emit 0x781f17e7: arg1, msg.sender
    return 1
}

function sub_dcb0f75c(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    staticcall challengerAddress.0xfd326051 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall challengerAddress.0xfd326051 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    staticcall challengerAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    if ext_call.return_data[0] >= 9:
        revert with 0, 'over limit level'
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, '2 challenger's level must equal'
    if ext_call.return_data[0] != 1:
        if ext_call.return_data[0] != 2:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
        else:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_6c3433a8 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_6c3433a8
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
    else:
        if ext_call.return_data[0] != 2:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_0774ca8a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_0774ca8a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
        else:
            if ext_call.return_data[0] != 3:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_6c3433a8 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_6c3433a8
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
            else:
                if ext_call.return_data[0] != 4:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_e8f9bb26 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_e8f9bb26
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                else:
                    if ext_call.return_data[0] != 5:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_51df96db > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_51df96db
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                    else:
                        if ext_call.return_data[0] != 6:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_f312678a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_f312678a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                        else:
                            if ext_call.return_data[0] != 7:
                                if ext_call.return_data[0] != 8:
                                    if sub_98c9b38f > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_98c9b38f
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
                            else:
                                if ext_call.return_data[0] != 8:
                                    if sub_b33c4d1a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_b33c4d1a
                                else:
                                    if sub_67e7165a > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    require ext_code.size(stakingAddress)
                                    call stakingAddress.0x65002f80 with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^18 * sub_67e7165a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(challengerAddress)
    call challengerAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, burnAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3:
        return 0
    require ext_code.size(challengerAddress)
    call challengerAddress.0x1285f5b0 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_93f4e378[arg1] = 0
    emit 0x781f17e7: arg1, msg.sender
    return 1
}



}
