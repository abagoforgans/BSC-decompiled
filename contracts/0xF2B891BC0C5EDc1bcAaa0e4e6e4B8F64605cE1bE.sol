contract main {




// =====================  Runtime code  =====================


#
#  - close(uint256 arg1)
#  - voteNo(uint256 arg1)
#  - voteYes(uint256 arg1)
#  - history(uint256 arg1)
#
address owner;
address stor1;
uint256 sub_d1933fe4;
uint32 quorum;
array of struct stor4;

function quorum() {
    return quorum
}

function historyCount() {
    return stor4.length
}

function owner() {
    return owner
}

function sub_d1933fe4(?) {
    return sub_d1933fe4
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4793918f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d1933fe4 = arg1
}

function sub_00545821(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    quorum = uint32(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0e44c762(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg3.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 102] = msg.sender
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You need at least 1 NFT for actions.'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Not sufficient funds'
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 98] = address(arg1)
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 130] = arg2
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 162] = 96
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 194] = ceil32(ceil32(arg3.length)) + 97
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 226] = 96
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 258] = 0
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 290] = 0
    if block.timestamp > -sub_d1933fe4 - 1:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 322] = block.timestamp + sub_d1933fe4
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 354] = 0
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 386] = 0
    stor4.length++
    stor4[stor4.length].field_0 = address(arg1)
    stor4[stor4.length].field_256 = arg2
    if stor4[stor4.length].field_512:
        if stor4[stor4.length].field_512 == stor4[stor4.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((8 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor4[stor4.length].field_512 = 0
            idx = 0
            while stor4[stor4.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor4.length].field_512 == stor4[stor4.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((8 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor4[stor4.length].field_512 = 0
            idx = 0
            while stor4[stor4.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    if stor4[stor4.length].field_768:
        if stor4[stor4.length].field_768 == stor4[stor4.length].field_769 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor[sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor4[stor4.length].field_768 = 0
            idx = 0
            while stor4[stor4.length].field_769 + 31 / 32 > idx:
                stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor4.length].field_768 == stor4[stor4.length].field_769 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor[sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor4[stor4.length].field_768 = 0
            idx = 0
            while stor4[stor4.length].field_769 + 31 / 32 > idx:
                stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    stor4[stor4.length].field_1024 = arg3.length
    if not arg3.length:
        idx = 0
        while stor4[stor4.length].field_1024 > idx:
            stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            stor[s + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 4)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor4[stor4.length].field_1024 > idx:
            stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_1280 = 0
    stor4[stor4.length].field_1536 = 0
    stor4[stor4.length].field_1312 = 0
    stor4[stor4.length].field_1536 = 0
    stor4[stor4.length].field_1536 = block.timestamp + sub_d1933fe4
    stor4[stor4.length].field_1792 = 0
    stor4[stor4.length].field_1800 = 0
}

function didVote(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < stor4.length
    if stor4[arg2].field_512:
        if stor4[arg2].field_512 == stor4[arg2].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg2].field_512:
            if stor4[arg2].field_512 == stor4[arg2].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_513:
                if 31 < stor4[arg2].field_513:
                    idx = 448
                    s = 0
                    while stor4[arg2].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg2].field_512 == stor4[arg2].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_513:
                if 31 < stor4[arg2].field_513:
                    idx = 448
                    s = 0
                    while stor4[arg2].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg2].field_768:
            if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_768:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            idx = 0
            while idx < stor4[arg2].field_1024:
                if idx >= stor4[arg2].field_1024:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 524 len 20] == arg1:
                    return 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_768:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            idx = 0
            while idx < stor4[arg2].field_1024:
                if idx >= stor4[arg2].field_1024:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 524 len 20] == arg1:
                    return 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if stor4[arg2].field_512 == stor4[arg2].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg2].field_512:
            if stor4[arg2].field_512 == stor4[arg2].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_513:
                if 31 < stor4[arg2].field_513:
                    idx = 448
                    s = 0
                    while stor4[arg2].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg2].field_512 == stor4[arg2].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_513:
                if 31 < stor4[arg2].field_513:
                    idx = 448
                    s = 0
                    while stor4[arg2].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg2].field_768:
            if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_768:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            idx = 0
            while idx < stor4[arg2].field_1024:
                if idx >= stor4[arg2].field_1024:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 524 len 20] == arg1:
                    return 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                revert with 'NH{q', 34
            if stor4[arg2].field_768:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor4[arg2].field_768 == stor4[arg2].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg2].field_769:
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if 31 < stor4[arg2].field_769:
                        idx = ceil32(stor4[arg2].field_513) + 480
                        s = 0
                        while ceil32(stor4[arg2].field_513) + stor4[arg2].field_769 + 448 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if stor4[arg2].field_1024:
                        mem[ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512] = stor[sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_0
                        idx = ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 512
                        s = 0
                        while ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + (32 * stor4[arg2].field_1024) + 480 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'stor4', 4) + 4)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            idx = 0
            while idx < stor4[arg2].field_1024:
                if idx >= stor4[arg2].field_1024:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor4[arg2].field_513) + ceil32(stor4[arg2].field_769) + 524 len 20] == arg1:
                    return 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    return 0
}

function canClose(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor4.length
    if stor4[arg1].field_512:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_512:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_513:
                if stor4[arg1].field_768:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                else:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
            else:
                if 31 >= stor4[arg1].field_513:
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                else:
                    idx = 448
                    s = 0
                    while stor4[arg1].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    if stor4[arg1].field_1792:
                        return not bool(stor4[arg1].field_1792)
                    if stor4[arg1].field_1280 >= quorum:
                        return stor4[arg1].field_1280 >= quorum
                    if stor4[arg1].field_1312 >= quorum:
                        return stor4[arg1].field_1312 >= quorum
        else:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_513:
                if stor4[arg1].field_768:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                else:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
            else:
                if 31 >= stor4[arg1].field_513:
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                else:
                    idx = 448
                    s = 0
                    while stor4[arg1].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    if stor4[arg1].field_1792:
                        return not bool(stor4[arg1].field_1792)
                    if stor4[arg1].field_1280 >= quorum:
                        return stor4[arg1].field_1280 >= quorum
                    if stor4[arg1].field_1312 >= quorum:
                        return stor4[arg1].field_1312 >= quorum
    else:
        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_512:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_513:
                if stor4[arg1].field_768:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                else:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
            else:
                if 31 >= stor4[arg1].field_513:
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                else:
                    idx = 448
                    s = 0
                    while stor4[arg1].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    if stor4[arg1].field_1792:
                        return not bool(stor4[arg1].field_1792)
                    if stor4[arg1].field_1280 >= quorum:
                        return stor4[arg1].field_1280 >= quorum
                    if stor4[arg1].field_1312 >= quorum:
                        return stor4[arg1].field_1312 >= quorum
        else:
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_513:
                if stor4[arg1].field_768:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                else:
                    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_769:
                            if not stor4[arg1].field_1024:
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                s = 0
                                while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
                        else:
                            if 31 >= stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                idx = ceil32(stor4[arg1].field_513) + 480
                                s = 0
                                while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if stor4[arg1].field_1024:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if stor4[arg1].field_1792:
                                    return not bool(stor4[arg1].field_1792)
                                if stor4[arg1].field_1280 >= quorum:
                                    return stor4[arg1].field_1280 >= quorum
                                if stor4[arg1].field_1312 >= quorum:
                                    return stor4[arg1].field_1312 >= quorum
            else:
                if 31 >= stor4[arg1].field_513:
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_769:
                                if not stor4[arg1].field_1024:
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                            else:
                                if 31 >= stor4[arg1].field_769:
                                    if not stor4[arg1].field_1024:
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                    else:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if stor4[arg1].field_1792:
                                            return not bool(stor4[arg1].field_1792)
                                        if stor4[arg1].field_1280 >= quorum:
                                            return stor4[arg1].field_1280 >= quorum
                                        if stor4[arg1].field_1312 >= quorum:
                                            return stor4[arg1].field_1312 >= quorum
                                else:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor4[arg1].field_1024:
                                        idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                                        s = 0
                                        while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    if stor4[arg1].field_1792:
                                        return not bool(stor4[arg1].field_1792)
                                    if stor4[arg1].field_1280 >= quorum:
                                        return stor4[arg1].field_1280 >= quorum
                                    if stor4[arg1].field_1312 >= quorum:
                                        return stor4[arg1].field_1312 >= quorum
                else:
                    idx = 448
                    s = 0
                    while stor4[arg1].field_513 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_768:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_769:
                                if 31 < stor4[arg1].field_769:
                                    idx = ceil32(stor4[arg1].field_513) + 480
                                    s = 0
                                    while ceil32(stor4[arg1].field_513) + stor4[arg1].field_769 + 448 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if stor4[arg1].field_1024:
                            idx = ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + 512
                            s = 0
                            while ceil32(stor4[arg1].field_513) + ceil32(stor4[arg1].field_769) + (32 * stor4[arg1].field_1024) + 480 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 4)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    if stor4[arg1].field_1792:
                        return not bool(stor4[arg1].field_1792)
                    if stor4[arg1].field_1280 >= quorum:
                        return stor4[arg1].field_1280 >= quorum
                    if stor4[arg1].field_1312 >= quorum:
                        return stor4[arg1].field_1312 >= quorum
    ('lt', ('field', 1312, ('stor', ('array', ('mul', 8, ('param', 'arg1')), ('name', 'stor4', 4)))), ('stor', ('name', 'quorum', 3)))
    return block.timestamp >= stor4[arg1].field_1536
}



}
