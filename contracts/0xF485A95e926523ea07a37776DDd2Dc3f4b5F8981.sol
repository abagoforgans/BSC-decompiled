contract main {




// =====================  Runtime code  =====================


const PERCENT_DENOMINATOR = 10000


uint256 sub_ed16eb05;
uint32 stor1;
address OWNER_ADDRESS;
uint256 stor1;
address sub_60aec0f0Address;
address sub_5234e2dcAddress;
address POOL_ADDRESS;
address FACTORY_ADDRESS;
address WETHAddress;
uint256 contractCodeHash;
address sub_1ff51c86Address;
uint256 sub_d296345e;
mapping of address users;
mapping of uint256 userIds;
mapping of address user;

function OWNER_ADDRESS() payable {
    return address(OWNER_ADDRESS)
}

function sub_1ff51c86(?) payable {
    return sub_1ff51c86Address
}

function userIds(address arg1) payable {
    require calldata.size - 4 >= 32
    return userIds[arg1]
}

function userAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(user[arg1])
}

function sub_5234e2dc(?) payable {
    return sub_5234e2dcAddress
}

function sub_60aec0f0(?) payable {
    return sub_60aec0f0Address
}

function contractCodeHash() payable {
    return contractCodeHash
}

function FACTORY_ADDRESS() payable {
    return FACTORY_ADDRESS
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return users[arg1]
}

function WETH() payable {
    return WETHAddress
}

function sub_d296345e(?) payable {
    return sub_d296345e
}

function sub_ed16eb05(?) payable {
    return sub_ed16eb05
}

function POOL_ADDRESS() payable {
    return POOL_ADDRESS
}

function _fallback() payable {
    revert
}

function sub_534d02b8(?) payable {
    require calldata.size - 4 >= 32
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    sub_d296345e = arg1
}

function sub_fd1a2397(?) payable {
    require calldata.size - 4 >= 32
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    sub_1ff51c86Address = arg1
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    sub_60aec0f0Address = arg1
    POOL_ADDRESS = arg2
    FACTORY_ADDRESS = arg3
    sub_5234e2dcAddress = arg4
    sub_1ff51c86Address = arg5
    WETHAddress = arg6
}

function join() payable {
    if sub_ed16eb05:
        if users[msg.sender]:
            revert with 0, 'CROSSFIN MANAGER: USER_EXIST'
    create contract with 0 wei
                    code: code.data[3179 len 14005], address(msg.sender), address(OWNER_ADDRESS)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    users[msg.sender] = address(create.new_address)
    userIds[msg.sender] = sub_ed16eb05
    uint256(user[stor0]) = msg.sender or Mask(96, 160, uint256(user[stor0]))
    sub_ed16eb05++
    return users[msg.sender]
}

function sub_1e58d4f7(?) payable {
    require calldata.size - 4 >= 32
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    require ext_code.size(sub_5234e2dcAddress)
    staticcall sub_5234e2dcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
        call sub_5234e2dcAddress with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[260 len 4]
    else:
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
        call sub_5234e2dcAddress with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 39, code.data[17184 len 39], mem[303 len 25]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 39, code.data[17184 len 39], mem[303 len 25]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 32, 39, code.data[17184 len 39], mem[ceil32(return_data.size) + 304 len 25]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 32, 39, code.data[17184 len 39], mem[ceil32(return_data.size) + 304 len 25]
}

function sub_3a2ee252(?) payable {
    require calldata.size - 4 >= 64
    if users[address(arg2)] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[17300 len 43], mem[207 len 21]
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call sub_5234e2dcAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 44, code.data[17256 len 44], mem[340 len 12], uint32(arg1), mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 44, code.data[17256 len 44], mem[340 len 12], uint32(arg1), mem[356 len 4]
        if not arg1:
            mem[392 len 64] = 0, address(arg2), 0
            call sub_1ff51c86Address with:
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(arg2), 0) >> 32, mem[456 len 4]
        else:
            if sub_d296345e * arg1 / arg1 != sub_d296345e:
                revert with 0, 32, 33, code.data[17223 len 33], mem[329 len 23], uint32(arg1), mem[356 len 4]
            mem[392 len 64] = 0, address(arg2), Mask(224, 32, sub_d296345e * arg1 / 10000) >> 32
            call sub_1ff51c86Address with:
                 gas gas_remaining wei
                args sub_d296345e * arg1 / 10000, Mask(224, 32, address(arg2), Mask(224, 32, sub_d296345e * arg1 / 10000) >> 32) >> 32, mem[456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 39, code.data[17184 len 39], mem[499 len 25]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 39, code.data[17184 len 39], mem[499 len 25]
        else:
            mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 39, code.data[17184 len 39], mem[ceil32(return_data.size) + 500 len 25]
            if return_data.size:
                require return_data.size >= 32
                if not mem[424]:
                    revert with 0, 32, 39, code.data[17184 len 39], mem[ceil32(return_data.size) + 500 len 25]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 32, 44, code.data[17256 len 44], mem[ceil32(return_data.size) + 341 len 20]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 32, 44, code.data[17256 len 44], mem[ceil32(return_data.size) + 341 len 20]
        if not arg1:
            mem[ceil32(return_data.size) + 393 len 64] = 0, address(arg2), 0
            call sub_1ff51c86Address with:
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(arg2), 0) >> 32, mem[ceil32(return_data.size) + 457 len 4]
        else:
            if sub_d296345e * arg1 / arg1 != sub_d296345e:
                revert with 0, 32, 33, code.data[17223 len 33], mem[ceil32(return_data.size) + 330 len 31]
            mem[ceil32(return_data.size) + 393 len 64] = 0, address(arg2), Mask(224, 32, sub_d296345e * arg1 / 10000) >> 32
            call sub_1ff51c86Address with:
                 gas gas_remaining wei
                args sub_d296345e * arg1 / 10000, Mask(224, 32, address(arg2), Mask(224, 32, sub_d296345e * arg1 / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 39, code.data[17184 len 39], mem[ceil32(return_data.size) + 500 len 25]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 39, code.data[17184 len 39], mem[ceil32(return_data.size) + 500 len 25]
        else:
            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 39, code.data[17184 len 39], mem[(2 * ceil32(return_data.size)) + 501 len 25]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 425]:
                    revert with 0, 32, 39, code.data[17184 len 39], mem[(2 * ceil32(return_data.size)) + 501 len 25]
    return 0
}



}
