contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of struct stor2;
uint256 lottery_start;
uint256 lottery_ticket_price;
uint256 lottery_duration;
uint8 stor6;
uint8 stor6; offset 8
address stor6;
uint256 stor6; offset 16
uint256 stor6; offset 8
uint256 stor7;
uint256 stor8;

function lottery_loop() payable {
    return bool(uint8(stor6.field_8))
}

function owner() payable {
    return owner
}

function lottery_duration() payable {
    return lottery_duration
}

function lottery_ticket_price() payable {
    return lottery_ticket_price
}

function lottery_active() payable {
    return bool(uint8(stor6.field_0))
}

function get_count() payable {
    return stor2.length
}

function token() payable {
    return tokenAddress
}

function lottery_start() payable {
    return lottery_start
}

function _fallback() payable {
    revert
}

function get_last() payable {
    return address(stor6.field_0), stor7, stor8
}

function close() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function set_loop(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_0):
        revert with 0, '!active'
    lottery_start = block.timestamp
    uint8(stor6.field_0) = 1
    emit LotteryStarted()
}

function set_lottery_ticket_price(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_0):
        revert with 0, '!active'
    lottery_ticket_price = arg1
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

function get_prize_pool() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (50 * ext_call.return_data[0] / 100)
}

function get_players() payable {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function salvage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == tokenAddress:
        revert with 0, '!token'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
}

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor6.field_0):
        revert with 0, '!active'
    if arg1 <= 0:
        revert with 0, '0 < amount <= 5'
    if arg1 > 5:
        revert with 0, '0 < amount <= 5'
    if not lottery_ticket_price:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, '!low_balance'
    else:
        require lottery_ticket_price
        if lottery_ticket_price * arg1 / lottery_ticket_price != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < lottery_ticket_price * arg1:
            revert with 0, '!low_balance'
    if not lottery_ticket_price:
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
        mem[416 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args 0, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        require lottery_ticket_price
        if lottery_ticket_price * arg1 / lottery_ticket_price != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, lottery_ticket_price * arg1) >> 32
        mem[416 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, lottery_ticket_price * arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), lottery_ticket_price * arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    idx = 1
    while idx <= arg1:
        stor2.length++
        mem[0] = 2
        stor2[stor2.length].field_0 = msg.sender
        idx = idx + 1
        continue 
}

function pick_winner() payable {
    if lottery_start + lottery_duration < lottery_start:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < lottery_start + lottery_duration:
        revert with 0, '!duration'
    if stor2.length <= 0:
        revert with 0, '!players'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require stor2.length
        mem[320] = address(stor2.field_0)
        idx = 320
        s = 0
        while (32 * stor2.length) + 320 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor2.length
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length < stor2.length
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * stor2.length) + 484 len 64] = unknown_0xa9059cbb(?????), stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0, stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0, 0
        call tokenAddress with:
           funct stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0
             gas gas_remaining wei
            args Mask(480, -256, stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0, 0) << 256, mem[(32 * stor2.length) + 548 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * stor2.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * stor2.length) + 516]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * stor2.length) + ceil32(return_data.size) + 595 len 22]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * stor2.length) + ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0 len 28]
        mem[(32 * stor2.length) + ceil32(return_data.size) + 741 len 4] = 0
        call tokenAddress.0xdead with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * stor2.length) + ceil32(return_data.size) + 713 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * stor2.length) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * stor2.length) + ceil32(return_data.size) + 681]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * stor2.length) + (2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        emit LotteryWinner(address rg1, uint256 rg2):
                           0,
                           mem[(32 * stor2.length) + (2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                           stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0,
        emit LotteryBurned(uint256 rg1):
                           ext_call.return_data[0],
                           mem[(32 * stor2.length) + (2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length < stor2.length
        Mask(240, 0, stor6.field_16) = stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0
        stor7 = 0
        stor8 = ext_call.return_data[0]
    else:
        require ext_call.return_data[0]
        if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 50 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require stor2.length
        mem[320] = address(stor2.field_0)
        idx = 320
        s = 0
        while (32 * stor2.length) + 320 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor2.length
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length < stor2.length
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * stor2.length) + 484 len 64] = unknown_0xa9059cbb(?????), stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0, stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0, Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32
        call tokenAddress with:
           funct stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0
             gas gas_remaining wei
            args Mask(224, 32, 50 * ext_call.return_data[0] / 100) << 224, mem[(32 * stor2.length) + 548 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * stor2.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * stor2.length) + 516]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * stor2.length) + ceil32(return_data.size) + 595 len 22]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * stor2.length) + ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100)) >> 32
        mem[(32 * stor2.length) + ceil32(return_data.size) + 713 len 0] = 0
        call tokenAddress.0xdead with:
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100)) << 224, mem[(32 * stor2.length) + ceil32(return_data.size) + 713 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * stor2.length) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * stor2.length) + ceil32(return_data.size) + 681]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * stor2.length) + (2 * ceil32(return_data.size)) + 760 len 22]
        emit LotteryWinner((50 * ext_call.return_data[0] / 100), stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0);
        emit LotteryBurned((ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100)));
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length < stor2.length
        Mask(240, 0, stor6.field_16) = stor2[sha3(block.difficulty, block.timestamp, mem[320 len 32 * stor2.length]) % stor2.length].field_0
        stor7 = 50 * ext_call.return_data[0] / 100
        stor8 = ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100)
    stor2.length = 0
    idx = 0
    while stor2.length > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not uint8(stor6.field_8):
        uint8(stor6.field_0) = 0
    else:
        if not uint8(stor6.field_0):
            uint8(stor6.field_0) = 0
        else:
            lottery_start = block.timestamp
            uint8(stor6.field_0) = 1
            emit LotteryStarted()
}



}
