contract main {




// =====================  Runtime code  =====================


#
#  - sub_3017bb5d(?)
#  - sub_44fd97dc(?)
#  - sub_589ef3d9(?)
#  - sub_5f0369be(?)
#  - sub_bb9cf7b1(?)
#  - sub_c34c2962(?)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor51;
address owner;
uint256 stor51;
address nftAddress;
uint256 numTickets;
uint256 closingTime;
uint256 stor105; offset 1
uint256 ticketPrice;
uint256 sub_bb1e7cea;
uint256 sub_d6f2b3e6;
uint256 sub_67f3f7e2;
uint256 sub_42d52a2f;
uint256 sub_f1a03153;
uint256 sub_2b9956b7;
uint256 stor112;
address sub_14ef852eAddress;
uint256 stor113;
uint256 sub_72ea3551;
mapping of uint256 stor115;
mapping of address stor116;
mapping of uint256 stor117;
mapping of address stor118;
mapping of uint256 stor119;
mapping of uint256 stor120;
mapping of uint256 stor121;
mapping of address stor122;
mapping of address stor123;
mapping of uint256 stor124;
mapping of uint256 stor125;
mapping of uint256 stor126;
mapping of address stor127;
mapping of uint8 stor128;
mapping of uint8 stor129;
uint256 adminFee;

function ticketPrice() {
    return ticketPrice
}

function sub_14ef852e(?) {
    return address(sub_14ef852eAddress)
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor129[address(arg1)])
}

function sub_2b9956b7(?) {
    return sub_2b9956b7
}

function numTickets() {
    return numTickets
}

function sub_42d52a2f(?) {
    return sub_42d52a2f
}

function nft() {
    return nftAddress
}

function closingTime() {
    return closingTime
}

function sub_67f3f7e2(?) {
    return sub_67f3f7e2
}

function sub_72ea3551(?) {
    return sub_72ea3551
}

function owner() {
    return address(owner)
}

function adminFee() {
    return adminFee
}

function sub_bb1e7cea(?) {
    return sub_bb1e7cea
}

function sub_d6f2b3e6(?) {
    return sub_d6f2b3e6
}

function sub_f1a03153(?) {
    return sub_f1a03153
}

function sub_fe358a4e(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(stor128[arg1][address(arg2)])
}

function sub_dc400e62(?) {
    if stor112 > !sub_f1a03153:
        revert with 'NH{q', 17
    return (stor112 + sub_f1a03153)
}

function sub_fa713083(?) {
    require calldata.size - 4 >= 32
    return stor115[arg1], stor116[arg1], stor117[arg1], stor118[arg1]
}

function setTicketPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketPrice = arg1
}

function setClosingTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    closingTime = arg1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_483ca2cf(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor122[arg1] != msg.sender:
        revert with 0, 'not group owner'
    stor128[arg1][address(arg2)] = 1
}

function sub_4c78e9e0(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor122[arg1] != msg.sender:
        revert with 0, 'not group owner'
    stor128[arg1][address(arg2)] = 0
}

function sub_ce45fbd7(?) {
    if 0 == sub_72ea3551:
        return 0
    if not numTickets:
        revert with 'NH{q', 18
    if 1 > !(sub_72ea3551 % numTickets):
        revert with 'NH{q', 17
    return ((sub_72ea3551 % numTickets) + 1)
}

function setAdminFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if adminFee > stor105:
        revert with 0, 'too high'
    adminFee = arg1
}

function sub_a15eda2e(?) {
    require calldata.size - 4 >= 128
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb1e7cea = arg1
    sub_d6f2b3e6 = arg2
    sub_67f3f7e2 = arg3
    sub_42d52a2f = arg4
}

function setAdminStatus(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor129[address(arg1)] = uint8(arg2)
}

function sub_df1f5117(?) {
    require calldata.size - 4 >= 32
    if not sub_72ea3551:
        return 0
    if stor119[arg1] <= 1:
        return 0
    if not stor119[arg1]:
        revert with 'NH{q', 18
    return ((sub_72ea3551 xor stor121[arg1] % stor119[arg1]) + stor126[arg1])
}

function sub_03d480f3(?) {
    require calldata.size - 4 >= 32
    return stor119[arg1], 
           stor120[arg1],
           stor121[arg1],
           stor122[arg1],
           stor123[arg1],
           stor124[arg1],
           stor125[arg1],
           stor126[arg1],
           address(stor127[arg1])
}

function sub_5433e74f(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 300 > !closingTime:
        revert with 'NH{q', 17
    if block.timestamp < closingTime + 300:
        revert with 0, 'too early'
    sub_72ea3551 = arg1
    emit 0x240ab5f7: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function sub_27ad94c0(?) {
    require calldata.size - 4 >= 32
    if not sub_72ea3551:
        if 0 == arg1:
            return stor125[arg1]
    else:
        if stor119[stor115[arg1]] <= 1:
            if 0 == arg1:
                return stor125[arg1]
        else:
            if not stor119[stor115[arg1]]:
                revert with 'NH{q', 18
            if (sub_72ea3551 xor stor121[stor115[arg1]] % stor119[stor115[arg1]]) + stor126[stor115[arg1]] == arg1:
                return stor125[arg1]
    return 0
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if nftAddress != msg.sender:
        revert with 0, '!nft'
    emit OnERC721Received(address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]));
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_e7b07f18(?) {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 168 * 24 * 3600 > !closingTime:
        revert with 'NH{q', 17
    if block.timestamp < closingTime + (168 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'only can withdraw BNB at least 7 days after closing time'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw BNB left'
}

function sub_41720eed(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor122[cd[4]] != msg.sender:
        revert with 0, 'not group owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 128)
        stor128[cd[4]][mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_83c02a87(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor122[cd[4]] != msg.sender:
        revert with 0, 'not group owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 128)
        stor128[cd[4]][mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function initialize(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'zero'
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    address(owner) = msg.sender
    emit OwnershipTransferred(address(owner), msg.sender);
    nftAddress = arg1
    ticketPrice = 10^16
    sub_bb1e7cea = 2000
    sub_d6f2b3e6 = 10000
    sub_67f3f7e2 = 1000
    sub_42d52a2f = 1000
    sub_f1a03153 = arg2
    closingTime = arg3
    stor129[msg.sender] = 1
    adminFee = 2 * 10^15
}

function sub_388296a8(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    staticcall nftAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > !arg3:
        revert with 'NH{q', 17
    if arg2 + arg3 > ext_call.return_data[0]:
        revert with 0, 'out of range'
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = arg3
    mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
    if not arg3:
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = arg2 + idx
            staticcall nftAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg1), arg2 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_35]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _28 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _28] = mem[ceil32(return_data.size) + 128 len 32 * _28]
        return 32, mem[mem[64] + 32 len (32 * _28) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        if arg2 > !idx:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2 + idx
        staticcall nftAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), arg2 + idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_37]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _29 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _29] = mem[ceil32(return_data.size) + 128 len 32 * _29]
    return 32, mem[mem[64] + 32 len (32 * _29) + 32]
}

function rescueStuckErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 168 * 24 * 3600 > !closingTime:
        revert with 'NH{q', 17
    if block.timestamp < closingTime + (168 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'only can withdraw token at least 7 days after closing time'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor51)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_40dd9a34(?) {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    staticcall nftAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you are not owner of this ticket'
    if not stor123[stor115[arg1]]:
        revert with 0, 'no local jackpot prize'
    if stor125[stor115[arg1]] <= 0:
        revert with 0, 'no local jackpot prize'
    if not sub_72ea3551:
        if arg1 != 0:
            revert with 0, 'no local jackpot prize'
    else:
        if stor119[stor115[arg1]] <= 1:
            if arg1 != 0:
                revert with 0, 'no local jackpot prize'
        else:
            if not stor119[stor115[arg1]]:
                revert with 'NH{q', 18
            if (sub_72ea3551 xor stor121[stor115[arg1]] % stor119[stor115[arg1]]) + stor126[stor115[arg1]] != arg1:
                revert with 0, 'no local jackpot prize'
    if address(stor127[stor115[arg1]]):
        revert with 0, 'already claimed'
    uint256(stor127[stor115[arg1]]) = msg.sender or Mask(96, 160, uint256(stor127[stor115[arg1]]))
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = stor125[stor115[arg1]]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor123[stor115[arg1]]):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor125[stor115[arg1]], 0
    mem[ceil32(return_data.size) + 328] = 0
    call stor123[stor115[arg1]] with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor125[stor115[arg1]], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor125[stor115[arg1]], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(arg1), mem[132 len 28] == bool(uint32(arg1), mem[132 len 28])
            if not uint32(arg1), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xae946067: msg.sender, stor123[stor115[arg1]], stor125[stor115[arg1]], stor115[arg1], arg1
}

function sub_b94e4772(?) {
    if 0 == sub_72ea3551:
        staticcall nftAddress.0x6352211e with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'you are not owner of the winning ticket'
        if address(sub_14ef852eAddress):
            revert with 0, 'already claimed'
        if stor112 > !sub_f1a03153:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 <= 0:
            revert with 0, 'no prize'
        uint256(stor113) = msg.sender or Mask(96, 160, uint256(stor113))
        if stor112 + sub_f1a03153 and sub_67f3f7e2 > -1 / stor112 + sub_f1a03153:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 and sub_42d52a2f > -1 / stor112 + sub_f1a03153:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 < (stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 - ((stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000) < (stor112 * sub_42d52a2f) + (sub_f1a03153 * sub_42d52a2f) / 10000:
            revert with 'NH{q', 17
        call msg.sender with:
           value stor112 + sub_f1a03153 - ((stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000) - ((stor112 * sub_42d52a2f) + (sub_f1a03153 * sub_42d52a2f) / 10000) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed sending prize'
        call stor116[0] with:
           value (stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed sending commission'
        call address(owner) with:
           value (stor112 * sub_42d52a2f) + (sub_f1a03153 * sub_42d52a2f) / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed sending fee'
        emit 0xe10a08e3: msg.sender, stor112 + sub_f1a03153
        emit 0x0: msg.sender, stor112 + sub_f1a03153
    else:
        if not numTickets:
            revert with 'NH{q', 18
        if 1 > !(sub_72ea3551 % numTickets):
            revert with 'NH{q', 17
        staticcall nftAddress.0x6352211e with:
                gas gas_remaining wei
               args ((sub_72ea3551 % numTickets) + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'you are not owner of the winning ticket'
        if address(sub_14ef852eAddress):
            revert with 0, 'already claimed'
        if stor112 > !sub_f1a03153:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 <= 0:
            revert with 0, 'no prize'
        uint256(stor113) = msg.sender or Mask(96, 160, uint256(stor113))
        if stor112 + sub_f1a03153 and sub_67f3f7e2 > -1 / stor112 + sub_f1a03153:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 and sub_42d52a2f > -1 / stor112 + sub_f1a03153:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 < (stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000:
            revert with 'NH{q', 17
        if stor112 + sub_f1a03153 - ((stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000) < (stor112 * sub_42d52a2f) + (sub_f1a03153 * sub_42d52a2f) / 10000:
            revert with 'NH{q', 17
        call msg.sender with:
           value stor112 + sub_f1a03153 - ((stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000) - ((stor112 * sub_42d52a2f) + (sub_f1a03153 * sub_42d52a2f) / 10000) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed sending prize'
        call stor116[(stor114 % stor103) + 1] with:
           value (stor112 * sub_67f3f7e2) + (sub_f1a03153 * sub_67f3f7e2) / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed sending commission'
        call address(owner) with:
           value (stor112 * sub_42d52a2f) + (sub_f1a03153 * sub_42d52a2f) / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed sending fee'
        emit 0xe10a08e3: msg.sender, stor112 + sub_f1a03153, (sub_72ea3551 % numTickets) + 1
}

function sub_10c78552(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 122
    if stor122[arg1] != msg.sender:
        revert with 0, 'not group owner'
    idx = 0
    while idx < arg2:
        if stor120[arg1] >= stor119[arg1]:
            revert with 0, 'no more lixi'
        if stor126[arg1] > !stor120[arg1]:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 124
        if not stor123[arg1]:
            mem[mem[64] + 36] = stor126[arg1] + stor120[arg1]
            require ext_code.size(nftAddress)
            call nftAddress.0xa1448194 with:
                 gas gas_remaining wei
                args msg.sender, stor126[arg1] + stor120[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ticketPrice wei
                 gas gas_remaining wei
            if return_data.size:
                _369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_369] = return_data.size
                mem[_369 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send LixiNow'
            stor118[stor126[arg1] + stor120[arg1]] = msg.sender
            stor115[stor126[arg1] + stor120[arg1]] = arg1
            stor116[stor126[arg1] + stor120[arg1]] = stor122[arg1]
            stor117[stor126[arg1] + stor120[arg1]] = block.timestamp
            if stor120[arg1] == -1:
                revert with 'NH{q', 17
            stor120[arg1]++
            mem[0] = msg.sender
            mem[32] = sha3(arg1, 128)
            stor128[arg1][address(msg.sender)] = 0
            mem[mem[64]] = stor126[arg1] + stor120[arg1]
            mem[mem[64] + 32] = block.timestamp
        else:
            if stor124[arg1] <= 0:
                mem[mem[64] + 36] = stor126[arg1] + stor120[arg1]
                require ext_code.size(nftAddress)
                call nftAddress.0xa1448194 with:
                     gas gas_remaining wei
                    args msg.sender, stor126[arg1] + stor120[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value ticketPrice wei
                     gas gas_remaining wei
                if return_data.size:
                    _372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_372] = return_data.size
                    mem[_372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send LixiNow'
                stor118[stor126[arg1] + stor120[arg1]] = msg.sender
                stor115[stor126[arg1] + stor120[arg1]] = arg1
                stor116[stor126[arg1] + stor120[arg1]] = stor122[arg1]
                stor117[stor126[arg1] + stor120[arg1]] = block.timestamp
                if stor120[arg1] == -1:
                    revert with 'NH{q', 17
                stor120[arg1]++
                mem[0] = msg.sender
                mem[32] = sha3(arg1, 128)
                stor128[arg1][address(msg.sender)] = 0
                mem[mem[64]] = stor126[arg1] + stor120[arg1]
                mem[mem[64] + 32] = block.timestamp
            else:
                _365 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = stor124[arg1]
                _367 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_367 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_367 + 36 len 28]
                mem[64] = _365 + 164
                mem[_365 + 100] = 32
                mem[_365 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor123[arg1]):
                    revert with 0, 'Address: call to non-contract'
                _409 = mem[_367]
                s = 0
                while s < _409:
                    mem[s + _365 + 164] = mem[s + _367 + 32]
                    s = s + 32
                    continue 
                if ceil32(_409) > _409:
                    mem[_409 + _365 + 164] = 0
                call stor123[arg1].mem[_365 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_365 + 168 len _409 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_365 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_365 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _365 + 232] = mem[idx + _365 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_365 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_365 + 168] = msg.sender
                    mem[_365 + 200] = stor126[arg1] + stor120[arg1]
                    require ext_code.size(nftAddress)
                    call nftAddress.0xa1448194 with:
                         gas gas_remaining wei
                        args msg.sender, stor126[arg1] + stor120[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ticketPrice wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[arg1] + stor120[arg1]] = msg.sender
                        stor115[stor126[arg1] + stor120[arg1]] = arg1
                        stor116[stor126[arg1] + stor120[arg1]] = stor122[arg1]
                        stor117[stor126[arg1] + stor120[arg1]] = block.timestamp
                        if stor120[arg1] == -1:
                            revert with 'NH{q', 17
                        stor120[arg1]++
                        mem[0] = msg.sender
                        mem[32] = sha3(arg1, 128)
                        stor128[arg1][address(msg.sender)] = 0
                        mem[_365 + 164] = stor126[arg1] + stor120[arg1]
                        mem[_365 + 196] = block.timestamp
                    else:
                        mem[64] = _365 + ceil32(return_data.size) + 165
                        mem[_365 + 164] = return_data.size
                        mem[_365 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[arg1] + stor120[arg1]] = msg.sender
                        stor115[stor126[arg1] + stor120[arg1]] = arg1
                        stor116[stor126[arg1] + stor120[arg1]] = stor122[arg1]
                        stor117[stor126[arg1] + stor120[arg1]] = block.timestamp
                        if stor120[arg1] == -1:
                            revert with 'NH{q', 17
                        stor120[arg1]++
                        mem[0] = msg.sender
                        mem[32] = sha3(arg1, 128)
                        stor128[arg1][address(msg.sender)] = 0
                        mem[_365 + ceil32(return_data.size) + 165] = stor126[arg1] + stor120[arg1]
                        mem[_365 + ceil32(return_data.size) + 197] = block.timestamp
                else:
                    mem[64] = _365 + ceil32(return_data.size) + 165
                    mem[_365 + 164] = return_data.size
                    mem[_365 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_365 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_365 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _365 + ceil32(return_data.size) + 233] = mem[idx + _365 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_365 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_365 + 196] == bool(mem[_365 + 196])
                        if not mem[_365 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_365 + ceil32(return_data.size) + 169] = msg.sender
                    mem[_365 + ceil32(return_data.size) + 201] = stor126[arg1] + stor120[arg1]
                    require ext_code.size(nftAddress)
                    call nftAddress.0xa1448194 with:
                         gas gas_remaining wei
                        args msg.sender, stor126[arg1] + stor120[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ticketPrice wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[arg1] + stor120[arg1]] = msg.sender
                        stor115[stor126[arg1] + stor120[arg1]] = arg1
                        stor116[stor126[arg1] + stor120[arg1]] = stor122[arg1]
                        stor117[stor126[arg1] + stor120[arg1]] = block.timestamp
                        if stor120[arg1] == -1:
                            revert with 'NH{q', 17
                        stor120[arg1]++
                        mem[0] = msg.sender
                        mem[32] = sha3(arg1, 128)
                        stor128[arg1][address(msg.sender)] = 0
                        mem[_365 + ceil32(return_data.size) + 165] = stor126[arg1] + stor120[arg1]
                        mem[_365 + ceil32(return_data.size) + 197] = block.timestamp
                    else:
                        mem[64] = _365 + (2 * ceil32(return_data.size)) + 166
                        mem[_365 + ceil32(return_data.size) + 165] = return_data.size
                        mem[_365 + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[arg1] + stor120[arg1]] = msg.sender
                        stor115[stor126[arg1] + stor120[arg1]] = arg1
                        stor116[stor126[arg1] + stor120[arg1]] = stor122[arg1]
                        stor117[stor126[arg1] + stor120[arg1]] = block.timestamp
                        if stor120[arg1] == -1:
                            revert with 'NH{q', 17
                        stor120[arg1]++
                        mem[0] = msg.sender
                        mem[32] = sha3(arg1, 128)
                        stor128[arg1][address(msg.sender)] = 0
                        mem[_365 + (2 * ceil32(return_data.size)) + 166] = stor126[arg1] + stor120[arg1]
                        mem[_365 + (2 * ceil32(return_data.size)) + 198] = block.timestamp
        emit 0x5f6f4fcf: stor126[arg1] + stor120[arg1], block.timestamp, msg.sender, arg1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_70628fb4(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = cd[4]
    mem[32] = 122
    if stor122[cd[4]] != msg.sender:
        revert with 0, 'not group owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _715 = mem[(32 * idx) + 128]
        if stor120[cd[4]] >= stor119[cd[4]]:
            revert with 0, 'no more lixi'
        if stor126[cd[4]] > !stor120[cd[4]]:
            revert with 'NH{q', 17
        mem[0] = cd[4]
        mem[32] = 124
        if not stor123[cd[4]]:
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = stor126[cd[4]] + stor120[cd[4]]
            require ext_code.size(nftAddress)
            call nftAddress.0xa1448194 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], stor126[cd[4]] + stor120[cd[4]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(_715) with:
               value ticketPrice wei
                 gas gas_remaining wei
            if return_data.size:
                _731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_731] = return_data.size
                mem[_731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send LixiNow'
            stor118[stor126[cd[4]] + stor120[cd[4]]] = address(_715)
            stor115[stor126[cd[4]] + stor120[cd[4]]] = cd[4]
            stor116[stor126[cd[4]] + stor120[cd[4]]] = stor122[cd[4]]
            stor117[stor126[cd[4]] + stor120[cd[4]]] = block.timestamp
            if stor120[cd[4]] == -1:
                revert with 'NH{q', 17
            stor120[cd[4]]++
            mem[0] = address(_715)
            mem[32] = sha3(cd[4], 128)
            stor128[cd[4]][address(_715)] = 0
            mem[mem[64]] = stor126[cd[4]] + stor120[cd[4]]
            mem[mem[64] + 32] = block.timestamp
        else:
            if stor124[cd[4]] <= 0:
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = stor126[cd[4]] + stor120[cd[4]]
                require ext_code.size(nftAddress)
                call nftAddress.0xa1448194 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], stor126[cd[4]] + stor120[cd[4]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(_715) with:
                   value ticketPrice wei
                     gas gas_remaining wei
                if return_data.size:
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_734] = return_data.size
                    mem[_734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send LixiNow'
                stor118[stor126[cd[4]] + stor120[cd[4]]] = address(_715)
                stor115[stor126[cd[4]] + stor120[cd[4]]] = cd[4]
                stor116[stor126[cd[4]] + stor120[cd[4]]] = stor122[cd[4]]
                stor117[stor126[cd[4]] + stor120[cd[4]]] = block.timestamp
                if stor120[cd[4]] == -1:
                    revert with 'NH{q', 17
                stor120[cd[4]]++
                mem[0] = address(_715)
                mem[32] = sha3(cd[4], 128)
                stor128[cd[4]][address(_715)] = 0
                mem[mem[64]] = stor126[cd[4]] + stor120[cd[4]]
                mem[mem[64] + 32] = block.timestamp
            else:
                _727 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = stor124[cd[4]]
                _729 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_729 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_729 + 36 len 28]
                mem[64] = _727 + 164
                mem[_727 + 100] = 32
                mem[_727 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor123[cd[4]]):
                    revert with 0, 'Address: call to non-contract'
                _771 = mem[_729]
                s = 0
                while s < _771:
                    mem[s + _727 + 164] = mem[s + _729 + 32]
                    s = s + 32
                    continue 
                if ceil32(_771) > _771:
                    mem[_771 + _727 + 164] = 0
                call stor123[cd[4]].mem[_727 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_727 + 168 len _771 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_727 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_727 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _727 + 232] = mem[idx + _727 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_727 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_727 + 168] = address(_715)
                    mem[_727 + 200] = stor126[cd[4]] + stor120[cd[4]]
                    require ext_code.size(nftAddress)
                    call nftAddress.0xa1448194 with:
                         gas gas_remaining wei
                        args address(_715), stor126[cd[4]] + stor120[cd[4]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(_715) with:
                       value ticketPrice wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[cd[4]] + stor120[cd[4]]] = address(_715)
                        stor115[stor126[cd[4]] + stor120[cd[4]]] = cd[4]
                        stor116[stor126[cd[4]] + stor120[cd[4]]] = stor122[cd[4]]
                        stor117[stor126[cd[4]] + stor120[cd[4]]] = block.timestamp
                        if stor120[cd[4]] == -1:
                            revert with 'NH{q', 17
                        stor120[cd[4]]++
                        mem[0] = address(_715)
                        mem[32] = sha3(cd[4], 128)
                        stor128[cd[4]][address(_715)] = 0
                        mem[_727 + 164] = stor126[cd[4]] + stor120[cd[4]]
                        mem[_727 + 196] = block.timestamp
                    else:
                        mem[64] = _727 + ceil32(return_data.size) + 165
                        mem[_727 + 164] = return_data.size
                        mem[_727 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[cd[4]] + stor120[cd[4]]] = address(_715)
                        stor115[stor126[cd[4]] + stor120[cd[4]]] = cd[4]
                        stor116[stor126[cd[4]] + stor120[cd[4]]] = stor122[cd[4]]
                        stor117[stor126[cd[4]] + stor120[cd[4]]] = block.timestamp
                        if stor120[cd[4]] == -1:
                            revert with 'NH{q', 17
                        stor120[cd[4]]++
                        mem[0] = address(_715)
                        mem[32] = sha3(cd[4], 128)
                        stor128[cd[4]][address(_715)] = 0
                        mem[_727 + ceil32(return_data.size) + 165] = stor126[cd[4]] + stor120[cd[4]]
                        mem[_727 + ceil32(return_data.size) + 197] = block.timestamp
                else:
                    mem[64] = _727 + ceil32(return_data.size) + 165
                    mem[_727 + 164] = return_data.size
                    mem[_727 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_727 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_727 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _727 + ceil32(return_data.size) + 233] = mem[idx + _727 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_727 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_727 + 196] == bool(mem[_727 + 196])
                        if not mem[_727 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_727 + ceil32(return_data.size) + 169] = address(_715)
                    mem[_727 + ceil32(return_data.size) + 201] = stor126[cd[4]] + stor120[cd[4]]
                    require ext_code.size(nftAddress)
                    call nftAddress.0xa1448194 with:
                         gas gas_remaining wei
                        args address(_715), stor126[cd[4]] + stor120[cd[4]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(_715) with:
                       value ticketPrice wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[cd[4]] + stor120[cd[4]]] = address(_715)
                        stor115[stor126[cd[4]] + stor120[cd[4]]] = cd[4]
                        stor116[stor126[cd[4]] + stor120[cd[4]]] = stor122[cd[4]]
                        stor117[stor126[cd[4]] + stor120[cd[4]]] = block.timestamp
                        if stor120[cd[4]] == -1:
                            revert with 'NH{q', 17
                        stor120[cd[4]]++
                        mem[0] = address(_715)
                        mem[32] = sha3(cd[4], 128)
                        stor128[cd[4]][address(_715)] = 0
                        mem[_727 + ceil32(return_data.size) + 165] = stor126[cd[4]] + stor120[cd[4]]
                        mem[_727 + ceil32(return_data.size) + 197] = block.timestamp
                    else:
                        mem[64] = _727 + (2 * ceil32(return_data.size)) + 166
                        mem[_727 + ceil32(return_data.size) + 165] = return_data.size
                        mem[_727 + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Failed to send LixiNow'
                        stor118[stor126[cd[4]] + stor120[cd[4]]] = address(_715)
                        stor115[stor126[cd[4]] + stor120[cd[4]]] = cd[4]
                        stor116[stor126[cd[4]] + stor120[cd[4]]] = stor122[cd[4]]
                        stor117[stor126[cd[4]] + stor120[cd[4]]] = block.timestamp
                        if stor120[cd[4]] == -1:
                            revert with 'NH{q', 17
                        stor120[cd[4]]++
                        mem[0] = address(_715)
                        mem[32] = sha3(cd[4], 128)
                        stor128[cd[4]][address(_715)] = 0
                        mem[_727 + (2 * ceil32(return_data.size)) + 166] = stor126[cd[4]] + stor120[cd[4]]
                        mem[_727 + (2 * ceil32(return_data.size)) + 198] = block.timestamp
        emit 0x5f6f4fcf: stor126[cd[4]] + stor120[cd[4]], block.timestamp, address(_715), cd[4]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
