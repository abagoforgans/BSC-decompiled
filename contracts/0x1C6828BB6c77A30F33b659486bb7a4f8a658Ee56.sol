contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of struct stor151;
address owner;
uint256 stor251;
uint256 stor252;
uint256 stor253;
uint256 stor254;
mapping of uint256 stor255;
address sub_2a79e2b3Address;
mapping of uint256 tokenIdToPrice;
address sub_55b2276fAddress;
address sub_aef1afecAddress;
uint256 stor260;
mapping of uint8 stor261;
mapping of address sub_d6d6a286;
uint256 sub_d8c1b12b;
mapping of uint8 stor264;
uint256 sub_8c9db2b4;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function isReferral(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor264[address(arg1)])
}

function sub_2a79e2b3(?) {
    return sub_2a79e2b3Address
}

function sub_55b2276f(?) {
    return sub_55b2276fAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_69d263a3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor264[arg1])
}

function isArtist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor261[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_8c9db2b4(?) {
    return sub_8c9db2b4
}

function owner() {
    return owner
}

function sub_aef1afec(?) {
    return sub_aef1afecAddress
}

function sub_d6d6a286(?) {
    require calldata.size - 4 >= 32
    return sub_d6d6a286[arg1]
}

function sub_d8c1b12b(?) {
    return sub_d8c1b12b
}

function sub_e41647ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor261[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function tokenIdToPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenIdToPrice[arg1]
}

function _fallback() payable {
    revert
}

function sub_1769ac32(?) {
    return Array(len=4, data=stor251, stor253, stor254, stor252)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor253 = arg1
    stor254 = arg2
    stor252 = arg4
    stor251 = arg3
}

function getTotalSubscriptions() {
    staticcall sub_55b2276fAddress.0x4413a7c5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_cbb897eb(?) payable {
    if msg.value < stor252:
        revert with 0, 'Service Comission'
    if not stor261[msg.sender]:
        if not stor264[msg.sender]:
            stor264[msg.sender] = 1
            if sub_d8c1b12b == -1:
                revert with 0, 17
            sub_d8c1b12b++
            if stor255[this.address] > !stor252:
                revert with 0, 17
            stor255[this.address] += stor252
            require ext_code.size(sub_aef1afecAddress)
            call sub_aef1afecAddress.create(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, stor252
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_53a1f379(?) {
    require calldata.size - 4 >= 32
    staticcall sub_aef1afecAddress.0x1faa0414 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[44 len 20]
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[76 len 20]
    return ext_call.return_data[0], 
           mem[ceil32(return_data.size) + 448 len 64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function sub_ae823f57(?) {
    require calldata.size - 4 >= 32
    staticcall sub_55b2276fAddress.0x9cd3ef80 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    mem[ceil32(return_data.size) + 512] = ext_call.return_data[44 len 20]
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[76 len 20]
    return ext_call.return_data[0], 
           mem[ceil32(return_data.size) + 512 len 64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_4b544d68(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    s = 0
    idx = 0
    while idx < sub_8c9db2b4:
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            s = s
            idx = idx + 1
            continue 
        if s >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * s) + 128] = idx
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_7b3e4ce0(?) payable {
    require calldata.size - 4 >= 32
    if tokenIdToPrice[arg1] > msg.value:
        revert with 0, 'Incorrect value'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    tokenIdToPrice[arg1] = 0
    call ownerOf[arg1] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e1a6e46e(?) {
    if stor260 > test266151307():
        revert with 0, 65
    mem[96] = stor260
    mem[64] = (32 * stor260) + 128
    if not stor260:
        idx = 0
        while idx < stor260:
            mem[0] = idx
            mem[32] = 262
            if idx >= stor260:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_d6d6a286[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * stor260) + 128] = 32
        mem[(32 * stor260) + 160] = stor260
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * stor260] = call.data[calldata.size len 32 * stor260]
        idx = 0
        while idx < stor260:
            mem[0] = idx
            mem[32] = 262
            if idx >= stor260:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_d6d6a286[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * stor260) + 128] = 32
        mem[(32 * stor260) + 160] = stor260
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < stor260:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len (64 * stor260) + -mem[64] + 192
}

function sub_cb87005f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xdeaa07d00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_aef1afecAddress.0xdeaa07d with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len floor32(_5)] = mem[_4 + 128 len floor32(_5)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function sub_2e6ca588(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x2e6ca58800000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_55b2276fAddress.0x2e6ca588 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len floor32(_5)] = mem[_4 + 128 len floor32(_5)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function sub_41397d10(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x41397d1000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_55b2276fAddress.0x41397d10 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len floor32(_5)] = mem[_4 + 128 len floor32(_5)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_871590ce(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if arg3 and stor253 > -1 / arg3:
        revert with 0, 17
    if arg3 * stor253 / 100 and stor254 > -1 / arg3 * stor253 / 100:
        revert with 0, 17
    if arg3 * stor253 / 100 < arg3 * stor253 / 100 * stor254 / 100:
        revert with 0, 17
    if arg3 * stor253 / 100 <= 0:
        if msg.value <= arg3:
            revert with 0, 'Value to be paid'
    else:
        if arg3 * stor253 / 100 > !arg3:
            revert with 0, 17
        if msg.value <= (arg3 * stor253 / 100) + arg3:
            revert with 0, 'Value to be paid'
    if stor264[address(arg4)]:
        if stor255[this.address] > !((arg3 * stor253 / 100) - (arg3 * stor253 / 100 * stor254 / 100)):
            revert with 0, 17
        stor255[this.address] = stor255[this.address] + (arg3 * stor253 / 100) - (arg3 * stor253 / 100 * stor254 / 100)
    else:
        if stor255[this.address] > !(arg3 * stor253 / 100):
            revert with 0, 17
        stor255[this.address] += arg3 * stor253 / 100
    if arg3 < arg3 * stor253 / 100:
        revert with 0, 17
    call address(arg1) with:
       value arg3 - (arg3 * stor253 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor264[address(arg4)]:
        call address(arg4) with:
           value arg3 * stor253 / 100 * stor254 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_aef1afecAddress)
        call sub_aef1afecAddress.0xa64c42ed with:
             gas gas_remaining wei
            args address(arg4), address(arg1), arg3 * stor253 / 100 * stor254 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_55b2276fAddress)
    call sub_55b2276fAddress.0xd5c44c69 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_77822fc2(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0x77822fc200000000000000000000000000000000000000000000000000000000
    mem[260] = arg1
    staticcall sub_2a79e2b3Address.0x77822fc2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[256 len 4], Mask(224, 32, arg1) >> 32
    require mem[256 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[256 len 4], Mask(224, 32, arg1) >> 32 >= 160
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 416
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg1) >> 32 + 256]
    _8 = mem[_5 + 288]
    require mem[_5 + 288] <= test266151307()
    require return_data.size + 256 > _5 + mem[_5 + 288] + 287
    _9 = mem[_5 + mem[_5 + 288] + 256]
    if mem[_5 + mem[_5 + 288] + 256] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_5 + mem[_5 + 288] + 256])) + 161 < 160 or ceil32(return_data.size) + ceil32(ceil32(mem[_5 + mem[_5 + 288] + 256])) + 417 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[_5 + mem[_5 + 288] + 256])) + 417
    mem[ceil32(return_data.size) + 416] = _9
    require _5 + _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 448 len ceil32(_9)] = mem[_5 + _8 + 288 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + ceil32(return_data.size) + 448] = 0
    mem[ceil32(return_data.size) + 288] = ceil32(return_data.size) + 416
    require mem[_5 + 320] == mem[_5 + 332 len 20]
    mem[ceil32(return_data.size) + 320] = mem[_5 + 320]
    mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
    mem[ceil32(return_data.size) + 384] = mem[_5 + 384]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 256]
    mem[mem[64] + 64] = 160
    mem[mem[64] + 192] = _9
    mem[mem[64] + 224 len ceil32(_9)] = mem[ceil32(return_data.size) + 448 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + mem[64] + 224] = 0
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 332 len 20]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 384]
    return 32, mem[mem[64] + 32], 160, mem[mem[64] + 96 len 96], _9, mem[mem[64] + 224 len ceil32(_9)]
}

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 18
        stor101.length.field_8 = 'Unreleased Network' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 18
        stor101.length.field_8 = 'Unreleased Network' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_8 = 'UNET' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_8 = 'UNET' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor251 = 3 * 10^14
    stor252 = 3 * 10^14
    stor253 = 1
    stor254 = 40
    create contract with 0 wei
                    code: code.data[14209 len 1717]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2a79e2b3Address = address(create.new_address)
    create contract with 0 wei
                    code: code.data[15926 len 1972]
    sub_55b2276fAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[17898 len 1897]
    sub_aef1afecAddress = address(create.new_address)
    sub_8c9db2b4 = 0
    stor260 = 0
    sub_d8c1b12b = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_a629a168(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if stor251:
        if msg.value < stor251:
            revert with 0, 'Destribution Fee'
    if stor255[this.address] > !stor251:
        revert with 0, 17
    stor255[this.address] += stor251
    require ext_code.size(sub_2a79e2b3Address)
    call sub_2a79e2b3Address.0x69b102fb with:
         gas gas_remaining wei
        args sub_8c9db2b4, Array(len=arg1.length, data=arg1[all]), msg.sender, arg2, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor265]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor265] = msg.sender
    emit Transfer(0, msg.sender, sub_8c9db2b4);
    if ext_code.size(msg.sender):
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, sub_8c9db2b4, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg1.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg1[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not ownerOf[stor265]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor151[stor265].field_0:
        if stor151[stor265].field_0 == stor151[stor265].field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor151[stor265][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor151[stor265].field_0 = 0
            idx = 0
            while stor151[stor265].field_1 + 31 / 32 > idx:
                stor151[stor265][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor151[stor265].field_0 == stor151[stor265].field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor151[stor265][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor151[stor265].field_0 = 0
            idx = 0
            while stor151[stor265].field_1 + 31 / 32 > idx:
                stor151[stor265][idx].field_0 = 0
                idx = idx + 1
                continue 
    if arg4 > 0:
        tokenIdToPrice[stor265] = arg4
    else:
        tokenIdToPrice[stor265] = 0
    if not stor261[msg.sender]:
        stor261[msg.sender] = 1
        if stor260 == -1:
            revert with 0, 17
        stor260++
    if sub_8c9db2b4 == -1:
        revert with 0, 17
    sub_8c9db2b4++
}

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}



}
