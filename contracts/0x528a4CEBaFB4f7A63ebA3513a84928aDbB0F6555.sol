contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of struct players;
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
    return players.length
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return players[arg1].field_0
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
    if not players.length:
        mem[(32 * players.length) + 128] = 32
        mem[(32 * players.length) + 160] = players.length
        mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
        return memory
          from (32 * players.length) + 128
           len (96 * players.length) + 64
    mem[128] = address(players.field_0)
    idx = 128
    s = 0
    while (32 * players.length) + 96 > idx:
        mem[idx + 32] = players[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
    return Array(len=players.length, data=mem[128 len floor32(players.length)], mem[(32 * players.length) + floor32(players.length) + 192 len (32 * players.length) - floor32(players.length)]), 
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
        players.length++
        mem[0] = 2
        players[players.length].field_0 = msg.sender
        idx = idx + 1
        continue 
}

function pick_winner() payable {
    if lottery_start + lottery_duration < lottery_start:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < lottery_start + lottery_duration:
        revert with 0, '!duration'
    if players.length <= 0:
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
        require players.length
        mem[320] = address(players.field_0)
        idx = 320
        s = 0
        while (32 * players.length) + 320 > idx + 32:
            mem[idx + 32] = players[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require players.length
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length < players.length
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * players.length) + 484 len 64] = unknown_0xa9059cbb(?????), players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0, players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0, 0
        call tokenAddress with:
           funct players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0
             gas gas_remaining wei
            args Mask(480, -256, players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0, 0) << 256, mem[(32 * players.length) + 548 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * players.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * players.length) + 516]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * players.length) + ceil32(return_data.size) + 595 len 22]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit LotteryWinner(0, players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0);
        emit LotteryBurned(ext_call.return_data[0]);
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length < players.length
        Mask(240, 0, stor6.field_16) = players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0
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
        require players.length
        mem[320] = address(players.field_0)
        idx = 320
        s = 0
        while (32 * players.length) + 320 > idx + 32:
            mem[idx + 32] = players[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require players.length
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length < players.length
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * players.length) + 484 len 64] = unknown_0xa9059cbb(?????), players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0, players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0, Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32
        call tokenAddress with:
           funct players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0
             gas gas_remaining wei
            args Mask(224, 32, 50 * ext_call.return_data[0] / 100) << 224, mem[(32 * players.length) + 548 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(32 * players.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * players.length) + 516]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * players.length) + ceil32(return_data.size) + 595 len 22]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit LotteryWinner((50 * ext_call.return_data[0] / 100), players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0);
        emit LotteryBurned((ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100)));
        require sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length < players.length
        Mask(240, 0, stor6.field_16) = players[sha3(block.difficulty, block.timestamp, mem[320 len 32 * players.length]) % players.length].field_0
        stor7 = 50 * ext_call.return_data[0] / 100
        stor8 = ext_call.return_data[0] - (50 * ext_call.return_data[0] / 100)
    players.length = 0
    idx = 0
    while players.length > idx:
        players[idx].field_0 = 0
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
