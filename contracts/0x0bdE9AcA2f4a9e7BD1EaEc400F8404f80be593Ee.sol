contract main {




// =====================  Runtime code  =====================


const QUORUM = 3


uint8 stor0;
address owner; offset 8
array of address gamblers;
uint256 ticketPrice;
uint256 prizeFund;
uint256 nextTicketPrice;
uint256 stage;
uint256 maxTickets;
uint256 sub_847ae20d;
address feesToAddress;
address sub_4e781b15Address;
mapping of uint8 stor11;

function getTicketsCount() payable {
    return gamblers.length
}

function ticketPrice() payable {
    return ticketPrice
}

function nextTicketPrice() payable {
    return nextTicketPrice
}

function gamblers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < gamblers.length
    return address(gamblers[arg1])
}

function sub_4e781b15(?) payable {
    return sub_4e781b15Address
}

function paused() payable {
    return bool(stor0)
}

function sub_847ae20d(?) payable {
    return sub_847ae20d
}

function owner() payable {
    return owner
}

function maxTickets() payable {
    return maxTickets
}

function stage() payable {
    return stage
}

function prizeFund() payable {
    return prizeFund
}

function feesTo() payable {
    return feesToAddress
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

function setFeesTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feesToAddress = arg1
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
    stor11[address(arg1)] = uint8(arg2)
}

function calculateWinnersCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < sub_847ae20d:
        return 1
    if sub_847ae20d <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_847ae20d
    return (arg1 / sub_847ae20d)
}

function setTicketPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if gamblers.length:
        nextTicketPrice = arg1
    else:
        ticketPrice = arg1
        nextTicketPrice = 0
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

function sub_fa649a2e(?) payable {
    if gamblers.length < sub_847ae20d:
        if not prizeFund:
            return 0
        require prizeFund
        if 19 * prizeFund / prizeFund != 19:
            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (19 * prizeFund / 20)
    if sub_847ae20d <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_847ae20d
    if gamblers.length / sub_847ae20d <= 0:
        revert with 0, 'SafeMath: division by zero'
    require gamblers.length / sub_847ae20d
    if not prizeFund / gamblers.length / sub_847ae20d:
        return 0
    require prizeFund / gamblers.length / sub_847ae20d
    if 19 * prizeFund / gamblers.length / sub_847ae20d / prizeFund / gamblers.length / sub_847ae20d != 19:
        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (19 * prizeFund / gamblers.length / sub_847ae20d / 20)
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
    if maxTickets - gamblers.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426e45583a3a4c6f74746572793a3a656e7472793a3a5449434b45545f534f4c445f4f55,
                    mem[201 len 27]
    if ticketPrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ticketPrice
    if arg1 / ticketPrice <= maxTickets - gamblers.length:
        idx = 0
        while uint16(idx) < arg1 / ticketPrice:
            gamblers.length++
            mem[0] = 1
            address(gamblers[gamblers.length]) = msg.sender
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
        if not (arg1 / ticketPrice) - maxTickets + gamblers.length:
            idx = 0
            while uint16(idx) < maxTickets - gamblers.length:
                gamblers.length++
                mem[0] = 1
                address(gamblers[gamblers.length]) = msg.sender
                idx = idx + 1
                continue 
            if not maxTickets - gamblers.length:
                if prizeFund < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require maxTickets - gamblers.length
                if (maxTickets * ticketPrice) - (gamblers.length * ticketPrice) / maxTickets - gamblers.length != ticketPrice:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if prizeFund + (maxTickets * ticketPrice) - (gamblers.length * ticketPrice) < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
                prizeFund = prizeFund + (maxTickets * ticketPrice) - (gamblers.length * ticketPrice)
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
            require (arg1 / ticketPrice) - maxTickets + gamblers.length
            if (arg1 / ticketPrice * ticketPrice) - (maxTickets * ticketPrice) + (gamblers.length * ticketPrice) / (arg1 / ticketPrice) - maxTickets + gamblers.length != ticketPrice:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            idx = 0
            while uint16(idx) < maxTickets - gamblers.length:
                gamblers.length++
                mem[0] = 1
                address(gamblers[gamblers.length]) = msg.sender
                idx = idx + 1
                continue 
            if not maxTickets - gamblers.length:
                if prizeFund < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require maxTickets - gamblers.length
                if (maxTickets * ticketPrice) - (gamblers.length * ticketPrice) / maxTickets - gamblers.length != ticketPrice:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if prizeFund + (maxTickets * ticketPrice) - (gamblers.length * ticketPrice) < prizeFund:
                    revert with 0, 'SafeMath: addition overflow'
                prizeFund = prizeFund + (maxTickets * ticketPrice) - (gamblers.length * ticketPrice)
            require ticketPrice
            if arg1 % ticketPrice < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (arg1 / ticketPrice * ticketPrice) - (maxTickets * ticketPrice) + (gamblers.length * ticketPrice) + (arg1 % ticketPrice) > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(sub_4e781b15Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_4e781b15Address):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1 - (arg1 / ticketPrice * ticketPrice) + (maxTickets * ticketPrice) - (gamblers.length * ticketPrice) - (arg1 % ticketPrice)) >> 32
            mem[544 len 4] = 0
            call sub_4e781b15Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (arg1 / ticketPrice * ticketPrice) + (maxTickets * ticketPrice) - (gamblers.length * ticketPrice) - (arg1 % ticketPrice)) << 480, mem[516 len 4]
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
    mem[32] = 11
    require stor11[address(msg.sender)]
    require gamblers.length >= 3
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if gamblers.length < sub_847ae20d:
        if not prizeFund:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 1
            mem[64] = 288
            mem[256] = call.data[calldata.size]
            idx = 0
            s = 0
            while idx < 1:
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = s
                mem[mem[64] + 96] = 0
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                require gamblers.length
                _1009 = mem[224]
                t = var60002
                u = var60004
                v = var60005
                while 0 < _1009:
                    require 0 < mem[224]
                    if mem[256] != t:
                        t = t
                        u = u
                        v = v
                        continue 
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = s
                    mem[mem[64] + 96] = v + 1
                    _1097 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    require gamblers.length
                    t = sha3(mem[_1097 + 32 len mem[_1097]]) % gamblers.length
                    u = sha3(mem[_1097 + 32 len mem[_1097]]) % gamblers.length
                    v = v + 1
                    continue 
                require idx < mem[224]
                mem[(32 * idx) + 256] = u
                require idx < mem[224]
                require u < gamblers.length
                mem[0] = 1
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(gamblers[u]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = gamblers.length
                mem[mem[64] + 32] = u
                mem[mem[64] + 64] = 0
                emit Win(gamblers.length, u, 0, stage, address(gamblers[u]));
                idx = idx + 1
                s = u
                continue 
        else:
            require prizeFund
            if 19 * prizeFund / prizeFund != 19:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 1
            mem[64] = 288
            mem[256] = call.data[calldata.size]
            idx = 0
            s = 0
            while idx < 1:
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = s
                mem[mem[64] + 96] = 0
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                require gamblers.length
                _1008 = mem[224]
                t = var62002
                u = var62004
                v = var62005
                while 0 < _1008:
                    require 0 < mem[224]
                    if mem[256] != t:
                        t = t
                        u = u
                        v = v
                        continue 
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = s
                    mem[mem[64] + 96] = v + 1
                    _1092 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    require gamblers.length
                    t = sha3(mem[_1092 + 32 len mem[_1092]]) % gamblers.length
                    u = sha3(mem[_1092 + 32 len mem[_1092]]) % gamblers.length
                    v = v + 1
                    continue 
                require idx < mem[224]
                mem[(32 * idx) + 256] = u
                require idx < mem[224]
                require u < gamblers.length
                mem[0] = 1
                require ext_code.size(sub_4e781b15Address)
                call sub_4e781b15Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(gamblers[u]), 19 * prizeFund / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = gamblers.length
                mem[mem[64] + 32] = u
                mem[mem[64] + 64] = 19 * prizeFund / 20
                emit Win(gamblers.length, u, 19 * prizeFund / 20, stage, address(gamblers[u]));
                idx = idx + 1
                s = u
                continue 
    else:
        if sub_847ae20d <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_847ae20d
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if gamblers.length < sub_847ae20d:
            if not prizeFund:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                require gamblers.length / sub_847ae20d <= test266151307()
                mem[288] = gamblers.length / sub_847ae20d
                mem[64] = (32 * gamblers.length / sub_847ae20d) + 320
                if not gamblers.length / sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1006 = mem[288]
                        t = var65002
                        u = var65004
                        v = var65005
                        while 0 < _1006:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1082 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1082 + 32 len mem[_1082]]) % gamblers.length
                            u = sha3(mem[_1082 + 32 len mem[_1082]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0
                        emit Win(gamblers.length, u, 0, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[320 len 32 * gamblers.length / sub_847ae20d] = call.data[calldata.size len 32 * gamblers.length / sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1007 = mem[288]
                        t = var66002
                        u = var66004
                        v = var66005
                        while 0 < _1007:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1087 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1087 + 32 len mem[_1087]]) % gamblers.length
                            u = sha3(mem[_1087 + 32 len mem[_1087]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0
                        emit Win(gamblers.length, u, 0, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
            else:
                require prizeFund
                if 19 * prizeFund / prizeFund != 19:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                require gamblers.length / sub_847ae20d <= test266151307()
                mem[288] = gamblers.length / sub_847ae20d
                mem[64] = (32 * gamblers.length / sub_847ae20d) + 320
                if not gamblers.length / sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1004 = mem[288]
                        t = var67002
                        u = var67004
                        v = var67005
                        while 0 < _1004:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1072 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1072 + 32 len mem[_1072]]) % gamblers.length
                            u = sha3(mem[_1072 + 32 len mem[_1072]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 19 * prizeFund / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 19 * prizeFund / 20
                        emit Win(gamblers.length, u, 19 * prizeFund / 20, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[320 len 32 * gamblers.length / sub_847ae20d] = call.data[calldata.size len 32 * gamblers.length / sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1005 = mem[288]
                        t = var68002
                        u = var68004
                        v = var68005
                        while 0 < _1005:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1077 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1077 + 32 len mem[_1077]]) % gamblers.length
                            u = sha3(mem[_1077 + 32 len mem[_1077]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[288]
                        mem[(32 * idx) + 320] = u
                        require idx < mem[288]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 19 * prizeFund / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 19 * prizeFund / 20
                        emit Win(gamblers.length, u, 19 * prizeFund / 20, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
        else:
            if sub_847ae20d <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_847ae20d
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if gamblers.length / sub_847ae20d <= 0:
                revert with 0, 'SafeMath: division by zero'
            require gamblers.length / sub_847ae20d
            if not prizeFund / gamblers.length / sub_847ae20d:
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                require gamblers.length / sub_847ae20d <= test266151307()
                mem[352] = gamblers.length / sub_847ae20d
                mem[64] = (32 * gamblers.length / sub_847ae20d) + 384
                if not gamblers.length / sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1002 = mem[352]
                        t = var71002
                        u = var71004
                        v = var71005
                        while 0 < _1002:
                            require 0 < mem[352]
                            if mem[384] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1062 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1062 + 32 len mem[_1062]]) % gamblers.length
                            u = sha3(mem[_1062 + 32 len mem[_1062]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[352]
                        mem[(32 * idx) + 384] = u
                        require idx < mem[352]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0
                        emit Win(gamblers.length, u, 0, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[384 len 32 * gamblers.length / sub_847ae20d] = call.data[calldata.size len 32 * gamblers.length / sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1003 = mem[352]
                        t = var72002
                        u = var72004
                        v = var72005
                        while 0 < _1003:
                            require 0 < mem[352]
                            if mem[384] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1067 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1067 + 32 len mem[_1067]]) % gamblers.length
                            u = sha3(mem[_1067 + 32 len mem[_1067]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[352]
                        mem[(32 * idx) + 384] = u
                        require idx < mem[352]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0
                        emit Win(gamblers.length, u, 0, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
            else:
                require prizeFund / gamblers.length / sub_847ae20d
                if 19 * prizeFund / gamblers.length / sub_847ae20d / prizeFund / gamblers.length / sub_847ae20d != 19:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                require gamblers.length / sub_847ae20d <= test266151307()
                mem[352] = gamblers.length / sub_847ae20d
                mem[64] = (32 * gamblers.length / sub_847ae20d) + 384
                if not gamblers.length / sub_847ae20d:
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1000 = mem[352]
                        t = var73002
                        u = var73004
                        v = var73005
                        while 0 < _1000:
                            require 0 < mem[352]
                            if mem[384] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1052 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1052 + 32 len mem[_1052]]) % gamblers.length
                            u = sha3(mem[_1052 + 32 len mem[_1052]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[352]
                        mem[(32 * idx) + 384] = u
                        require idx < mem[352]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 19 * prizeFund / gamblers.length / sub_847ae20d / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 19 * prizeFund / gamblers.length / sub_847ae20d / 20
                        emit Win(gamblers.length, u, 19 * prizeFund / gamblers.length / sub_847ae20d / 20, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
                else:
                    mem[384 len 32 * gamblers.length / sub_847ae20d] = call.data[calldata.size len 32 * gamblers.length / sub_847ae20d]
                    idx = 0
                    s = 0
                    while idx < gamblers.length / sub_847ae20d:
                        mem[mem[64] + 32] = block.hash(block.number - 1)
                        mem[mem[64] + 64] = s
                        mem[mem[64] + 96] = 0
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        _1001 = mem[352]
                        t = var74002
                        u = var74004
                        v = var74005
                        while 0 < _1001:
                            require 0 < mem[352]
                            if mem[384] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1057 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1057 + 32 len mem[_1057]]) % gamblers.length
                            u = sha3(mem[_1057 + 32 len mem[_1057]]) % gamblers.length
                            v = v + 1
                            continue 
                        require idx < mem[352]
                        mem[(32 * idx) + 384] = u
                        require idx < mem[352]
                        require u < gamblers.length
                        mem[0] = 1
                        require ext_code.size(sub_4e781b15Address)
                        call sub_4e781b15Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(gamblers[u]), 19 * prizeFund / gamblers.length / sub_847ae20d / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 19 * prizeFund / gamblers.length / sub_847ae20d / 20
                        emit Win(gamblers.length, u, 19 * prizeFund / gamblers.length / sub_847ae20d / 20, stage, address(gamblers[u]));
                        idx = idx + 1
                        s = u
                        continue 
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
        args feesToAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if nextTicketPrice > 0:
        ticketPrice = nextTicketPrice
        nextTicketPrice = 0
    prizeFund = 0
    gamblers.length = 0
    idx = 0
    while gamblers.length > idx:
        uint256(gamblers[idx]) = 0
        idx = idx + 1
        continue 
    stage++
}



}
