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
uint256 sub_3b4f8077;
address burnAddr;
uint256 sub_93e13b04;
address feesAddr;
address sub_4e781b15Address;
mapping of uint8 stor14;

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

function sub_3b4f8077(?) payable {
    return sub_3b4f8077
}

function sub_4e781b15(?) payable {
    return sub_4e781b15Address
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
    stor14[address(arg1)] = uint8(arg2)
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
    if gamblers.length < sub_847ae20d:
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
    mem[32] = 14
    require stor14[address(msg.sender)]
    require gamblers.length >= 3
    if gamblers.length < sub_847ae20d:
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
                    require gamblers.length
                    _1265 = mem[288]
                    t = var72002
                    u = var72004
                    v = var72005
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
                        _1371 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        t = sha3(mem[_1371 + 32 len mem[_1371]]) % gamblers.length
                        u = sha3(mem[_1371 + 32 len mem[_1371]]) % gamblers.length
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
                    require gamblers.length
                    _1264 = mem[288]
                    t = var74002
                    u = var74004
                    v = var74005
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
                        _1366 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        t = sha3(mem[_1366 + 32 len mem[_1366]]) % gamblers.length
                        u = sha3(mem[_1366 + 32 len mem[_1366]]) % gamblers.length
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
                    require gamblers.length
                    _1263 = mem[288]
                    t = var74002
                    u = var74004
                    v = var74005
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
                        _1361 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        t = sha3(mem[_1361 + 32 len mem[_1361]]) % gamblers.length
                        u = sha3(mem[_1361 + 32 len mem[_1361]]) % gamblers.length
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
                        args address(gamblers[u]), (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = gamblers.length
                    mem[mem[64] + 32] = u
                    mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    emit Win(gamblers.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100, stage, address(gamblers[u]));
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
                    require gamblers.length
                    _1262 = mem[288]
                    t = var76002
                    u = var76004
                    v = var76005
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
                        _1356 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        require gamblers.length
                        t = sha3(mem[_1356 + 32 len mem[_1356]]) % gamblers.length
                        u = sha3(mem[_1356 + 32 len mem[_1356]]) % gamblers.length
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
                        args address(gamblers[u]), (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = gamblers.length
                    mem[mem[64] + 32] = u
                    mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100
                    emit Win(gamblers.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100, stage, address(gamblers[u]));
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
                        require gamblers.length
                        _1260 = mem[288]
                        t = var71002
                        u = var71004
                        v = var71005
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
                            _1346 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1346 + 32 len mem[_1346]]) % gamblers.length
                            u = sha3(mem[_1346 + 32 len mem[_1346]]) % gamblers.length
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
                            args address(gamblers[u]), 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(gamblers.length, u, 0 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
                        _1261 = mem[288]
                        t = var72002
                        u = var72004
                        v = var72005
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
                            _1351 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1351 + 32 len mem[_1351]]) % gamblers.length
                            u = sha3(mem[_1351 + 32 len mem[_1351]]) % gamblers.length
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
                            args address(gamblers[u]), 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(gamblers.length, u, 0 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
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
                            _1336 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1336 + 32 len mem[_1336]]) % gamblers.length
                            u = sha3(mem[_1336 + 32 len mem[_1336]]) % gamblers.length
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
                            args address(gamblers[u]), 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(gamblers.length, u, 0 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
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
                            _1341 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1341 + 32 len mem[_1341]]) % gamblers.length
                            u = sha3(mem[_1341 + 32 len mem[_1341]]) % gamblers.length
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
                            args address(gamblers[u]), 0 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = 0 / sub_847ae20d
                        emit Win(gamblers.length, u, 0 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
                        _1256 = mem[288]
                        t = var73002
                        u = var73004
                        v = var73005
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
                            _1326 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1326 + 32 len mem[_1326]]) % gamblers.length
                            u = sha3(mem[_1326 + 32 len mem[_1326]]) % gamblers.length
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
                            args address(gamblers[u]), (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(gamblers.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
                        _1257 = mem[288]
                        t = var74002
                        u = var74004
                        v = var74005
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
                            _1331 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1331 + 32 len mem[_1331]]) % gamblers.length
                            u = sha3(mem[_1331 + 32 len mem[_1331]]) % gamblers.length
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
                            args address(gamblers[u]), (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(gamblers.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
                        _1254 = mem[288]
                        t = var75002
                        u = var75004
                        v = var75005
                        while 0 < _1254:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1316 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1316 + 32 len mem[_1316]]) % gamblers.length
                            u = sha3(mem[_1316 + 32 len mem[_1316]]) % gamblers.length
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
                            args address(gamblers[u]), (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(gamblers.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, address(gamblers[u]));
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
                        require gamblers.length
                        _1255 = mem[288]
                        t = var76002
                        u = var76004
                        v = var76005
                        while 0 < _1255:
                            require 0 < mem[288]
                            if mem[320] != t:
                                t = t
                                u = u
                                v = v
                                continue 
                            mem[mem[64] + 32] = block.hash(block.number - 1)
                            mem[mem[64] + 64] = s
                            mem[mem[64] + 96] = v + 1
                            _1321 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            require gamblers.length
                            t = sha3(mem[_1321 + 32 len mem[_1321]]) % gamblers.length
                            u = sha3(mem[_1321 + 32 len mem[_1321]]) % gamblers.length
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
                            args address(gamblers[u]), (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = gamblers.length
                        mem[mem[64] + 32] = u
                        mem[mem[64] + 64] = (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d
                        emit Win(gamblers.length, u, (100 * prizeFund) - (sub_93e13b04 * prizeFund) - (sub_3b4f8077 * prizeFund) / 100 / sub_847ae20d, stage, address(gamblers[u]));
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
        prizeFund = 0
        gamblers.length = 0
        idx = 0
        while gamblers.length > idx:
            uint256(gamblers[idx]) = 0
            idx = idx + 1
            continue 
    else:
        ticketPrice = nextTicketPrice
        nextTicketPrice = 0
        prizeFund = 0
        gamblers.length = 0
        s = 0
        while gamblers.length > s:
            uint256(gamblers[s]) = 0
            s = s + 1
            continue 
    stage++
}



}
