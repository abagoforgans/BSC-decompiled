contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;
array of struct stor6;
array of struct stor7;
array of struct stor8;
array of struct stor10;
array of struct stor11;
array of struct stor12;
array of struct stor13;
array of struct stor14;
array of struct stor15;
array of struct stor16;
address stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 sub_9e13c1d2;
address stor24;
address stor25;
uint32 stor26;
address sub_ee2a02d9Address;
uint256 stor26;
address sub_c973b66bAddress;
mapping of struct sub_2c51efbb;
mapping of struct sub_a79dc43b;

function sub_2c51efbb(?) {
    require calldata.size - 4 >= 32
    require sub_2c51efbb[arg1].field_1792 <= 4
    return sub_2c51efbb[arg1].field_0, 
           sub_2c51efbb[arg1].field_256,
           sub_2c51efbb[arg1].field_512,
           sub_2c51efbb[arg1].field_768,
           sub_2c51efbb[arg1].field_1024,
           sub_2c51efbb[arg1].field_1280,
           sub_2c51efbb[arg1].field_1536,
           sub_2c51efbb[arg1].field_1792
}

function sub_9e13c1d2(?) {
    return sub_9e13c1d2
}

function sub_a79dc43b(?) {
    require calldata.size - 4 >= 32
    return sub_a79dc43b[address(arg1)].field_0
}

function sub_c973b66b(?) {
    return sub_c973b66bAddress
}

function sub_ed7fe108(?) {
    require calldata.size - 4 >= 32
    return sub_a79dc43b[arg1].field_0
}

function sub_ee2a02d9(?) {
    return address(sub_ee2a02d9Address)
}

function _fallback() payable {
    revert
}

function sub_0cff3cfe(?) {
    return stor24, stor25
}

function getServiceFees() {
    return stor18, stor20, stor19, stor21
}

function sub_ca55dc81(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x386c4ae6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return stor18, stor19
    return stor20, stor21
}

function sub_6c6bae92(?) {
    require calldata.size - 4 >= 32
    if msg.sender == stor17:
        sub_9e13c1d2 = arg1
    mem[164] = uint256(stor7.field_0)
    idx = 164
    s = 0
    while stor7.length + 164 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function sub_7b30f2c9(?) {
    require calldata.size - 4 >= 32
    if msg.sender == stor17:
        sub_c973b66bAddress = arg1
    mem[164] = uint256(stor7.field_0)
    idx = 164
    s = 0
    while stor7.length + 164 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function sub_aa9de9b8(?) {
    require calldata.size - 4 >= 64
    if msg.sender == stor17:
        stor24 = arg1
        stor25 = arg2
    mem[164] = uint256(stor7.field_0)
    idx = 164
    s = 0
    while stor7.length + 164 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function sub_d91b46a1(?) {
    require calldata.size - 4 >= 32
    if msg.sender == stor17:
        address(sub_ee2a02d9Address) = arg1
    mem[164] = uint256(stor7.field_0)
    idx = 164
    s = 0
    while stor7.length + 164 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function sub_070367a5(?) {
    require calldata.size - 4 >= 128
    if stor17 != msg.sender:
        mem[164] = uint256(stor7.field_0)
        idx = 164
        s = 0
        while stor7.length + 164 > idx + 32:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    stor18 = arg1
    stor20 = arg2
    stor19 = arg3
    stor21 = arg4
}

function sub_a9c9a918(?) {
    require calldata.size - 4 >= 32
    if sub_2c51efbb[arg1].field_256:
        require sub_2c51efbb[arg1].field_1792 <= 4
        return arg1, 
               sub_2c51efbb[arg1].field_256,
               sub_2c51efbb[arg1].field_512,
               sub_2c51efbb[arg1].field_768,
               sub_2c51efbb[arg1].field_1024,
               sub_2c51efbb[arg1].field_1280,
               sub_2c51efbb[arg1].field_1536,
               sub_2c51efbb[arg1].field_1792
    mem[164] = uint256(stor6.field_0)
    idx = 164
    s = 0
    while stor6.length + 164 > idx + 32:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor6.length, mem[164 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)]
}

function blockContract(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if sub_c973b66bAddress != msg.sender:
        if sub_2c51efbb[arg1].field_768 != msg.sender:
            mem[164] = uint256(stor10.field_0)
            idx = 164
            s = 0
            while stor10.length + 164 > idx + 32:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
    require sub_2c51efbb[arg1].field_1792 <= 4
    if not sub_2c51efbb[arg1].field_1792:
        sub_2c51efbb[arg1].field_1792 = 1
        emit ContractBlocked(arg1);
    mem[164] = uint256(stor4.field_0)
    idx = 164
    s = 0
    while stor4.length + 164 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor4.length, mem[164 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]
}

function sub_bfce5508(?) {
    require calldata.size - 4 >= 32
    if sub_2c51efbb[arg1].field_256 != msg.sender:
        mem[164] = uint256(stor8.field_0)
        idx = 164
        s = 0
        while stor8.length + 164 > idx + 32:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor8.length, mem[164 len stor8.length + (floor32(stor8.length - 1) + -stor8.length + 32 % 32)]
    require sub_2c51efbb[arg1].field_1792 <= 4
    if sub_2c51efbb[arg1].field_1792:
        mem[164] = uint256(stor4.field_0)
        idx = 164
        s = 0
        while stor4.length + 164 > idx + 32:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length, mem[164 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]
    if sub_2c51efbb[arg1].field_1024:
        mem[164] = uint256(stor12.field_0)
        idx = 164
        s = 0
        while stor12.length + 164 > idx + 32:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor12.length, mem[164 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
    if sub_2c51efbb[arg1].field_1536 + sub_9e13c1d2 >= block.timestamp:
        mem[164] = uint256(stor11.field_0)
        idx = 164
        s = 0
        while stor11.length + 164 > idx + 32:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor11.length, mem[164 len stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32)]
    call sub_2c51efbb[arg1].field_256 with:
       value sub_2c51efbb[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2c51efbb[arg1].field_1792 = 3
    emit 0xcd4055a5: sub_2c51efbb[arg1].field_1280, arg1
}

function sub_6142a7af(?) {
    require calldata.size - 4 >= 32
    if stor17 != msg.sender:
        mem[164] = uint256(stor7.field_0)
        idx = 164
        s = 0
        while stor7.length + 164 > idx + 32:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    if not address(sub_ee2a02d9Address):
        mem[164] = uint256(stor14.field_0)
        idx = 164
        s = 0
        while stor14.length + 164 > idx + 32:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor14.length, mem[164 len stor14.length + (floor32(stor14.length - 1) + -stor14.length + 32 % 32)]
    if not arg1:
        call address(sub_ee2a02d9Address) with:
           value sub_a79dc43b[address(arg1)].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor26), uint32(stor26), sub_a79dc43b[address(arg1)].field_32
        call arg1 with:
           funct uint32(stor26)
             gas gas_remaining wei
            args sub_a79dc43b[address(arg1)].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor26), uint32(stor26), sub_a79dc43b[address(arg1)].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor26):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    sub_a79dc43b[address(arg1)].field_0 = 0
}

function sub_ba08bcbd(?) {
    require calldata.size - 4 >= 32
    if sub_2c51efbb[arg1].field_256 != msg.sender:
        mem[164] = uint256(stor8.field_0)
        idx = 164
        s = 0
        while stor8.length + 164 > idx + 32:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor8.length, mem[164 len stor8.length + (floor32(stor8.length - 1) + -stor8.length + 32 % 32)]
    require sub_2c51efbb[arg1].field_1792 <= 4
    if sub_2c51efbb[arg1].field_1792:
        mem[164] = uint256(stor4.field_0)
        idx = 164
        s = 0
        while stor4.length + 164 > idx + 32:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length, mem[164 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]
    if not sub_2c51efbb[arg1].field_1024:
        mem[164] = uint256(stor12.field_0)
        idx = 164
        s = 0
        while stor12.length + 164 > idx + 32:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor12.length, mem[164 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
    if sub_2c51efbb[arg1].field_1536 + sub_9e13c1d2 >= block.timestamp:
        mem[164] = uint256(stor11.field_0)
        idx = 164
        s = 0
        while stor11.length + 164 > idx + 32:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor11.length, mem[164 len stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32)]
    if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_1312
    call sub_2c51efbb[arg1].field_1024 with:
       funct sub_2c51efbb[arg1].field_256
         gas gas_remaining wei
        args sub_2c51efbb[arg1].field_1280, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_1280
        if not unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    sub_2c51efbb[arg1].field_1792 = 3
    emit 0xcd4055a5: sub_2c51efbb[arg1].field_1280, arg1
}

function sub_06bc6357(?) {
    require calldata.size - 4 >= 32
    if sub_2c51efbb[arg1].field_256 != msg.sender:
        mem[164] = uint256(stor8.field_0)
        idx = 164
        s = 0
        while stor8.length + 164 > idx + 32:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor8.length, mem[164 len stor8.length + (floor32(stor8.length - 1) + -stor8.length + 32 % 32)]
    require sub_2c51efbb[arg1].field_1792 <= 4
    if sub_2c51efbb[arg1].field_1792:
        mem[164] = uint256(stor4.field_0)
        idx = 164
        s = 0
        while stor4.length + 164 > idx + 32:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length, mem[164 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]
    if sub_2c51efbb[arg1].field_1024:
        mem[164] = uint256(stor12.field_0)
        idx = 164
        s = 0
        while stor12.length + 164 > idx + 32:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor12.length, mem[164 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
    require ext_code.size(stor25)
    staticcall stor25.0x386c4ae6 with:
            gas gas_remaining wei
           args sub_2c51efbb[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_2c51efbb[arg1].field_1280 / 100:
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if 0 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            call sub_2c51efbb[arg1].field_512 with:
               value sub_2c51efbb[arg1].field_1280 - (0 / stor22) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_a79dc43b[0].field_0 += 0 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor19, sub_2c51efbb[arg1].field_1280 - (0 / stor22), arg1
        else:
            require sub_2c51efbb[arg1].field_1280 / 100
            if sub_2c51efbb[arg1].field_1280 / 100 * stor19 / sub_2c51efbb[arg1].field_1280 / 100 != stor19:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            call sub_2c51efbb[arg1].field_512 with:
               value sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_a79dc43b[0].field_0 += sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor19, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22), arg1
    else:
        if not sub_2c51efbb[arg1].field_1280 / 100:
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if 0 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            call sub_2c51efbb[arg1].field_512 with:
               value sub_2c51efbb[arg1].field_1280 - (0 / stor22) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_a79dc43b[0].field_0 += 0 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor21, sub_2c51efbb[arg1].field_1280 - (0 / stor22), arg1
        else:
            require sub_2c51efbb[arg1].field_1280 / 100
            if sub_2c51efbb[arg1].field_1280 / 100 * stor21 / sub_2c51efbb[arg1].field_1280 / 100 != stor21:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            call sub_2c51efbb[arg1].field_512 with:
               value sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_a79dc43b[0].field_0 += sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor21, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22), arg1
}

function sub_99eba99b(?) payable {
    require calldata.size - 4 >= 192
    if sub_2c51efbb[arg1].field_256:
        mem[164] = uint256(stor15.field_0)
        idx = 164
        s = 0
        while stor15.length + 164 > idx + 32:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length, mem[164 len stor15.length + (floor32(stor15.length - 1) + -stor15.length + 32 % 32)]
    if arg2 != msg.sender:
        mem[164] = uint256(stor0.field_0)
        idx = 164
        s = 0
        while stor0.length + 164 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    if arg6 + block.timestamp < arg6:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 + block.timestamp <= block.timestamp:
        mem[164] = uint256(stor2.field_0)
        idx = 164
        s = 0
        while stor2.length + 164 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor2.length, mem[164 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32)]
    require ext_code.size(stor25)
    staticcall stor25.0x386c4ae6 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg5 / 100:
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg5 + (0 / stor22) < arg5:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (0 / stor22) != msg.value:
                mem[292] = uint256(stor3.field_0)
                idx = 292
                s = 0
                while stor3.length + 292 > idx + 32:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor3.length, mem[292 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]
            sub_a79dc43b[0].field_0 += 0 / stor22
        else:
            require arg5 / 100
            if arg5 / 100 * stor18 / arg5 / 100 != stor18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg5 + (arg5 / 100 * stor18 / stor22) < arg5:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (arg5 / 100 * stor18 / stor22) != msg.value:
                mem[292] = uint256(stor3.field_0)
                idx = 292
                s = 0
                while stor3.length + 292 > idx + 32:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor3.length, mem[292 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]
            sub_a79dc43b[0].field_0 += arg5 / 100 * stor18 / stor22
        sub_2c51efbb[arg1].field_256 = arg2
        sub_2c51efbb[arg1].field_512 = arg3
        if arg4:
            sub_2c51efbb[arg1].field_768 = arg4
        sub_2c51efbb[arg1].field_1280 = arg5
        sub_2c51efbb[arg1].field_1536 = arg6 + block.timestamp
        emit 0x5fad2f7e: stor18, 0, arg5, arg1
    else:
        if not arg5 / 100:
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg5 + (0 / stor22) < arg5:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (0 / stor22) != msg.value:
                mem[292] = uint256(stor3.field_0)
                idx = 292
                s = 0
                while stor3.length + 292 > idx + 32:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor3.length, mem[292 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]
            sub_a79dc43b[0].field_0 += 0 / stor22
        else:
            require arg5 / 100
            if arg5 / 100 * stor20 / arg5 / 100 != stor20:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg5 + (arg5 / 100 * stor20 / stor22) < arg5:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (arg5 / 100 * stor20 / stor22) != msg.value:
                mem[292] = uint256(stor3.field_0)
                idx = 292
                s = 0
                while stor3.length + 292 > idx + 32:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor3.length, mem[292 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]
            sub_a79dc43b[0].field_0 += arg5 / 100 * stor20 / stor22
        sub_2c51efbb[arg1].field_256 = arg2
        sub_2c51efbb[arg1].field_512 = arg3
        if arg4:
            sub_2c51efbb[arg1].field_768 = arg4
        sub_2c51efbb[arg1].field_1280 = arg5
        sub_2c51efbb[arg1].field_1536 = arg6 + block.timestamp
        emit 0x5fad2f7e: stor20, 0, arg5, arg1
}

function sub_bba7b042(?) {
    require calldata.size - 4 >= 32
    if sub_2c51efbb[arg1].field_256 != msg.sender:
        mem[164] = uint256(stor8.field_0)
        idx = 164
        s = 0
        while stor8.length + 164 > idx + 32:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor8.length, mem[164 len stor8.length + (floor32(stor8.length - 1) + -stor8.length + 32 % 32)]
    require sub_2c51efbb[arg1].field_1792 <= 4
    if sub_2c51efbb[arg1].field_1792:
        mem[164] = uint256(stor4.field_0)
        idx = 164
        s = 0
        while stor4.length + 164 > idx + 32:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length, mem[164 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]
    if not sub_2c51efbb[arg1].field_1024:
        mem[164] = uint256(stor12.field_0)
        idx = 164
        s = 0
        while stor12.length + 164 > idx + 32:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor12.length, mem[164 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
    require ext_code.size(stor25)
    staticcall stor25.0x386c4ae6 with:
            gas gas_remaining wei
           args sub_2c51efbb[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_2c51efbb[arg1].field_1280 / 100:
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if 0 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (0 / stor22)) >> 32
            call sub_2c51efbb[arg1].field_1024 with:
               funct sub_2c51efbb[arg1].field_512
                 gas gas_remaining wei
                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (0 / stor22)) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor19, sub_2c51efbb[arg1].field_1280 - (0 / stor22), arg1
        else:
            require sub_2c51efbb[arg1].field_1280 / 100
            if sub_2c51efbb[arg1].field_1280 / 100 * stor19 / sub_2c51efbb[arg1].field_1280 / 100 != stor19:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22)) >> 32
            call sub_2c51efbb[arg1].field_1024 with:
               funct sub_2c51efbb[arg1].field_512
                 gas gas_remaining wei
                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22)) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor19, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor19 / stor22), arg1
    else:
        if not sub_2c51efbb[arg1].field_1280 / 100:
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if 0 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (0 / stor22)) >> 32
            call sub_2c51efbb[arg1].field_1024 with:
               funct sub_2c51efbb[arg1].field_512
                 gas gas_remaining wei
                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (0 / stor22)) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor21, sub_2c51efbb[arg1].field_1280 - (0 / stor22), arg1
        else:
            require sub_2c51efbb[arg1].field_1280 / 100
            if sub_2c51efbb[arg1].field_1280 / 100 * stor21 / sub_2c51efbb[arg1].field_1280 / 100 != stor21:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22)) >> 32
            mem[516 len 0] = 0
            call sub_2c51efbb[arg1].field_1024 with:
               funct sub_2c51efbb[arg1].field_512
                 gas gas_remaining wei
                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22)) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22
            sub_2c51efbb[arg1].field_1792 = 2
            emit 0xc82c0a75: stor21, sub_2c51efbb[arg1].field_1280 - (sub_2c51efbb[arg1].field_1280 / 100 * stor21 / stor22), arg1
}

function sub_90fa7774(?) payable {
    require calldata.size - 4 >= 224
    mem[96] = 0x28f9439100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor24)
    staticcall stor24.0x28f94391 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    s = not arg5
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != arg5:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        mem[(32 * _7) + ceil32(return_data.size) + 196] = uint256(stor12.field_0)
        idx = (32 * _7) + ceil32(return_data.size) + 196
        s = 0
        while (32 * _7) + ceil32(return_data.size) + stor12.length + 196 > idx + 32:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor12.length,
                    mem[(32 * _7) + ceil32(return_data.size) + 196 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
    if sub_2c51efbb[arg1].field_256:
        mem[(32 * _7) + ceil32(return_data.size) + 196] = uint256(stor15.field_0)
        idx = (32 * _7) + ceil32(return_data.size) + 196
        s = 0
        while (32 * _7) + ceil32(return_data.size) + stor15.length + 196 > idx + 32:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor15.length,
                    mem[(32 * _7) + ceil32(return_data.size) + 196 len stor15.length + (floor32(stor15.length - 1) + -stor15.length + 32 % 32)]
    if arg2 != msg.sender:
        mem[(32 * _7) + ceil32(return_data.size) + 196] = uint256(stor0.field_0)
        idx = (32 * _7) + ceil32(return_data.size) + 196
        s = 0
        while (32 * _7) + ceil32(return_data.size) + stor0.length + 196 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor0.length,
                    mem[(32 * _7) + ceil32(return_data.size) + 196 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    if arg7 + block.timestamp < arg7:
        revert with 0, 'SafeMath: addition overflow'
    if arg7 + block.timestamp <= block.timestamp:
        mem[(32 * _7) + ceil32(return_data.size) + 196] = uint256(stor2.field_0)
        idx = (32 * _7) + ceil32(return_data.size) + 196
        s = 0
        while (32 * _7) + ceil32(return_data.size) + stor2.length + 196 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor2.length,
                    mem[(32 * _7) + ceil32(return_data.size) + 196 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32)]
    require ext_code.size(stor25)
    staticcall stor25.0x386c4ae6 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 26
    mem[(32 * _7) + ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not arg6 / 100:
            mem[(32 * _7) + ceil32(return_data.size) + 192] = 26
            mem[(32 * _7) + ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg6 + (0 / stor22) < arg6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(arg5)
            staticcall arg5.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg6 + (0 / stor22):
                mem[(32 * _7) + ceil32(return_data.size) + 324] = uint256(stor13.field_0)
                idx = (32 * _7) + ceil32(return_data.size) + 324
                s = 0
                while (32 * _7) + ceil32(return_data.size) + stor13.length + 324 > idx + 32:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 
                            32,
                            stor13.length,
                            mem[(32 * _7) + ceil32(return_data.size) + 324 len stor13.length + (floor32(stor13.length - 1) + -stor13.length + 32 % 32)]
            mem[(32 * _7) + ceil32(return_data.size) + 292] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _7) + ceil32(return_data.size) + 356] = arg6 + (0 / stor22)
            mem[(32 * _7) + ceil32(return_data.size) + 256] = 100
            mem[(32 * _7) + ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 288 len 4] = unknown_0x23b872dd(?????)
            mem[(32 * _7) + ceil32(return_data.size) + 388] = 32
            mem[(32 * _7) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg5) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _7) + ceil32(return_data.size) + 452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg6 + (0 / stor22)) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 576 len 4] = 0
            call arg5 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg6 + (0 / stor22)) << 480, mem[(32 * _7) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + 562 len 14],
                                    0,
                                    mem[(32 * _7) + ceil32(return_data.size) + 580 len 4]
            else:
                mem[(32 * _7) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[address(arg5)].field_0 += 0 / stor22
        else:
            require arg6 / 100
            if arg6 / 100 * stor18 / arg6 / 100 != stor18:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _7) + ceil32(return_data.size) + 293 len 31]
            mem[(32 * _7) + ceil32(return_data.size) + 192] = 26
            mem[(32 * _7) + ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg6 + (arg6 / 100 * stor18 / stor22) < arg6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(arg5)
            staticcall arg5.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg6 + (arg6 / 100 * stor18 / stor22):
                mem[(32 * _7) + ceil32(return_data.size) + 324] = uint256(stor13.field_0)
                idx = (32 * _7) + ceil32(return_data.size) + 324
                s = 0
                while (32 * _7) + ceil32(return_data.size) + stor13.length + 324 > idx + 32:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 
                            32,
                            stor13.length,
                            mem[(32 * _7) + ceil32(return_data.size) + 324 len stor13.length + (floor32(stor13.length - 1) + -stor13.length + 32 % 32)]
            mem[(32 * _7) + ceil32(return_data.size) + 292] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _7) + ceil32(return_data.size) + 356] = arg6 + (arg6 / 100 * stor18 / stor22)
            mem[(32 * _7) + ceil32(return_data.size) + 256] = 100
            mem[(32 * _7) + ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 288 len 4] = unknown_0x23b872dd(?????)
            mem[(32 * _7) + ceil32(return_data.size) + 388] = 32
            mem[(32 * _7) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg5) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _7) + ceil32(return_data.size) + 452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg6 + (arg6 / 100 * stor18 / stor22)) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 576 len 4] = 0
            call arg5 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg6 + (arg6 / 100 * stor18 / stor22)) << 480, mem[(32 * _7) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + 562 len 14],
                                    0,
                                    mem[(32 * _7) + ceil32(return_data.size) + 580 len 4]
            else:
                mem[(32 * _7) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[address(arg5)].field_0 += arg6 / 100 * stor18 / stor22
        sub_2c51efbb[arg1].field_256 = arg2
        sub_2c51efbb[arg1].field_512 = arg3
        if arg4:
            sub_2c51efbb[arg1].field_768 = arg4
        sub_2c51efbb[arg1].field_1024 = arg5
        sub_2c51efbb[arg1].field_1280 = arg6
        sub_2c51efbb[arg1].field_1536 = arg7 + block.timestamp
        emit 0x5fad2f7e: stor18, address(arg5), arg6, arg1
    else:
        if not arg6 / 100:
            mem[(32 * _7) + ceil32(return_data.size) + 192] = 26
            mem[(32 * _7) + ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg6 + (0 / stor22) < arg6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(arg5)
            staticcall arg5.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg6 + (0 / stor22):
                mem[(32 * _7) + ceil32(return_data.size) + 324] = uint256(stor13.field_0)
                idx = (32 * _7) + ceil32(return_data.size) + 324
                s = 0
                while (32 * _7) + ceil32(return_data.size) + stor13.length + 324 > idx + 32:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 
                            32,
                            stor13.length,
                            mem[(32 * _7) + ceil32(return_data.size) + 324 len stor13.length + (floor32(stor13.length - 1) + -stor13.length + 32 % 32)]
            mem[(32 * _7) + ceil32(return_data.size) + 292] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _7) + ceil32(return_data.size) + 356] = arg6 + (0 / stor22)
            mem[(32 * _7) + ceil32(return_data.size) + 256] = 100
            mem[(32 * _7) + ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 288 len 4] = unknown_0x23b872dd(?????)
            mem[(32 * _7) + ceil32(return_data.size) + 388] = 32
            mem[(32 * _7) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg5) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _7) + ceil32(return_data.size) + 452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg6 + (0 / stor22)) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 576 len 4] = 0
            call arg5 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg6 + (0 / stor22)) << 480, mem[(32 * _7) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + 562 len 14],
                                    0,
                                    mem[(32 * _7) + ceil32(return_data.size) + 580 len 4]
            else:
                mem[(32 * _7) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[address(arg5)].field_0 += 0 / stor22
        else:
            require arg6 / 100
            if arg6 / 100 * stor20 / arg6 / 100 != stor20:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _7) + ceil32(return_data.size) + 293 len 31]
            mem[(32 * _7) + ceil32(return_data.size) + 192] = 26
            mem[(32 * _7) + ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
            if stor22 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor22
            if arg6 + (arg6 / 100 * stor20 / stor22) < arg6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(arg5)
            staticcall arg5.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg6 + (arg6 / 100 * stor20 / stor22):
                mem[(32 * _7) + ceil32(return_data.size) + 324] = uint256(stor13.field_0)
                idx = (32 * _7) + ceil32(return_data.size) + 324
                s = 0
                while (32 * _7) + ceil32(return_data.size) + stor13.length + 324 > idx + 32:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 
                            32,
                            stor13.length,
                            mem[(32 * _7) + ceil32(return_data.size) + 324 len stor13.length + (floor32(stor13.length - 1) + -stor13.length + 32 % 32)]
            mem[(32 * _7) + ceil32(return_data.size) + 292] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _7) + ceil32(return_data.size) + 356] = arg6 + (arg6 / 100 * stor20 / stor22)
            mem[(32 * _7) + ceil32(return_data.size) + 256] = 100
            mem[(32 * _7) + ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 288 len 4] = unknown_0x23b872dd(?????)
            mem[(32 * _7) + ceil32(return_data.size) + 388] = 32
            mem[(32 * _7) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg5) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _7) + ceil32(return_data.size) + 452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg6 + (arg6 / 100 * stor20 / stor22)) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 576 len 4] = 0
            call arg5 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg6 + (arg6 / 100 * stor20 / stor22)) << 480, mem[(32 * _7) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + 562 len 14],
                                    0,
                                    mem[(32 * _7) + ceil32(return_data.size) + 580 len 4]
            else:
                mem[(32 * _7) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            sub_a79dc43b[address(arg5)].field_0 += arg6 / 100 * stor20 / stor22
        sub_2c51efbb[arg1].field_256 = arg2
        sub_2c51efbb[arg1].field_512 = arg3
        if arg4:
            sub_2c51efbb[arg1].field_768 = arg4
        sub_2c51efbb[arg1].field_1024 = arg5
        sub_2c51efbb[arg1].field_1280 = arg6
        sub_2c51efbb[arg1].field_1536 = arg7 + block.timestamp
        emit 0x5fad2f7e: stor20, address(arg5), arg6, arg1
}

function sub_3dbcfc48(?) {
    require calldata.size - 4 >= 64
    if msg.sender == sub_c973b66bAddress:
        require sub_2c51efbb[arg1].field_1792 <= 4
        if not sub_2c51efbb[arg1].field_1792:
            if sub_2c51efbb[arg1].field_1280 < arg2:
                mem[164] = uint256(stor5.field_0)
                idx = 164
                s = 0
                while stor5.length + 164 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor5.length, mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]
            if arg2 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor25)
            staticcall stor25.0x386c4ae6 with:
                    gas gas_remaining wei
                   args sub_2c51efbb[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor19:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
            else:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor21:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        mem[580 len 0] = 0
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = 0, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len 22]
                    sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                    sub_2c51efbb[arg1].field_1792 = 4
                    emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), arg1
        else:
            require sub_2c51efbb[arg1].field_1792 <= 4
            if sub_2c51efbb[arg1].field_1792 != 1:
                mem[164] = uint256(stor16.field_0)
                idx = 164
                s = 0
                while stor16.length + 164 > idx + 32:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor16.length, mem[164 len stor16.length + (floor32(stor16.length - 1) + -stor16.length + 32 % 32)]
            if sub_2c51efbb[arg1].field_1280 < arg2:
                mem[164] = uint256(stor5.field_0)
                idx = 164
                s = 0
                while stor5.length + 164 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor5.length, mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]
            if arg2 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor25)
            staticcall stor25.0x386c4ae6 with:
                    gas gas_remaining wei
                   args sub_2c51efbb[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor19:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) >> 32
                            mem[ceil32(return_data.size) + 745 len 0] = 0
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), arg1
                        else:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) >> 32
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
            else:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                            mem[ceil32(return_data.size) + 745 len 0] = 0
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                        else:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor21:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) >> 32
                            mem[ceil32(return_data.size) + 745 len 0] = 0
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), arg1
                        else:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) >> 32
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
    else:
        if sub_2c51efbb[arg1].field_768 != msg.sender:
            mem[164] = uint256(stor10.field_0)
            idx = 164
            s = 0
            while stor10.length + 164 > idx + 32:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
        require sub_2c51efbb[arg1].field_1792 <= 4
        if not sub_2c51efbb[arg1].field_1792:
            if sub_2c51efbb[arg1].field_1280 < arg2:
                mem[164] = uint256(stor5.field_0)
                idx = 164
                s = 0
                while stor5.length + 164 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor5.length, mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]
            if arg2 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor25)
            staticcall stor25.0x386c4ae6 with:
                    gas gas_remaining wei
                   args sub_2c51efbb[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor19:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
            else:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                        else:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                            if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                            mem[ceil32(return_data.size) + 745 len 0] = 0
                            call sub_2c51efbb[arg1].field_1024 with:
                               funct sub_2c51efbb[arg1].field_512
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 713]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 792 len 22]
                            sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                            sub_2c51efbb[arg1].field_1792 = 4
                            emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor21:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
        else:
            require sub_2c51efbb[arg1].field_1792 <= 4
            if sub_2c51efbb[arg1].field_1792 != 1:
                mem[164] = uint256(stor16.field_0)
                idx = 164
                s = 0
                while stor16.length + 164 > idx + 32:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor16.length, mem[164 len stor16.length + (floor32(stor16.length - 1) + -stor16.length + 32 % 32)]
            if sub_2c51efbb[arg1].field_1280 < arg2:
                mem[164] = uint256(stor5.field_0)
                idx = 164
                s = 0
                while stor5.length + 164 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor5.length, mem[164 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]
            if arg2 > sub_2c51efbb[arg1].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(stor25)
            staticcall stor25.0x386c4ae6 with:
                    gas gas_remaining wei
                   args sub_2c51efbb[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        mem[580 len 0] = 0
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = 0, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len 22]
                    sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                    sub_2c51efbb[arg1].field_1792 = 4
                    emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor19:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor19, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor19 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
            else:
                if not sub_2c51efbb[arg1].field_1280 - arg2 / 100:
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if 0 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += 0 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (0 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require sub_2c51efbb[arg1].field_1280 - arg2 / 100
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / sub_2c51efbb[arg1].field_1280 - arg2 / 100 != stor21:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor22 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor22
                    if sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22 > sub_2c51efbb[arg1].field_1280 - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_2c51efbb[arg1].field_1024:
                        call sub_2c51efbb[arg1].field_256 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_2c51efbb[arg1].field_512 with:
                           value sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22) wei
                             gas 2300 * is_zero(value) wei
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), arg1
                    else:
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_256, sub_2c51efbb[arg1].field_256, Mask(224, 32, arg2) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_256
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if ext_code.size(sub_2c51efbb[arg1].field_1024) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), sub_2c51efbb[arg1].field_512, sub_2c51efbb[arg1].field_512, Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) >> 32
                        call sub_2c51efbb[arg1].field_1024 with:
                           funct sub_2c51efbb[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        sub_a79dc43b[stor28[arg1].field_1024].field_0 += sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22
                        sub_2c51efbb[arg1].field_1792 = 4
                        emit 0x94021c0a: stor21, arg2, sub_2c51efbb[arg1].field_1280 - arg2 - (sub_2c51efbb[arg1].field_1280 - arg2 / 100 * stor21 / stor22), mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
}



}
