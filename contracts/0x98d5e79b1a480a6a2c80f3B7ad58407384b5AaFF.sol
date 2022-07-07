contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
array of struct orders;
mapping of uint256 userBalance;
address sub_70061393Address;
address sub_fc30ca86Address;

function userBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return userBalance[arg1]
}

function sub_19c0c44d(?) payable {
    return orders.length
}

function sub_70061393(?) payable {
    return sub_70061393Address
}

function owner() payable {
    return owner
}

function orders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < orders.length
    require orders[arg1].field_1024 <= 1
    return orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_512, orders[arg1].field_768, orders[arg1].field_1024
}

function sub_fc30ca86(?) payable {
    return sub_fc30ca86Address
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

function setSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == stor2:
        revert with 0, 'repeat'
    stor2 = arg1
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

function tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if sub_70061393Address != msg.sender:
        revert with 0, 'token error'
    require arg5.length >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if cd[(arg5 + 36)] != 90:
        if cd[(arg5 + 36)] != 180:
            if cd[(arg5 + 36)] != 360:
                revert with 0, 'day error'
    if userBalance[address(arg2)] + arg4 < userBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    userBalance[address(arg2)] += arg4
    orders.length++
    orders[orders.length].field_0 = arg2
    orders[orders.length].field_256 = arg4
    orders[orders.length].field_512 = block.timestamp + -(block.timestamp % 24 * 3600) + (24 * 3600)
    orders[orders.length].field_768 = cd[(arg5 + 36)]
    orders[orders.length].field_1024 = 0
    orders[orders.length].field_1280 = 0
    emit Deposit(address(arg2), arg4, cd[(arg5 + 36)], orders.length - 1);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(sub_70061393Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_70061393Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 != 90:
        if arg2 != 180:
            if arg2 != 360:
                revert with 0, 'day error'
    if userBalance[address(msg.sender)] + arg1 < userBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    userBalance[address(msg.sender)] += arg1
    orders.length++
    orders[orders.length].field_0 = msg.sender
    orders[orders.length].field_256 = arg1
    orders[orders.length].field_512 = block.timestamp + -(block.timestamp % 24 * 3600) + (24 * 3600)
    orders[orders.length].field_768 = arg2
    orders[orders.length].field_1024 = 0
    orders[orders.length].field_1280 = 0
    emit Deposit(msg.sender, arg1, arg2, orders.length - 1);
    stor1 = 1
}

function sub_7fec2125(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[224 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 224] = 0
    if cd[36]:
        mem[floor32(('cd', 4).length) + 348 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
        mem[floor32(('cd', 4).length) + ('cd', 68).length + 348] = 0
        if ('cd', 68).length != 65:
            revert with 0, 'ECDSA: invalid signature length'
        if mem[floor32(('cd', 4).length) + 380] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 
                        32,
                        34,
                        0x7345434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                        mem[floor32(('cd', 4).length) + ceil32(('cd', 68).length) + 450 len 30]
        revert with 0, 
                    32,
                    34,
                    0x6c45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                    mem[floor32(('cd', 4).length) + ceil32(('cd', 68).length) + 450 len 30]
    idx = 0
    s = 0
    while uint8(idx) < ('cd', 4).length:
        require cd[((32 * uint8(idx)) + cd[4] + 36)] < orders.length
        mem[0] = 3
        if orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_0 != msg.sender:
            revert with 0, 'owner error'
        require orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_1024 <= 1
        if orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_1024:
            revert with 0, 'status error'
        if block.timestamp < orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_512 + (24 * 3600 * orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_768):
            revert with 0, 'time not yet'
        orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_1024 = 1
        if s + orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + orders[cd[((32 * uint8(idx)) + cd[4] + 36)]].field_256
        continue 
    if s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None > userBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    userBalance[address(msg.sender)] += -1 * s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    require ext_code.size(sub_70061393Address)
    call sub_70061393Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_70061393Address)
    call sub_70061393Address.0x23b872dd with:
         gas gas_remaining wei
        args sub_fc30ca86Address, msg.sender, cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xde6c06f4: msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, cd[36]
    stor1 = 1
}



}
