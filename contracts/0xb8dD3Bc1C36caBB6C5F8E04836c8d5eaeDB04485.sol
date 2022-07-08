contract main {




// =====================  Runtime code  =====================


#
#  - proposals(uint256 arg1)
#
mapping of uint8 stor0;
mapping of uint256 shares;
uint256 sharePrice;
uint256 sub_6d65a0f2;
mapping of uint8 stor4;
mapping of struct stor5;
uint256 totalShares;
uint256 availableFunds;
uint256 nextProposalId;
uint256 voteTime;
uint256 quorum;
address adminAddress;
address stor12;

function quorum() {
    return quorum
}

function nextProposalId() {
    return nextProposalId
}

function totalShares() {
    return totalShares
}

function availableFunds() {
    return availableFunds
}

function sub_6d65a0f2(?) {
    return sub_6d65a0f2
}

function investors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function sharePrice() {
    return sharePrice
}

function votes(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[arg1][arg2])
}

function voteTime() {
    return voteTime
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    adminAddress = arg1
}

function sub_f80ce49e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    sub_6d65a0f2 = arg1
    emit 0xd515219d: arg1
}

function setQuorum(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    quorum = arg1
    emit NewQuorum(arg1);
}

function setVoteTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    voteTime = arg1
    emit 0xe96fcd18: arg1
}

function setSharePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    sharePrice = arg1
    emit 0xb568e4d4: arg1
}

function getLands(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function removeProposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if stor5[arg1].field_2304 > 3:
        revert with 'NH{q', 33
    if stor5[arg1].field_2304:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only ongoing proposals are able to be removed'
    stor5[arg1].field_2304 = 3
    emit 0xa270d1bd: arg1
}

function withdrawEther(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if availableFunds < arg1:
        revert with 0, 'not enough available funds'
    availableFunds -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Funds(availableFunds);
}

function sub_bb9c0920(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if shares[address(arg1)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (shares[address(arg1)] + ext_call.return_data[0])
}

function contribute() payable {
    if not sharePrice:
        revert with 'NH{q', 18
    if msg.value % sharePrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'contribution value should be multiple of share price'
    stor0[address(msg.sender)] = 1
    if not sharePrice:
        revert with 'NH{q', 18
    if shares[address(msg.sender)] > -(msg.value / sharePrice) - 1:
        revert with 'NH{q', 17
    shares[address(msg.sender)] += msg.value / sharePrice
    if not sharePrice:
        revert with 'NH{q', 18
    if totalShares > -(msg.value / sharePrice) - 1:
        revert with 'NH{q', 17
    totalShares += msg.value / sharePrice
    if availableFunds > -msg.value - 1:
        revert with 'NH{q', 17
    availableFunds += msg.value
    emit 0x2efce8af: shares[address(msg.sender)], totalShares
    emit Funds(availableFunds);
}

function executeProposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor5[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the voting period is still not over'
    if stor5[arg1].field_2304 > 3:
        revert with 'NH{q', 33
    if stor5[arg1].field_2304:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot execute proposal already executed'
    if stor5[arg1].field_1536 <= 0:
        if availableFunds > -stor5[arg1].field_768 - 1:
            revert with 'NH{q', 17
        availableFunds += stor5[arg1].field_768
        stor5[arg1].field_2304 = 2
    else:
        if stor5[arg1].field_1536 > -stor5[arg1].field_1792 - 1:
            revert with 'NH{q', 17
        if stor5[arg1].field_1536 and 100 > -1 / stor5[arg1].field_1536:
            revert with 'NH{q', 17
        if not stor5[arg1].field_1536 + stor5[arg1].field_1792:
            revert with 'NH{q', 18
        if 100 * stor5[arg1].field_1536 / stor5[arg1].field_1536 + stor5[arg1].field_1792 < stor5[arg1].field_1024:
            if availableFunds > -stor5[arg1].field_768 - 1:
                revert with 'NH{q', 17
            availableFunds += stor5[arg1].field_768
            stor5[arg1].field_2304 = 2
        else:
            call stor5[arg1].field_1280 with:
               value stor5[arg1].field_768 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[arg1].field_2304 = 1
    emit Funds(availableFunds);
    if stor5[arg1].field_2304 >= 4:
        revert with 'NH{q', 33
    emit 0x14c6bf7c: arg1, stor5[arg1].field_2304
}

function vote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if shares[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if shares[address(msg.sender)] + ext_call.return_data[0] <= 0:
        revert with 0, 'vote power is needed to use this'
    if stor4[address(msg.sender)][arg1]:
        revert with 0, 'investor can only vote once per proposal'
    if block.timestamp >= stor5[arg1].field_2048:
        revert with 0, 'can only vote until proposal end date'
    if stor5[arg1].field_2304 > 3:
        revert with 'NH{q', 33
    if stor5[arg1].field_2304:
        revert with 0, 'can only vote in ongoing proposals'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if shares[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if shares[address(msg.sender)] + ext_call.return_data[0] <= 0:
        revert with 0, 'only investors or land owners are able to vote'
    stor4[address(msg.sender)][arg1] = 1
    if not arg2:
        if stor5[arg1].field_1792 > -shares[address(msg.sender)] + -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        stor5[arg1].field_1792 = stor5[arg1].field_1792 + shares[address(msg.sender)] + ext_call.return_data[0]
    else:
        if stor5[arg1].field_1536 > -shares[address(msg.sender)] + -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        stor5[arg1].field_1536 = stor5[arg1].field_1536 + shares[address(msg.sender)] + ext_call.return_data[0]
    emit 0xbbbec373: arg1, stor5[arg1].field_1536, stor5[arg1].field_1792, msg.sender
}

function sub_e5ee89cc(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == address(arg4)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if shares[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if shares[address(msg.sender)] + ext_call.return_data[0] <= 0:
        revert with 0, 'vote power is needed to use this'
    if availableFunds < arg3:
        revert with 0, 'not enough available funds'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if shares[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if shares[address(msg.sender)] + ext_call.return_data[0] < sub_6d65a0f2:
        revert with 0, 'not enough shares to create a proposal'
    if block.timestamp > -voteTime - 1:
        revert with 'NH{q', 17
    stor5[stor8].field_0 = nextProposalId
    if stor5[stor8].field_256:
        if stor5[stor8].field_256 == stor5[stor8].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[stor8][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[stor8].field_256 = 0
            idx = 0
            while stor5[stor8].field_257 + 31 / 32 > idx:
                stor5[stor8][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[stor8].field_256 == stor5[stor8].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor5[stor8][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[stor8].field_256 = 0
            idx = 0
            while stor5[stor8].field_257 + 31 / 32 > idx:
                stor5[stor8][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    if stor5[stor8].field_512:
        if stor5[stor8].field_512 == stor5[stor8].field_513 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[stor8][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[stor8].field_512 = 0
            idx = 0
            while stor5[stor8].field_513 + 31 / 32 > idx:
                stor5[stor8][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[stor8].field_512 == stor5[stor8].field_513 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[stor8][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[stor8].field_512 = 0
            idx = 0
            while stor5[stor8].field_513 + 31 / 32 > idx:
                stor5[stor8][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor5[stor8].field_768 = arg3
    stor5[stor8].field_1024 = quorum
    stor5[stor8].field_1280 = address(arg4)
    stor5[stor8].field_1536 = 0
    stor5[stor8].field_1792 = 0
    stor5[stor8].field_2048 = block.timestamp + voteTime
    stor5[stor8].field_2304 = 0
    stor5[stor8].field_2560 = 0
    if availableFunds < arg3:
        revert with 'NH{q', 17
    availableFunds -= arg3
    emit Funds(availableFunds);
    if block.timestamp > -voteTime - 1:
        revert with 'NH{q', 17
    if ceil32(arg1.length) <= arg1.length:
        emit 0x8d727817: nextProposalId, 288, ceil32(arg1.length) + 320, arg3, address(arg4), 0, 0, block.timestamp + voteTime, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(arg1.length) + 738] = arg2.length
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(arg1.length) + 770 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(arg1.length) + arg2.length + 770] = 0
        emit 0x8d727817: nextProposalId, 288, ceil32(arg1.length) + 320, arg3, address(arg4), 0, 0, block.timestamp + voteTime, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + arg1.length + 770 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]
    if nextProposalId == -1:
        revert with 'NH{q', 17
    nextProposalId++
}



}
