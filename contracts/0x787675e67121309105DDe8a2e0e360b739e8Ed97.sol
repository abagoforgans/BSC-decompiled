contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 sub_766f451f;
address nftAddress;
address sub_d02d6941Address;
mapping of uint256 sub_2fa951ab;
mapping of struct sets;
mapping of uint256 stor106;
address storA7EC;
uint256 storA7EC;
uint256 nextImplementationDelay;
uint256 nextImplementationTimestamp;
address nextImplementationAddress;
uint256 storD2E4;

function nextImplementation() payable {
    return address(nextImplementationAddress)
}

function sub_2fa951ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2fa951ab[arg1]
}

function nft() payable {
    return nftAddress
}

function sets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require sets[arg1].field_0 < 3
    return sets[arg1].field_0, sets[arg1].field_512
}

function sub_766f451f(?) payable {
    return sub_766f451f
}

function nextImplementationTimestamp() payable {
    return nextImplementationTimestamp
}

function nextImplementationDelay() payable {
    return nextImplementationDelay
}

function sub_d02d6941(?) payable {
    return sub_d02d6941Address
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000)
}

function shouldUpgrade() payable {
    if not nextImplementationTimestamp:
        return bool(nextImplementationTimestamp), address(nextImplementationAddress)
    if block.timestamp <= nextImplementationTimestamp:
        return block.timestamp > nextImplementationTimestamp, address(nextImplementationAddress)
    return not not address(nextImplementationAddress), address(nextImplementationAddress)
}

function governance() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function finalizeUpgrade() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    uint256(storD2E4) = 0
    nextImplementationTimestamp = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    uint256(storA7EC) = arg1
}

function scheduleUpgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    uint256(storD2E4) = arg1
    if nextImplementationDelay + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    nextImplementationTimestamp = nextImplementationDelay + block.timestamp
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function removeSet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    sets[arg1].field_0 = 0
    sets[arg1].field_256 = 0
    idx = 0
    while 2 * sets[arg1].field_256 > idx:
        sets[arg1][idx + 1].field_0 = 0
        sets[arg1][idx + 1].field_256 = 0
        idx = idx + 2
        continue 
    sets[arg1].field_512 = 0
    emit SetRemoved(arg1);
}

function sub_3af1ae4d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 3
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require arg2 <= 2
    if arg2 != 1:
        require arg2 <= 2
        if arg2 != 2:
            revert with 0, 'incorrect kind'
    if sub_766f451f + 1 < sub_766f451f:
        revert with 0, 'SafeMath: addition overflow'
    sub_766f451f++
    sets[stor101 + 1].field_512 = arg1
    require arg2 <= 2
    sets[stor101 + 1].field_0 = arg2 or Mask(248, 8, sets[stor101 + 1].field_0)
    require arg2 < 3
    emit 0xa6d5e88b: arg2, arg1, sub_766f451f + 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(storA7EC) = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storA7EC) = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(storA7EC) = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint256(storA7EC) = arg1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function getSet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[0] = arg1
    mem[32] = 105
    require sets[arg1].field_0 <= 2
    mem[192] = sets[arg1].field_0
    mem[64] = (32 * sets[arg1].field_256) + 320
    mem[288] = sets[arg1].field_256
    s = 320
    idx = 0
    while idx < sets[arg1].field_256:
        mem[0] = sha3(arg1, 105) + 1
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sets', 105)))].field_0
        mem[_17 + 32] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sets', 105)))].field_256
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    mem[224] = 288
    mem[256] = sets[arg1].field_512
    _18 = mem[64]
    mem[mem[64]] = 32
    require mem[192] < 3
    mem[mem[64] + 32] = mem[192]
    mem[mem[64] + 64] = 96
    _21 = mem[288]
    mem[mem[64] + 128] = mem[288]
    s = mem[64] + 160
    idx = 0
    t = 320
    while idx < _21:
        _28 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_28 + 32]
        s = s + 64
        idx = idx + 1
        t = t + 32
        continue 
    mem[_18 + 96] = mem[256]
    return memory
      from mem[64]
       len _18 + (64 * _21) + -mem[64] + 160
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        uint256(storA7EC) = arg1
        nftAddress = arg2
        sub_d02d6941Address = arg3
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storA7EC) = arg1
            nftAddress = arg2
            sub_d02d6941Address = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(storA7EC) = arg1
                nftAddress = arg2
                sub_d02d6941Address = arg3
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    uint256(storA7EC) = arg1
                    nftAddress = arg2
                    sub_d02d6941Address = arg3
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint256(storA7EC) = arg1
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    nftAddress = arg2
                    sub_d02d6941Address = arg3
                    uint8(stor0.field_8) = 0
}

function sub_a25a88a5(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 164] = msg.sender
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'arrays do not match'
    mem[0] = cd[4]
    mem[32] = 105
    require sets[cd[4]].field_0 <= 2
    if not sets[cd[4]].field_0:
        revert with 0, 'unknown set'
    idx = 0
    while idx < ('cd', 36).length:
        _89 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_89] = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[_89 + 32] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        sets[cd[4]].field_256++
        mem[0] = sha3(cd[4], 105) + 1
        stor[(2 * sets[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'sets', 105)))].field_0 = mem[_89]
        stor[(2 * sets[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'sets', 105)))].field_256 = mem[_89 + 32]
        idx = idx + 1
        continue 
    _88 = mem[64]
    mem[mem[64]] = 64
    _93 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _103 = mem[(32 * ('cd', 36).length) + 128]
    mem[_88 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 36).length) + 128]
    mem[_88 + (32 * _93) + 128 len 32 * _103] = mem[(32 * ('cd', 36).length) + 160 len 32 * _103]
    emit NftAdded(uint256 arg1, uint256[] arg2, uint256[] arg3):
                  mem[mem[64] len _88 + (32 * _93) + (32 * _103) + -mem[64] + 128],
                  cd[4],
}

function openSetFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require sets[arg2].field_0 <= 2
    if sets[arg2].field_0 != 1:
        revert with 0, 'kind incorrect'
    if not sets[arg2].field_256:
        revert with 0, 'no items'
    require ext_code.size(sub_d02d6941Address)
    staticcall sub_d02d6941Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sets[arg2].field_512:
        revert with 0, 'not enough LANTTI to redeem nft'
    if stor106[address(arg1)]:
        stor106[address(arg1)] = sha3(stor106[address(arg1)], block.timestamp)
        require sets[arg2].field_256
        require sha3(stor106[address(arg1)], block.timestamp) % sets[arg2].field_256 < sets[arg2].field_256
        if not stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256:
            revert with 0, 'not enough items'
        mem[ceil32(return_data.size) + 324] = stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        require ext_code.size(nftAddress)
        staticcall nftAddress.maxSupply(uint256 arg1) with:
                gas gas_remaining wei
               args stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 324] = stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        require ext_code.size(nftAddress)
        staticcall nftAddress.totalSupply(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 324] = 32
            mem[(4 * ceil32(return_data.size)) + 356] = 27
            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + 320
               len (5 * ceil32(return_data.size)) + 100
        if ext_call.return_data[0] + 1 > ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 324] = 32
            mem[(4 * ceil32(return_data.size)) + 356] = 15
            mem[(4 * ceil32(return_data.size)) + 388] = 0x6d6178206e667473206d696e7465640000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 320
               len (5 * ceil32(return_data.size)) + 100
        if 1 > stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256 - 1:
            require sha3(stor106[address(arg1)], block.timestamp) % sets[arg2].field_256 < sets[arg2].field_256
            stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256--
        else:
            require sets[arg2].field_256 - 1 < sets[arg2].field_256
            require sha3(stor106[address(arg1)], block.timestamp) % sets[arg2].field_256 < sets[arg2].field_256
            stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0 = stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
            stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256 = stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256
            require sets[arg2].field_256
            stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0 = 0
            stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256 = 0
            sets[arg2].field_256--
        mem[(4 * ceil32(return_data.size)) + 388] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 420] = sets[arg2].field_512
        require ext_code.size(sub_d02d6941Address)
        call sub_d02d6941Address.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 388] = stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        require ext_code.size(nftAddress)
        staticcall nftAddress.isNonFungible(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(nftAddress)
            call nftAddress.0x94a1849a with:
                 gas gas_remaining wei
                args address(arg1), stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0, 96, 0, mem[(6 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_2fa951ab[address(arg1)] = ext_call.return_data[0]
            emit NftRedeemed(stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0, sets[arg2].field_512, arg1, arg2);
        else:
            mem[(6 * ceil32(return_data.size)) + 420] = stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
            mem[(6 * ceil32(return_data.size)) + 452] = 1
            mem[(6 * ceil32(return_data.size)) + 484] = 128
            mem[(6 * ceil32(return_data.size)) + 516] = 0
            require ext_code.size(nftAddress)
            call nftAddress.0xdb53ae with:
                 gas gas_remaining wei
                args address(arg1), stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0, 1, 128, 0, mem[(6 * ceil32(return_data.size)) + 548 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_2fa951ab[address(arg1)] = stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
            emit NftRedeemed(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                             stor[(2 * ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor106', 106))), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0,
                             sets[arg2].field_512,
                             mem[(6 * ceil32(return_data.size)) + 448 len 9 * ceil32(return_data.size)],
                             arg1,
                             arg2,
    else:
        stor106[address(arg1)] = sha3(sha3(arg1, block.timestamp), block.timestamp)
        require sets[arg2].field_256
        require sha3(sha3(arg1, block.timestamp), block.timestamp) % sets[arg2].field_256 < sets[arg2].field_256
        if not stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256:
            revert with 0, 'not enough items'
        mem[ceil32(return_data.size) + 408] = stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        require ext_code.size(nftAddress)
        staticcall nftAddress.maxSupply(uint256 arg1) with:
                gas gas_remaining wei
               args stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        mem[ceil32(return_data.size) + 404] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 408] = stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        require ext_code.size(nftAddress)
        staticcall nftAddress.totalSupply(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 408 len ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 404] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 404] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 408] = 32
            mem[(4 * ceil32(return_data.size)) + 440] = 27
            mem[(4 * ceil32(return_data.size)) + 472] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + 404
               len (5 * ceil32(return_data.size)) + 100
        if ext_call.return_data[0] + 1 > ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 404] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 408] = 32
            mem[(4 * ceil32(return_data.size)) + 440] = 15
            mem[(4 * ceil32(return_data.size)) + 472] = 0x6d6178206e667473206d696e7465640000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 404
               len (5 * ceil32(return_data.size)) + 100
        if 1 > stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256 - 1:
            require sha3(sha3(arg1, block.timestamp), block.timestamp) % sets[arg2].field_256 < sets[arg2].field_256
            stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256--
        else:
            require sets[arg2].field_256 - 1 < sets[arg2].field_256
            require sha3(sha3(arg1, block.timestamp), block.timestamp) % sets[arg2].field_256 < sets[arg2].field_256
            stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0 = stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
            stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256 = stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256
            require sets[arg2].field_256
            stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0 = 0
            stor[(2 * sets[arg2].field_256 - 1) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_256 = 0
            sets[arg2].field_256--
        mem[(4 * ceil32(return_data.size)) + 472] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 504] = sets[arg2].field_512
        require ext_code.size(sub_d02d6941Address)
        call sub_d02d6941Address.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 472 len (5 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 472] = stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
        require ext_code.size(nftAddress)
        staticcall nftAddress.isNonFungible(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 472 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(nftAddress)
            call nftAddress.0x94a1849a with:
                 gas gas_remaining wei
                args address(arg1), stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0, 96, 0, mem[(6 * ceil32(return_data.size)) + 600 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_2fa951ab[address(arg1)] = ext_call.return_data[0]
            emit NftRedeemed(stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0, sets[arg2].field_512, arg1, arg2);
        else:
            mem[(6 * ceil32(return_data.size)) + 504] = stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
            mem[(6 * ceil32(return_data.size)) + 536] = 1
            mem[(6 * ceil32(return_data.size)) + 568] = 128
            mem[(6 * ceil32(return_data.size)) + 600] = 0
            require ext_code.size(nftAddress)
            call nftAddress.0xdb53ae with:
                 gas gas_remaining wei
                args address(arg1), stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0, 1, 128, 0, mem[(6 * ceil32(return_data.size)) + 632 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_2fa951ab[address(arg1)] = stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0
            emit NftRedeemed(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                             stor[(2 * ('map', ('map', ('param', 'arg1'), 'timestamp'), 'timestamp') % sets[arg2].field_256) + ('array', 1, ('map', ('param', 'arg2'), ('name', 'sets', 105)))].field_0,
                             sets[arg2].field_512,
                             mem[(6 * ceil32(return_data.size)) + 532 len 9 * ceil32(return_data.size)],
                             arg1,
                             arg2,
}



}
