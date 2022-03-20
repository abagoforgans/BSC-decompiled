contract main {




// =====================  Runtime code  =====================


const QUORUM = 3


uint8 stor0;
address owner; offset 8
uint256 ticketPrice;
uint256 prizeFund;
uint256 nextTicketPrice;
uint256 stage;
uint256 maxTickets;
uint256 sub_847ae20d;
uint256 sub_3b4f8077;
address burnAddr;
uint256 sub_93e13b04;
address feesAddr;
address sub_4e781b15Address;
array of struct tickets;
mapping of uint8 stor13;

function getTicketsCount() payable {
    return tickets.length
}

function ticketPrice() payable {
    return ticketPrice
}

function nextTicketPrice() payable {
    return nextTicketPrice
}

function sub_3b4f8077(?) payable {
    return sub_3b4f8077
}

function sub_4e781b15(?) payable {
    return sub_4e781b15Address
}

function tickets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tickets.length
    return tickets[arg1].field_0
}

function paused() payable {
    return bool(stor0)
}

function feesAddr() payable {
    return feesAddr
}

function sub_847ae20d(?) payable {
    return sub_847ae20d
}

function owner() payable {
    return owner
}

function sub_93e13b04(?) payable {
    return sub_93e13b04
}

function maxTickets() payable {
    return maxTickets
}

function stage() payable {
    return stage
}

function burnAddr() payable {
    return burnAddr
}

function prizeFund() payable {
    return prizeFund
}

function _fallback() payable {
    revert
}

function calculateWinnersCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_847ae20d:
        return sub_847ae20d
    return 1
}

function sub_76cb6f6a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feesAddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_13ffd9d5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_93e13b04 = arg1
}

function sub_bf0aa33a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b4f8077 = arg1
}

function sub_efdb2ad9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_847ae20d = arg1
}

function sub_bf292e6f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4e781b15Address = arg1
}

function setMaxTickets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTickets = arg1
}

function setAsLotteryRunner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(arg2)
}

function setTicketPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tickets.length:
        nextTicketPrice = arg1
    else:
        ticketPrice = arg1
        nextTicketPrice = 0
}

function calculateFees() payable {
    if not prizeFund:
        return 0
    require prizeFund
    if prizeFund * sub_93e13b04 / prizeFund != sub_93e13b04:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (prizeFund * sub_93e13b04 / 100)
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

function getTickets() payable {
    if not tickets.length:
        mem[(32 * tickets.length) + 128] = 32
        mem[(32 * tickets.length) + 160] = tickets.length
        mem[(32 * tickets.length) + 192 len floor32(tickets.length)] = mem[128 len floor32(tickets.length)]
        return memory
          from (32 * tickets.length) + 128
           len (96 * tickets.length) + 64
    mem[128] = address(tickets.field_0)
    idx = 128
    s = 0
    while (32 * tickets.length) + 96 > idx:
        mem[idx + 32] = tickets[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tickets.length) + 192 len floor32(tickets.length)] = mem[128 len floor32(tickets.length)]
    return Array(len=tickets.length, data=mem[128 len floor32(tickets.length)], mem[(32 * tickets.length) + floor32(tickets.length) + 192 len (32 * tickets.length) - floor32(tickets.length)]), 
}

function recoverERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x57426e45583a3a4c6f74746572793a3a7265636f76657245524332303a3a5452414e534645525f4641494c45,
                    mem[208 len 20]
}

function sub_fa649a2e(?) payable {
    if tickets.length < sub_847ae20d:
        if not prizeFund:
            return 0
        require prizeFund
        if (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / prizeFund != -sub_93e13b04 + -sub_3b4f8077 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100)
    if not prizeFund:
        if sub_847ae20d <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_847ae20d:
            return (0 / sub_847ae20d)
    else:
        if prizeFund:
            if (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / prizeFund != -sub_93e13b04 + -sub_3b4f8077 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_847ae20d <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_847ae20d:
                return ((100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d)
    revert
}

function entry(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x44426e45583a3a4c6f74746572793a3a656e7472793a3a434f4e54524143545f4e4f545f414c4c4f5745,
                    mem[206 len 22]
    if arg1 < ticketPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x77426e45583a3a4c6f74746572793a3a656e7472793a3a414d4f554e545f544f4f5f4c4f,
                    mem[200 len 28]
    if maxTickets - tickets.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x53426e45583a3a4c6f74746572793a3a656e7472793a3a5449434b45545f534f4c445f4f55,
                    mem[201 len 27]
    if ticketPrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ticketPrice
    if arg1 / ticketPrice <= maxTickets - tickets.length:
        idx = 0
        while uint16(idx) < arg1 / ticketPrice:
            tickets.length++
            mem[0] = 12
            tickets[tickets.length].field_0 = msg.sender
            idx = idx + 1
            continue 
        if not arg1 / ticketPrice:
            if prizeFund < prizeFund:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1 / ticketPrice
            if arg1 / ticketPrice * ticketPrice / arg1 / ticketPrice != ticketPrice:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if prizeFund + (arg1 / ticketPrice * ticketPrice) < prizeFund:
                revert with 0, 'SafeMath: addition overflow'
            prizeFund += arg1 / ticketPrice * ticketPrice
        require ticketPrice
        if arg1 % ticketPrice < 0:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 % ticketPrice > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_code.hash(sub_4e781b15Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(sub_4e781b15Address):
            revert with 0, 'Address: call to non-contract'
        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1 - (arg1 % ticketPrice)) >> 32
        mem[544 len 4] = 0
        call sub_4e781b15Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg1 - (arg1 % ticketPrice)) << 480, mem[516 len 4]
    else:
        if not (arg1 / ticketPrice) - maxTickets + tickets.length:
            idx = 0
            while uint16(idx) < maxTickets - tickets.length:
                tickets.length++
                mem[0] = 12
                tickets[tickets.length].field_0 = msg.sender
                idx = idx + 1
                continue 
            if not maxTickets - tickets.length:
                if prizeFund < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require maxTickets - tickets.length
                if (maxTickets * ticketPrice) - (tickets.length * ticketPrice) / maxTickets - tickets.length != ticketPrice:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if prizeFund + (maxTickets * ticketPrice) - (tickets.length * ticketPrice) < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
                prizeFund = prizeFund + (maxTickets * ticketPrice) - (tickets.length * ticketPrice)
            require ticketPrice
            if arg1 % ticketPrice < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 % ticketPrice > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(sub_4e781b15Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_4e781b15Address):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1 - (arg1 % ticketPrice)) >> 32
            mem[544 len 4] = 0
            call sub_4e781b15Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (arg1 % ticketPrice)) << 480, mem[516 len 4]
        else:
            require (arg1 / ticketPrice) - maxTickets + tickets.length
            if (arg1 / ticketPrice * ticketPrice) - (maxTickets * ticketPrice) + (tickets.length * ticketPrice) / (arg1 / ticketPrice) - maxTickets + tickets.length != ticketPrice:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            idx = 0
            while uint16(idx) < maxTickets - tickets.length:
                tickets.length++
                mem[0] = 12
                tickets[tickets.length].field_0 = msg.sender
                idx = idx + 1
                continue 
            if not maxTickets - tickets.length:
                if prizeFund < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require maxTickets - tickets.length
                if (maxTickets * ticketPrice) - (tickets.length * ticketPrice) / maxTickets - tickets.length != ticketPrice:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if prizeFund + (maxTickets * ticketPrice) - (tickets.length * ticketPrice) < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
                prizeFund = prizeFund + (maxTickets * ticketPrice) - (tickets.length * ticketPrice)
            require ticketPrice
            if arg1 % ticketPrice < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (arg1 / ticketPrice * ticketPrice) - (maxTickets * ticketPrice) + (tickets.length * ticketPrice) + (arg1 % ticketPrice) > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(sub_4e781b15Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_4e781b15Address):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1 - (arg1 / ticketPrice * ticketPrice) + (maxTickets * ticketPrice) - (tickets.length * ticketPrice) - (arg1 % ticketPrice)) >> 32
            mem[544 len 4] = 0
            call sub_4e781b15Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (arg1 / ticketPrice * ticketPrice) + (maxTickets * ticketPrice) - (tickets.length * ticketPrice) - (arg1 % ticketPrice)) << 480, mem[516 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[452]:
            revert with 0, 
                        32,
                        42,
                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 531 len 22]
}

function runLottery() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 13
    require stor13[address(msg.sender)]
    if tickets.length < 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73426e45583a3a4c6f74746572793a3a72756e4c6f74746572793a3a4e4f545f454e4f5547485f47414d424c4552,
                    mem[210 len 18]
    if tickets.length < sub_847ae20d:
        if not prizeFund:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not prizeFund:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 1
                mem[64] = 352
                mem[320] = call.data[calldata.size]
                idx = 0
                s = 0
                while idx < 1:
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = s
                    mem[mem[64] + 96] = 0
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    require tickets.length
                    _1267 = mem[288]
                    t = var72002
                    u = var72004
                    v = var72005
                    while 0 < _1267:
                        require 0 < mem[288]
                        if mem[320] != t:
                            t = t
                            u = u
                            v = v
                            continue 
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = v + 1
                        _1373 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        t = sha3(mem[_1373 + 32 len mem[_1373]]) % tickets.length
                        u = sha3(mem[_1373 + 32 len mem[_1373]]) % tickets.length
                        v = v + 1
                        continue 
                    require idx < mem[288]
                    mem[(32 * idx) + 320] = u
                    require idx < mem[288]
                    require u < tickets.length
                    mem[0] = 12
                    require ext_code.size(sub_4e781b15Address)
                    call sub_4e781b15Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args tickets[u].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = tickets.length
                    mem[mem[64] + 32] = u
                    mem[mem[64] + 64] = 0
                    emit Win(tickets.length, u, 0, stage, tickets[u].field_0);
                    idx = idx + 1
                    s = u
                    continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, 0
            else:
                require prizeFund
                if prizeFund * sub_93e13b04 / prizeFund != sub_93e13b04:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 1
                mem[64] = 352
                mem[320] = call.data[calldata.size]
                idx = 0
                s = 0
                while idx < 1:
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = s
                    mem[mem[64] + 96] = 0
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    require tickets.length
                    _1266 = mem[288]
                    t = var74002
                    u = var74004
                    v = var74005
                    while 0 < _1266:
                        require 0 < mem[288]
                        if mem[320] != t:
                            t = t
                            u = u
                            v = v
                            continue 
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = v + 1
                        _1368 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        t = sha3(mem[_1368 + 32 len mem[_1368]]) % tickets.length
                        u = sha3(mem[_1368 + 32 len mem[_1368]]) % tickets.length
                        v = v + 1
                        continue 
                    require idx < mem[288]
                    mem[(32 * idx) + 320] = u
                    require idx < mem[288]
                    require u < tickets.length
                    mem[0] = 12
                    require ext_code.size(sub_4e781b15Address)
                    call sub_4e781b15Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args tickets[u].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = tickets.length
                    mem[mem[64] + 32] = u
                    mem[mem[64] + 64] = 0
                    emit Win(tickets.length, u, 0, stage, tickets[u].field_0);
                    idx = idx + 1
                    s = u
                    continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, prizeFund * sub_93e13b04 / 100
        else:
            require prizeFund
            if (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / prizeFund != -sub_93e13b04 + -sub_3b4f8077 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not prizeFund:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 1
                mem[64] = 352
                mem[320] = call.data[calldata.size]
                idx = 0
                s = 0
                while idx < 1:
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = s
                    mem[mem[64] + 96] = 0
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    require tickets.length
                    _1265 = mem[288]
                    t = var74002
                    u = var74004
                    v = var74005
                    while 0 < _1265:
                        require 0 < mem[288]
                        if mem[320] != t:
                            t = t
                            u = u
                            v = v
                            continue 
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = v + 1
                        _1363 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        t = sha3(mem[_1363 + 32 len mem[_1363]]) % tickets.length
                        u = sha3(mem[_1363 + 32 len mem[_1363]]) % tickets.length
                        v = v + 1
                        continue 
                    require idx < mem[288]
                    mem[(32 * idx) + 320] = u
                    require idx < mem[288]
                    require u < tickets.length
                    mem[0] = 12
                    require ext_code.size(sub_4e781b15Address)
                    call sub_4e781b15Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args tickets[u].field_0, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = tickets.length
                    mem[mem[64] + 32] = u
                    mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    emit Win(tickets.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100, stage, tickets[u].field_0);
                    idx = idx + 1
                    s = u
                    continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, 0
            else:
                require prizeFund
                if prizeFund * sub_93e13b04 / prizeFund != sub_93e13b04:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 1
                mem[64] = 352
                mem[320] = call.data[calldata.size]
                idx = 0
                s = 0
                while idx < 1:
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = s
                    mem[mem[64] + 96] = 0
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    require tickets.length
                    _1264 = mem[288]
                    t = var76002
                    u = var76004
                    v = var76005
                    while 0 < _1264:
                        require 0 < mem[288]
                        if mem[320] != t:
                            t = t
                            u = u
                            v = v
                            continue 
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = v + 1
                        _1358 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        t = sha3(mem[_1358 + 32 len mem[_1358]]) % tickets.length
                        u = sha3(mem[_1358 + 32 len mem[_1358]]) % tickets.length
                        v = v + 1
                        continue 
                    require idx < mem[288]
                    mem[(32 * idx) + 320] = u
                    require idx < mem[288]
                    require u < tickets.length
                    mem[0] = 12
                    require ext_code.size(sub_4e781b15Address)
                    call sub_4e781b15Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args tickets[u].field_0, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = tickets.length
                    mem[mem[64] + 32] = u
                    mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    emit Win(tickets.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100, stage, tickets[u].field_0);
                    idx = idx + 1
                    s = u
                    continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, prizeFund * sub_93e13b04 / 100
    else:
        if not prizeFund:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if sub_847ae20d <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_847ae20d
            if not prizeFund:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                require sub_847ae20d <= test266151307()
                mem[288] = sub_847ae20d
                mem[64] = (32 * sub_847ae20d) + 320
                if not sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1262 = mem[288]
                        t = var71002
                        u = var71004
                        v = var71005
                        while 0 < _1262:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1348 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1348 + 32 len mem[_1348]]) % tickets.length
                            u = sha3(mem[_1348 + 32 len mem[_1348]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(tickets.length, u, 0 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[320 len 32 * sub_847ae20d] = call.data[calldata.size len 32 * sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1263 = mem[288]
                        t = var72002
                        u = var72004
                        v = var72005
                        while 0 < _1263:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1353 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1353 + 32 len mem[_1353]]) % tickets.length
                            u = sha3(mem[_1353 + 32 len mem[_1353]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(tickets.length, u, 0 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, 0
            else:
                require prizeFund
                if prizeFund * sub_93e13b04 / prizeFund != sub_93e13b04:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                require sub_847ae20d <= test266151307()
                mem[288] = sub_847ae20d
                mem[64] = (32 * sub_847ae20d) + 320
                if not sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1260 = mem[288]
                        t = var73002
                        u = var73004
                        v = var73005
                        while 0 < _1260:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1338 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1338 + 32 len mem[_1338]]) % tickets.length
                            u = sha3(mem[_1338 + 32 len mem[_1338]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(tickets.length, u, 0 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[320 len 32 * sub_847ae20d] = call.data[calldata.size len 32 * sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1261 = mem[288]
                        t = var74002
                        u = var74004
                        v = var74005
                        while 0 < _1261:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1343 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1343 + 32 len mem[_1343]]) % tickets.length
                            u = sha3(mem[_1343 + 32 len mem[_1343]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(tickets.length, u, 0 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, prizeFund * sub_93e13b04 / 100
        else:
            require prizeFund
            if (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / prizeFund != -sub_93e13b04 + -sub_3b4f8077 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if sub_847ae20d <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_847ae20d
            if not prizeFund:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                require sub_847ae20d <= test266151307()
                mem[288] = sub_847ae20d
                mem[64] = (32 * sub_847ae20d) + 320
                if not sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1258 = mem[288]
                        t = var73002
                        u = var73004
                        v = var73005
                        while 0 < _1258:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1328 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1328 + 32 len mem[_1328]]) % tickets.length
                            u = sha3(mem[_1328 + 32 len mem[_1328]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(tickets.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[320 len 32 * sub_847ae20d] = call.data[calldata.size len 32 * sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1259 = mem[288]
                        t = var74002
                        u = var74004
                        v = var74005
                        while 0 < _1259:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1333 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1333 + 32 len mem[_1333]]) % tickets.length
                            u = sha3(mem[_1333 + 32 len mem[_1333]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(tickets.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, 0
            else:
                require prizeFund
                if prizeFund * sub_93e13b04 / prizeFund != sub_93e13b04:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                require sub_847ae20d <= test266151307()
                mem[288] = sub_847ae20d
                mem[64] = (32 * sub_847ae20d) + 320
                if not sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1256 = mem[288]
                        t = var75002
                        u = var75004
                        v = var75005
                        while 0 < _1256:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1318 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1318 + 32 len mem[_1318]]) % tickets.length
                            u = sha3(mem[_1318 + 32 len mem[_1318]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(tickets.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[320 len 32 * sub_847ae20d] = call.data[calldata.size len 32 * sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require tickets.length
                        _1257 = mem[288]
                        t = var76002
                        u = var76004
                        v = var76005
                        while 0 < _1257:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1323 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require tickets.length
                            t = sha3(mem[_1323 + 32 len mem[_1323]]) % tickets.length
                            u = sha3(mem[_1323 + 32 len mem[_1323]]) % tickets.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < tickets.length
                        mem[0] = 12
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args tickets[u].field_0, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = tickets.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(tickets.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, tickets[u].field_0);
                        idx = idx + 1
                        s = u
                        continue 
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddr, prizeFund * sub_93e13b04 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4e781b15Address)
    staticcall sub_4e781b15Address.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4e781b15Address)
    call sub_4e781b15Address.0xa9059cbb with:
         gas gas_remaining wei
        args burnAddr, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if nextTicketPrice <= 0:
        tickets.length = 0
        idx = 0
        while tickets.length > idx:
            tickets[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        ticketPrice = nextTicketPrice
        nextTicketPrice = 0
        tickets.length = 0
        s = 0
        while tickets.length > s:
            tickets[s].field_0 = 0
            s = s + 1
            continue 
    prizeFund = 0
    stage++
}



}
