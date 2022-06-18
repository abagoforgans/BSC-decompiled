contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - sub_7b35eb50(?)
#  - fight(uint256 arg1, uint256 arg2)
#
address owner;
address configAddress;
uint256 stor2;
mapping of struct stor3;
array of uint256 stor4;
array of struct stor5;
mapping of uint256 stor6;
uint256 stor7;
mapping of struct stor8;
array of struct stor9;
mapping of uint256 balanceOf;
mapping of uint256 sub_ca69ffbc;
mapping of uint256 stor12;

function isMiner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function balanceOf() payable {
    return balanceOf[address(msg.sender)]
}

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function sub_ca69ffbc(?) payable {
    return sub_ca69ffbc[address(msg.sender)]
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

function setConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    configAddress = arg1
    emit 0x6ce0ffc2: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addMiner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
        emit 0x779548af: arg1
}

function removeMiner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        require stor5.length - 1 < stor5.length
        require stor6[address(arg1)] - 1 < stor5.length
        stor5[stor6[address(arg1)]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
        require stor5.length
        stor5[stor5.length].field_0 = 0
        stor5.length--
        stor6[address(arg1)] = 0
        emit 0x8bafecc0: arg1
}

function sub_803d96f9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0xf1b78453 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / ext_call.return_data[0]) <= stor8[arg1].field_768:
        return (stor8[arg1].field_768 - stor8[arg1].field_512 - ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / ext_call.return_data[0]) / 1000 * ext_call.return_data[0])
    else:
        return 0
}

function sub_b2cf6c59(?) payable {
    require ext_code.size(configAddress)
    staticcall configAddress.0x1f83dcd7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    idx = 0
    s = 0
    while idx < ext_call.return_data[31 len 1]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 9) + 3
        if stor9[address(msg.sender)][3][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return ext_call.return_data[31 len 1], s
}

function getFeeRate() payable {
    if stor12[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - stor12[address(msg.sender)] / 24 * 3600:
        return 160000
    if 20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 / block.timestamp - stor12[address(msg.sender)] / 24 * 3600 != 20000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 >= 160000:
        return 0
    if 20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 > 160000:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((-20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600) + 160000)
}

function sub_d830f9d3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0xf1b78453 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / ext_call.return_data[0]) <= stor8[arg1].field_768:
        if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / ext_call.return_data[0]) == stor8[arg1].field_768:
            return 0
    else:
        if stor8[arg1].field_768 == stor8[arg1].field_768:
            return 0
    require ext_call.return_data[0]
    return (block.timestamp - stor8[arg1].field_1792 % ext_call.return_data[0])
}

function sub_1633da6e(?) payable {
    require stor5.length <= test266151307()
    if not stor5.length:
        if var30002 >= stor5.length:
            mem[(32 * stor5.length) + 128] = 32
            mem[(32 * stor5.length) + 160] = stor5.length
            idx = 0
            s = (32 * stor5.length) + 192
            t = 128
            while idx < stor5.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor5.length) + 128
               len (96 * stor5.length) + 64
        if var36001 >= stor5.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var38002 < stor5.length
        require var44002 < stor5.length
        mem[(32 * var46001) + 128] = address(var46003)
        if var56002 < stor5.length:
            # nil
        else:
            mem[(32 * stor5.length) + 128] = 32
            mem[(32 * stor5.length) + 160] = stor5.length
            idx = 0
            s = (32 * stor5.length) + 192
            t = 128
            while idx < stor5.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor5.length) + 128
               len (96 * stor5.length) + 64
    else:
        mem[128 len 32 * stor5.length] = call.data[calldata.size len 32 * stor5.length]
        if var31002 >= stor5.length:
            mem[(32 * stor5.length) + 128] = 32
            mem[(32 * stor5.length) + 160] = stor5.length
            idx = 0
            s = (32 * stor5.length) + 192
            t = 128
            while idx < stor5.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor5.length) + 128
               len (96 * stor5.length) + 64
        if var37001 >= stor5.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var39002 < stor5.length
        require var45002 < stor5.length
        mem[(32 * var47001) + 128] = address(var47003)
        if var57002 < stor5.length:
            # nil
        else:
            mem[(32 * stor5.length) + 128] = 32
            mem[(32 * stor5.length) + 160] = stor5.length
            idx = 0
            s = (32 * stor5.length) + 192
            t = 128
            while idx < stor5.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor5.length) + 128
               len (96 * stor5.length) + 64
}

function calcFee() payable {
    if stor12[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - stor12[address(msg.sender)] / 24 * 3600:
        require ext_code.size(configAddress)
        staticcall configAddress.0x190eaaba with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not balanceOf[address(msg.sender)]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if 160000 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] != 160000:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (160000 * balanceOf[address(msg.sender)] / ext_call.return_data[0])
    else:
        if 20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 / block.timestamp - stor12[address(msg.sender)] / 24 * 3600 != 20000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 >= 160000:
            require ext_code.size(configAddress)
            staticcall configAddress.0x190eaaba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if balanceOf[address(msg.sender)]:
                if 0 / balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if 20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 > 160000:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.0x190eaaba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not balanceOf[address(msg.sender)]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if (160000 * balanceOf[address(msg.sender)]) - (20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (-20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600) + 160000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return ((160000 * balanceOf[address(msg.sender)]) - (20000 * block.timestamp - stor12[address(msg.sender)] / 24 * 3600 * balanceOf[address(msg.sender)]) / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_b3106bff(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(configAddress)
    staticcall configAddress.0x88a6360e with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Game: caller is not the NFT address'
    if not stor9[address(arg1)][1][arg3].field_0:
        revert with 0, 'Game: remove fighter failed'
    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
    require stor9[address(arg1)][1][arg3].field_0 - 1 < stor9[address(arg1)].field_0
    stor9[address(arg1)][stor9[address(arg1)][1][arg3].field_0].field_0 = stor9[address(arg1)][stor9[address(arg1)].field_0].field_0
    stor9[address(arg1)][1][stor9[address(arg1)][stor9[address(arg1)].field_0].field_0].field_0 = stor9[address(arg1)][1][arg3].field_0
    require stor9[address(arg1)].field_0
    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = 0
    stor9[address(arg1)].field_0--
    stor9[address(arg1)][1][arg3].field_0 = 0
    stor9[address(arg1)][2][arg3].field_0 = 0
    mem[0] = stor9[address(arg1)][2][arg3].field_0
    mem[32] = sha3(address(arg1), 9) + 3
    stor9[address(arg1)][3][stor9[address(arg1)][2][arg3].field_0].field_0 = 0
    mem[ceil32(return_data.size) + 96] = 0x1f83dcd700000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddress)
    staticcall configAddress.mem[var49003 len 4] with:
            gas gas_remaining wei
           args mem[var49003 + 4 len var49004 - 4]
    mem[var49005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require var53002 - var53001 >= 32
    require mem[var55002] == mem[var55002 + 31 len 1]
    if var59002 >= uint8(var59001):
        revert with 0, 'Game: account not have empty index'
    mem[0] = var63001
    mem[32] = sha3(address(arg2), 9) + 3
    if not var65001:
        require ext_code.size(configAddress)
        staticcall configAddress.0x1f83dcd7 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        s = var65002
        while ext_call.success:
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_284] == mem[_284 + 31 len 1]
            if s + 1 >= mem[_284 + 31 len 1]:
                revert with 0, 'Game: account not have empty index'
            mem[0] = s + 1
            mem[32] = sha3(address(arg2), 9) + 3
            if stor9[address(arg2)][3][s + 1].field_0:
                mem[mem[64]] = 0x1f83dcd700000000000000000000000000000000000000000000000000000000
                require ext_code.size(configAddress)
                staticcall configAddress.0x1f83dcd7 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 96]
                mem[mem[64]] = ext_call.return_data[0]
                s = s + 1
                continue 
            if stor9[address(arg2)][3][s + 1].field_0:
                revert with 0, 'Game: index is not empty'
            if stor9[address(arg2)][1][arg3].field_0:
                revert with 0, 'Game: add fighter failed'
            stor9[address(arg2)].field_0++
            stor9[address(arg2)][stor9[address(arg2)].field_0].field_0 = arg3
            stor9[address(arg2)][1][arg3].field_0 = stor9[address(arg2)].field_0
            stor9[address(arg2)][2][arg3].field_0 = s + 1
            stor9[address(arg2)][3][s + 1].field_0 = arg3
            emit 0xf60acb2a: address(arg1), address(arg2), arg3
        revert with ext_call.return_data[0 len return_data.size]
    if stor9[address(arg2)][3][var65002].field_0:
        revert with 0, 'Game: index is not empty'
    if stor9[address(arg2)][1][arg3].field_0:
        revert with 0, 'Game: add fighter failed'
    stor9[address(arg2)].field_0++
    stor9[address(arg2)][stor9[address(arg2)].field_0].field_0 = arg3
    stor9[address(arg2)][1][arg3].field_0 = stor9[address(arg2)].field_0
    stor9[address(arg2)][2][arg3].field_0 = var65002
    stor9[address(arg2)][3][var65002].field_0 = arg3
    emit 0xf60acb2a: address(arg1), address(arg2), arg3
}

function sub_354b768e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _89 = mem[64]
            mem[64] = mem[64] + 352
            mem[_89] = 0
            mem[_89 + 32] = 0
            mem[_89 + 64] = 0
            mem[_89 + 96] = 0
            mem[_89 + 128] = 0
            mem[_89 + 160] = 0
            mem[_89 + 192] = 0
            mem[_89 + 224] = 0
            mem[_89 + 256] = 0
            mem[_89 + 288] = 0
            mem[_89 + 320] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 8
            _92 = mem[64]
            mem[64] = mem[64] + 352
            mem[_92] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_92 + 32] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_92 + 64] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_264
            mem[_92 + 96] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_272
            mem[_92 + 128] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_512
            mem[_92 + 160] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_768
            mem[_92 + 192] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1024
            mem[_92 + 224] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1280
            mem[_92 + 256] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1536
            mem[_92 + 288] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792
            mem[_92 + 320] = bool(stor8[cd[((32 * idx) + cd[4] + 36)]].field_2048)
            _97 = mem[64]
            mem[64] = mem[64] + 352
            mem[_97] = 0
            mem[_97 + 32] = 0
            mem[_97 + 64] = 0
            mem[_97 + 96] = 0
            mem[_97 + 128] = 0
            mem[_97 + 160] = 0
            mem[_97 + 192] = 0
            mem[_97 + 224] = 0
            mem[_97 + 256] = 0
            mem[_97 + 288] = 0
            mem[_97 + 320] = 0
            require ext_code.size(configAddress)
            staticcall configAddress.0xf1b78453 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _118 = mem[_105]
            mem[mem[64] + 4] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_264
            require ext_code.size(configAddress)
            staticcall configAddress.0xdb0952f5 with:
                    gas gas_remaining wei
                   args stor8[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _140 = mem[_129]
            require ext_code.size(configAddress)
            staticcall configAddress.0x190eaaba with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _146 = mem[_144]
            require _118
            if stor8[cd[((32 * idx) + cd[4] + 36)]].field_512 + ((1000 * block.timestamp) - (1000 * stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792) / _118) <= stor8[cd[((32 * idx) + cd[4] + 36)]].field_768:
                mem[_92 + 128] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_512 + ((1000 * block.timestamp) - (1000 * stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792) / _118)
            else:
                mem[_92 + 128] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_768
            require _146
            mem[_92 + 192] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1024 + (stor8[cd[((32 * idx) + cd[4] + 36)]].field_1024 * _140 / _146)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _92
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _90:
            _173 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_173 + 63 len 1]
            mem[t + 64] = mem[_173 + 95 len 1]
            mem[t + 96] = mem[_173 + 127 len 1]
            mem[t + 128] = mem[_173 + 128]
            mem[t + 160] = mem[_173 + 160]
            mem[t + 192] = mem[_173 + 192]
            mem[t + 224] = mem[_173 + 224]
            mem[t + 256] = mem[_173 + 256]
            mem[t + 288] = mem[_173 + 288]
            mem[t + 320] = bool(mem[_173 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _88 + (352 * _90) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 480
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[(32 * ('cd', 4).length) + 352] = 0
    mem[(32 * ('cd', 4).length) + 384] = 0
    mem[(32 * ('cd', 4).length) + 416] = 0
    mem[(32 * ('cd', 4).length) + 448] = 0
    mem[var15001] = (32 * ('cd', 4).length) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[(32 * ('cd', 4).length) + 352] = 0
        mem[(32 * ('cd', 4).length) + 384] = 0
        mem[(32 * ('cd', 4).length) + 416] = 0
        mem[(32 * ('cd', 4).length) + 448] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _229 = mem[64]
        mem[64] = mem[64] + 352
        mem[_229] = 0
        mem[_229 + 32] = 0
        mem[_229 + 64] = 0
        mem[_229 + 96] = 0
        mem[_229 + 128] = 0
        mem[_229 + 160] = 0
        mem[_229 + 192] = 0
        mem[_229 + 224] = 0
        mem[_229 + 256] = 0
        mem[_229 + 288] = 0
        mem[_229 + 320] = 0
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        _232 = mem[64]
        mem[64] = mem[64] + 352
        mem[_232] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_232 + 32] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_232 + 64] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_264
        mem[_232 + 96] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_272
        mem[_232 + 128] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_512
        mem[_232 + 160] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_768
        mem[_232 + 192] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1024
        mem[_232 + 224] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1280
        mem[_232 + 256] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1536
        mem[_232 + 288] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792
        mem[_232 + 320] = bool(stor8[cd[((32 * idx) + cd[4] + 36)]].field_2048)
        _237 = mem[64]
        mem[64] = mem[64] + 352
        mem[_237] = 0
        mem[_237 + 32] = 0
        mem[_237 + 64] = 0
        mem[_237 + 96] = 0
        mem[_237 + 128] = 0
        mem[_237 + 160] = 0
        mem[_237 + 192] = 0
        mem[_237 + 224] = 0
        mem[_237 + 256] = 0
        mem[_237 + 288] = 0
        mem[_237 + 320] = 0
        require ext_code.size(configAddress)
        staticcall configAddress.0xf1b78453 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_242]
        mem[mem[64] + 4] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_264
        require ext_code.size(configAddress)
        staticcall configAddress.0xdb0952f5 with:
                gas gas_remaining wei
               args stor8[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _255 = mem[_254]
        require ext_code.size(configAddress)
        staticcall configAddress.0x190eaaba with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _259 = mem[_258]
        require _250
        if stor8[cd[((32 * idx) + cd[4] + 36)]].field_512 + ((1000 * block.timestamp) - (1000 * stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792) / _250) <= stor8[cd[((32 * idx) + cd[4] + 36)]].field_768:
            mem[_232 + 128] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_512 + ((1000 * block.timestamp) - (1000 * stor8[cd[((32 * idx) + cd[4] + 36)]].field_1792) / _250)
        else:
            mem[_232 + 128] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_768
        require _259
        mem[_232 + 192] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_1024 + (stor8[cd[((32 * idx) + cd[4] + 36)]].field_1024 * _255 / _259)
        require idx < mem[96]
        mem[(32 * idx) + 128] = _232
        idx = idx + 1
        continue 
    _228 = mem[64]
    mem[mem[64]] = 32
    _230 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _230:
        _270 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_270 + 63 len 1]
        mem[t + 64] = mem[_270 + 95 len 1]
        mem[t + 96] = mem[_270 + 127 len 1]
        mem[t + 128] = mem[_270 + 128]
        mem[t + 160] = mem[_270 + 160]
        mem[t + 192] = mem[_270 + 192]
        mem[t + 224] = mem[_270 + 224]
        mem[t + 256] = mem[_270 + 256]
        mem[t + 288] = mem[_270 + 288]
        mem[t + 320] = bool(mem[_270 + 320])
        idx = idx + 1
        s = s + 32
        t = t + 352
        continue 
    return memory
      from mem[64]
       len _228 + (352 * _230) + -mem[64] + 64
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 6
    if not stor6[address(msg.sender)]:
        revert with 0, 'Miner: caller is not the miner'
    require ext_code.size(configAddress)
    staticcall configAddress.0x1f83dcd7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(configAddress)
    staticcall configAddress.0x88a6360e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= uint8(ext_call.return_data[0]):
        revert with 0, 'Game: account hold is full'
    stor7++
    require ext_code.size(configAddress)
    staticcall configAddress.0x88a6360e with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96] = 0
    mem[(6 * ceil32(return_data.size)) + 128] = 0
    mem[(6 * ceil32(return_data.size)) + 160] = 0
    mem[(6 * ceil32(return_data.size)) + 192] = 0
    mem[(6 * ceil32(return_data.size)) + 224] = 0
    mem[(6 * ceil32(return_data.size)) + 256] = 0
    mem[(6 * ceil32(return_data.size)) + 288] = 0
    mem[(6 * ceil32(return_data.size)) + 320] = 0
    mem[(6 * ceil32(return_data.size)) + 352] = 0
    mem[(6 * ceil32(return_data.size)) + 384] = 0
    mem[(6 * ceil32(return_data.size)) + 416] = 0
    mem[(6 * ceil32(return_data.size)) + 448] = 0
    mem[(6 * ceil32(return_data.size)) + 480] = 0
    mem[(6 * ceil32(return_data.size)) + 512] = 0
    mem[(6 * ceil32(return_data.size)) + 544] = 0
    mem[(6 * ceil32(return_data.size)) + 576] = 0
    mem[(6 * ceil32(return_data.size)) + 608] = 0
    mem[(6 * ceil32(return_data.size)) + 640] = 0
    mem[(6 * ceil32(return_data.size)) + 672] = 0
    mem[(6 * ceil32(return_data.size)) + 704] = 0
    mem[(6 * ceil32(return_data.size)) + 736] = 0
    mem[(6 * ceil32(return_data.size)) + 768] = 0
    require ext_code.size(configAddress)
    staticcall configAddress.0xeb9ecc4b with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(configAddress)
    staticcall configAddress.0x13a9589c with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x408f556e with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 804] = 1
    require ext_code.size(configAddress)
    staticcall configAddress.0xb5d4acb0 with:
            gas gas_remaining wei
           args 1
    mem[(10 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x190eaaba with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(12 * ceil32(return_data.size)) + 800] = 0x49c10e4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddress)
    staticcall configAddress.0x49c10e41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(12 * ceil32(return_data.size)) + 800 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 800
    require return_data.size >= 32
    _49 = mem[(12 * ceil32(return_data.size)) + 800]
    require mem[(12 * ceil32(return_data.size)) + 800] <= test266151307()
    require (12 * ceil32(return_data.size)) + return_data.size + 800 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 831
    _50 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]
    require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800] <= test266151307()
    require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]) + 832 <= test266151307()
    mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]) + 832
    mem[(13 * ceil32(return_data.size)) + 800] = _50
    require return_data.size >= _49 + (32 * _50) + 32
    mem[(13 * ceil32(return_data.size)) + 832 len 32 * _50] = mem[(12 * ceil32(return_data.size)) + _49 + 832 len 32 * _50]
    require ext_code.size(configAddress)
    call configAddress.0x97a51113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 448] = stor7
    _319 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    mem[mem[64] + 52] = ext_call.return_data[0]
    mem[mem[64] + 84] = block.difficulty
    mem[mem[64] + 116] = block.number
    mem[mem[64] + 148] = block.timestamp
    _320 = mem[64]
    mem[mem[64]] = 148
    mem[64] = mem[64] + 180
    require uint8(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 480] = uint8((sha3(mem[_320 + 32 len mem[_320]]) % uint8(ext_call.return_data[0])) + 1)
    mem[_319 + 212] = address(arg1)
    mem[_319 + 232] = ext_call.return_data[0]
    mem[_319 + 264] = block.difficulty
    mem[_319 + 296] = block.number
    mem[_319 + 328] = block.timestamp
    mem[_319 + 180] = 148
    mem[64] = _319 + 360
    require ext_call.return_data[0]
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < _50:
        require uint8(idx) < _50
        if sha3(arg1, ext_call.return_data[0], block.difficulty, block.number, block.timestamp) % ext_call.return_data[0] < t:
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            t = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            continue 
        if sha3(arg1, ext_call.return_data[0], block.difficulty, block.number, block.timestamp) % ext_call.return_data[0] >= s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]:
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            t = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            continue 
        mem[(6 * ceil32(return_data.size)) + 512] = uint8(idx + 1)
        mem[(6 * ceil32(return_data.size)) + 544] = 1
        mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 672] = 0
        mem[_319 + 364] = 1
        require ext_code.size(configAddress)
        staticcall configAddress.0xfdf4083b with:
                gas gas_remaining wei
               args 1
        mem[_319 + 360] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _319 + ceil32(return_data.size) + 360
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 736] = block.timestamp
        mem[(6 * ceil32(return_data.size)) + 768] = 1
        mem[0] = stor7
        mem[32] = 8
        stor8[stor7].field_0 = stor7
        stor8[stor7].field_256 = mem[(6 * ceil32(return_data.size)) + 511 len 1]
        stor8[stor7].field_264 = uint8(idx + 1)
        stor8[stor7].field_272 = 1
        stor8[stor7].field_512 = ext_call.return_data[0]
        stor8[stor7].field_768 = ext_call.return_data[0]
        stor8[stor7].field_1024 = ext_call.return_data[0]
        stor8[stor7].field_1280 = 0
        stor8[stor7].field_1536 = ext_call.return_data[0]
        stor8[stor7].field_1792 = block.timestamp
        stor8[stor7].field_2048 = 1
        mem[_319 + ceil32(return_data.size) + 360] = 0x56e0ee0c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(configAddress)
        staticcall configAddress.mem[var181003 len 4] with:
                gas gas_remaining wei
               args mem[var181003 + 4 len var181004 - 4]
        mem[var181005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _319 + (2 * ceil32(return_data.size)) + 360
        require var185002 - var185001 >= 32
        require mem[var187002] == mem[var187002 + 31 len 1]
        if var191002 < uint8(var191001):
            stor2++
            mem[_319 + (2 * ceil32(return_data.size)) + 360] = 0x13a9589c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(configAddress)
            staticcall configAddress.mem[var203003 len 4] with:
                    gas gas_remaining wei
                   args mem[var203003 + 4 len var203004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var207002 - var207001 >= 32
            # nil
        else:
            mem[_319 + (2 * ceil32(return_data.size)) + 360] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 392] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 424] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 456] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 488] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 520] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 552] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 584] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 616] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 648] = 0
            mem[_319 + (2 * ceil32(return_data.size)) + 680] = 0
            require ext_code.size(configAddress)
            staticcall configAddress.0xf1b78453 with:
                    gas gas_remaining wei
            mem[_319 + (2 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_319 + (4 * ceil32(return_data.size)) + 716] = uint8(idx + 1)
            require ext_code.size(configAddress)
            staticcall configAddress.0xdb0952f5 with:
                    gas gas_remaining wei
                   args uint8(idx + 1)
            mem[_319 + (4 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddress)
            staticcall configAddress.0x190eaaba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[0]
            if ext_call.return_data[0] + (0 / ext_call.return_data[0]) <= ext_call.return_data[0]:
                emit 0x4e9f2670: idx + 1 << 248, 1, ext_call.return_data[0] + (0 / ext_call.return_data[0]), ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
            else:
                emit 0x4e9f2670: idx + 1 << 248, 1, ext_call.return_data[0], ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
            if stor9[address(arg1)][3][arg2].field_0:
                revert with 0, 'Game: index is not empty'
            if stor9[address(arg1)][1][stor7].field_0:
                revert with 0, 'Game: add fighter failed'
            stor9[address(arg1)].field_0++
            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = stor7
            stor9[address(arg1)][1][stor7].field_0 = stor9[address(arg1)].field_0
            stor9[address(arg1)][2][stor7].field_0 = arg2
            stor9[address(arg1)][3][arg2].field_0 = stor7
    mem[(6 * ceil32(return_data.size)) + 512] = 1
    mem[(6 * ceil32(return_data.size)) + 544] = 1
    mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 672] = 0
    mem[_319 + 364] = 1
    require ext_code.size(configAddress)
    staticcall configAddress.0xfdf4083b with:
            gas gas_remaining wei
           args 1
    mem[_319 + 360] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _319 + ceil32(return_data.size) + 360
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 736] = block.timestamp
    mem[(6 * ceil32(return_data.size)) + 768] = 1
    mem[0] = stor7
    mem[32] = 8
    stor8[stor7].field_0 = stor7
    stor8[stor7].field_256 = mem[(6 * ceil32(return_data.size)) + 511 len 1]
    stor8[stor7].field_264 = 1
    stor8[stor7].field_272 = 1
    stor8[stor7].field_512 = ext_call.return_data[0]
    stor8[stor7].field_768 = ext_call.return_data[0]
    stor8[stor7].field_1024 = ext_call.return_data[0]
    stor8[stor7].field_1280 = 0
    stor8[stor7].field_1536 = ext_call.return_data[0]
    stor8[stor7].field_1792 = block.timestamp
    stor8[stor7].field_2048 = 1
    mem[_319 + ceil32(return_data.size) + 360] = 0x56e0ee0c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddress)
    staticcall configAddress.mem[var176003 len 4] with:
            gas gas_remaining wei
           args mem[var176003 + 4 len var176004 - 4]
    mem[var176005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _319 + (2 * ceil32(return_data.size)) + 360
    require var180002 - var180001 >= 32
    require mem[var182002] == mem[var182002 + 31 len 1]
    if var186002 < uint8(var186001):
        stor2++
        mem[_319 + (2 * ceil32(return_data.size)) + 360] = 0x13a9589c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(configAddress)
        staticcall configAddress.mem[var198003 len 4] with:
                gas gas_remaining wei
               args mem[var198003 + 4 len var198004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var202002 - var202001 >= 32
        # nil
    else:
        mem[_319 + (2 * ceil32(return_data.size)) + 360] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 392] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 424] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 456] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 488] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 520] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 552] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 584] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 616] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 648] = 0
        mem[_319 + (2 * ceil32(return_data.size)) + 680] = 0
        require ext_code.size(configAddress)
        staticcall configAddress.0xf1b78453 with:
                gas gas_remaining wei
        mem[_319 + (2 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_319 + (4 * ceil32(return_data.size)) + 716] = 1
        require ext_code.size(configAddress)
        staticcall configAddress.0xdb0952f5 with:
                gas gas_remaining wei
               args 1
        mem[_319 + (4 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(configAddress)
        staticcall configAddress.0x190eaaba with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0]
        if ext_call.return_data[0] + (0 / ext_call.return_data[0]) <= ext_call.return_data[0]:
            emit 0x4e9f2670: 1, 1, ext_call.return_data[0] + (0 / ext_call.return_data[0]), ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
        else:
            emit 0x4e9f2670: 1, 1, ext_call.return_data[0], ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
        if stor9[address(arg1)][3][arg2].field_0:
            revert with 0, 'Game: index is not empty'
        if stor9[address(arg1)][1][stor7].field_0:
            revert with 0, 'Game: add fighter failed'
        stor9[address(arg1)].field_0++
        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = stor7
        stor9[address(arg1)][1][stor7].field_0 = stor9[address(arg1)].field_0
        stor9[address(arg1)][2][stor7].field_0 = arg2
        stor9[address(arg1)][3][arg2].field_0 = stor7
}

function sub_ee0d13d7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[arg1].field_272 = uint8(stor8[arg1].field_272 + 1)
    mem[131 len 1] = uint8(stor8[arg1].field_272 + 1)
    mem[100 len 31] = 0
    require ext_code.size(configAddress)
    staticcall configAddress.0xb5d4acb0 with:
            gas gas_remaining wei
           args 0, uint8(stor8[arg1].field_272 + 1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8[arg1].field_1024 = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = stor8[arg1].field_272
    require ext_code.size(configAddress)
    staticcall configAddress.0xfdf4083b with:
            gas gas_remaining wei
           args stor8[arg1].field_272
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    stor8[arg1].field_1536 = ext_call.return_data[0]
    mem[0] = stor8[arg1].field_0
    mem[32] = 4
    if var67002 >= stor4[stor8[arg1].field_0]:
        require ext_code.size(configAddress)
        staticcall configAddress.0xf1b78453 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(configAddress)
        staticcall configAddress.0xdb0952f5 with:
                gas gas_remaining wei
               args stor8[arg1].field_264
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(configAddress)
        staticcall configAddress.0x190eaaba with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[0]
        if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / ext_call.return_data[0]) <= stor8[arg1].field_768:
            emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / ext_call.return_data[0]), stor8[arg1].field_1024 + (stor8[arg1].field_1024 * ext_call.return_data[0] / ext_call.return_data[0]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
        else:
            emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_768, stor8[arg1].field_1024 + (stor8[arg1].field_1024 * ext_call.return_data[0] / ext_call.return_data[0]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
    mem[(2 * ceil32(return_data.size)) + 96] = 0x13a9589c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddress)
    staticcall configAddress.mem[var71003 len 4] with:
            gas gas_remaining wei
           args mem[var71003 + 4 len var71004 - 4]
    mem[var71005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require var75002 - var75001 >= 32
    mem[var83001] = address(msg.sender)
    mem[var83001 + 20] = var83005
    mem[var83001 + 52] = block.difficulty
    mem[var83001 + 84] = block.number
    mem[var83001 + 116] = block.timestamp
    mem[(4 * ceil32(return_data.size)) + 96] = var83001 + -(4 * ceil32(return_data.size)) + 20
    mem[64] = var83001 + 148
    _2148 = sha3(mem[(4 * ceil32(return_data.size)) + 128 len var83001 + -(4 * ceil32(return_data.size)) + 20])
    require 2 * stor8[arg1].field_1024 / 10
    s = var83001 + 148
    s = var83011
    s = var83015
    idx = var83016
    while idx < stor4[stor8[arg1].field_0]:
        mem[0] = stor4[stor8[arg1].field_0][idx]
        mem[32] = 3
        stor3[stor4[stor8[arg1].field_0][idx]].field_256 = (9 * stor8[arg1].field_1024 / 10) + (_2148 % 2 * stor8[arg1].field_1024 / 10)
        if stor8[arg1].field_1024 <= (9 * stor8[arg1].field_1024 / 10) + (_2148 % 2 * stor8[arg1].field_1024 / 10):
            if (9 * stor8[arg1].field_1024 / 10) + (_2148 % 2 * stor8[arg1].field_1024 / 10) - stor8[arg1].field_1024 <= 5 * stor8[arg1].field_1024 / 100:
                stor3[stor4[stor8[arg1].field_0][idx]].field_512 = 2
                require ext_code.size(configAddress)
                call configAddress.0x97a51113 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx + 1 < stor4[stor8[arg1].field_0]:
                    require ext_code.size(configAddress)
                    staticcall configAddress.0x13a9589c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2178 = mem[_2170]
                    _2188 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _2178
                    mem[mem[64] + 84] = block.difficulty
                    mem[mem[64] + 116] = block.number
                    mem[mem[64] + 148] = block.timestamp
                    mem[mem[64]] = 148
                    mem[64] = mem[64] + 180
                    require 2 * stor8[arg1].field_1024 / 10
                    s = _2188 + 180
                    s = _2178
                    s = _2178
                    idx = idx + 1
                    continue 
                _2169 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2169] = 0
                mem[_2169 + 32] = 0
                mem[_2169 + 64] = 0
                mem[_2169 + 96] = 0
                mem[_2169 + 128] = 0
                mem[_2169 + 160] = 0
                mem[_2169 + 192] = 0
                mem[_2169 + 224] = 0
                mem[_2169 + 256] = 0
                mem[_2169 + 288] = 0
                mem[_2169 + 320] = 0
                _2171 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2171] = stor8[arg1].field_0
                mem[_2171 + 32] = stor8[arg1].field_256
                mem[_2171 + 64] = stor8[arg1].field_264
                mem[_2171 + 96] = stor8[arg1].field_272
                mem[_2171 + 128] = stor8[arg1].field_512
                mem[_2171 + 160] = stor8[arg1].field_768
                mem[_2171 + 192] = stor8[arg1].field_1024
                mem[_2171 + 224] = stor8[arg1].field_1280
                mem[_2171 + 256] = stor8[arg1].field_1536
                mem[_2171 + 288] = stor8[arg1].field_1792
                mem[_2171 + 320] = bool(stor8[arg1].field_2048)
                _2182 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2182] = 0
                mem[_2182 + 32] = 0
                mem[_2182 + 64] = 0
                mem[_2182 + 96] = 0
                mem[_2182 + 128] = 0
                mem[_2182 + 160] = 0
                mem[_2182 + 192] = 0
                mem[_2182 + 224] = 0
                mem[_2182 + 256] = 0
                mem[_2182 + 288] = 0
                mem[_2182 + 320] = 0
                require ext_code.size(configAddress)
                staticcall configAddress.0xf1b78453 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2205 = mem[_2201]
                mem[mem[64] + 4] = stor8[arg1].field_264
                require ext_code.size(configAddress)
                staticcall configAddress.0xdb0952f5 with:
                        gas gas_remaining wei
                       args stor8[arg1].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2221 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2225 = mem[_2221]
                require ext_code.size(configAddress)
                staticcall configAddress.0x190eaaba with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require _2205
                require mem[_2237]
                if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2205) <= stor8[arg1].field_768:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2205), stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2225 / mem[_2237]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
                else:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_768, stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2225 / mem[_2237]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
            else:
                stor3[stor4[stor8[arg1].field_0][idx]].field_512 = 3
                require ext_code.size(configAddress)
                call configAddress.0x97a51113 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx + 1 < stor4[stor8[arg1].field_0]:
                    require ext_code.size(configAddress)
                    staticcall configAddress.0x13a9589c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2183 = mem[_2173]
                    _2194 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _2183
                    mem[mem[64] + 84] = block.difficulty
                    mem[mem[64] + 116] = block.number
                    mem[mem[64] + 148] = block.timestamp
                    mem[mem[64]] = 148
                    mem[64] = mem[64] + 180
                    require 2 * stor8[arg1].field_1024 / 10
                    s = _2194 + 180
                    s = _2183
                    s = _2183
                    idx = idx + 1
                    continue 
                _2172 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2172] = 0
                mem[_2172 + 32] = 0
                mem[_2172 + 64] = 0
                mem[_2172 + 96] = 0
                mem[_2172 + 128] = 0
                mem[_2172 + 160] = 0
                mem[_2172 + 192] = 0
                mem[_2172 + 224] = 0
                mem[_2172 + 256] = 0
                mem[_2172 + 288] = 0
                mem[_2172 + 320] = 0
                _2179 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2179] = stor8[arg1].field_0
                mem[_2179 + 32] = stor8[arg1].field_256
                mem[_2179 + 64] = stor8[arg1].field_264
                mem[_2179 + 96] = stor8[arg1].field_272
                mem[_2179 + 128] = stor8[arg1].field_512
                mem[_2179 + 160] = stor8[arg1].field_768
                mem[_2179 + 192] = stor8[arg1].field_1024
                mem[_2179 + 224] = stor8[arg1].field_1280
                mem[_2179 + 256] = stor8[arg1].field_1536
                mem[_2179 + 288] = stor8[arg1].field_1792
                mem[_2179 + 320] = bool(stor8[arg1].field_2048)
                _2189 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2189] = 0
                mem[_2189 + 32] = 0
                mem[_2189 + 64] = 0
                mem[_2189 + 96] = 0
                mem[_2189 + 128] = 0
                mem[_2189 + 160] = 0
                mem[_2189 + 192] = 0
                mem[_2189 + 224] = 0
                mem[_2189 + 256] = 0
                mem[_2189 + 288] = 0
                mem[_2189 + 320] = 0
                require ext_code.size(configAddress)
                staticcall configAddress.0xf1b78453 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2208 = mem[_2202]
                mem[mem[64] + 4] = stor8[arg1].field_264
                require ext_code.size(configAddress)
                staticcall configAddress.0xdb0952f5 with:
                        gas gas_remaining wei
                       args stor8[arg1].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2228 = mem[_2222]
                require ext_code.size(configAddress)
                staticcall configAddress.0x190eaaba with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require _2208
                require mem[_2238]
                if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2208) <= stor8[arg1].field_768:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2208), stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2228 / mem[_2238]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
                else:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_768, stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2228 / mem[_2238]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
        else:
            if stor8[arg1].field_1024 - (9 * stor8[arg1].field_1024 / 10) - (_2148 % 2 * stor8[arg1].field_1024 / 10) <= 5 * stor8[arg1].field_1024 / 100:
                stor3[stor4[stor8[arg1].field_0][idx]].field_512 = 1
                require ext_code.size(configAddress)
                call configAddress.0x97a51113 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx + 1 < stor4[stor8[arg1].field_0]:
                    require ext_code.size(configAddress)
                    staticcall configAddress.0x13a9589c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2184 = mem[_2175]
                    _2197 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _2184
                    mem[mem[64] + 84] = block.difficulty
                    mem[mem[64] + 116] = block.number
                    mem[mem[64] + 148] = block.timestamp
                    mem[mem[64]] = 148
                    mem[64] = mem[64] + 180
                    require 2 * stor8[arg1].field_1024 / 10
                    s = _2197 + 180
                    s = _2184
                    s = _2184
                    idx = idx + 1
                    continue 
                _2174 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2174] = 0
                mem[_2174 + 32] = 0
                mem[_2174 + 64] = 0
                mem[_2174 + 96] = 0
                mem[_2174 + 128] = 0
                mem[_2174 + 160] = 0
                mem[_2174 + 192] = 0
                mem[_2174 + 224] = 0
                mem[_2174 + 256] = 0
                mem[_2174 + 288] = 0
                mem[_2174 + 320] = 0
                _2180 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2180] = stor8[arg1].field_0
                mem[_2180 + 32] = stor8[arg1].field_256
                mem[_2180 + 64] = stor8[arg1].field_264
                mem[_2180 + 96] = stor8[arg1].field_272
                mem[_2180 + 128] = stor8[arg1].field_512
                mem[_2180 + 160] = stor8[arg1].field_768
                mem[_2180 + 192] = stor8[arg1].field_1024
                mem[_2180 + 224] = stor8[arg1].field_1280
                mem[_2180 + 256] = stor8[arg1].field_1536
                mem[_2180 + 288] = stor8[arg1].field_1792
                mem[_2180 + 320] = bool(stor8[arg1].field_2048)
                _2190 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2190] = 0
                mem[_2190 + 32] = 0
                mem[_2190 + 64] = 0
                mem[_2190 + 96] = 0
                mem[_2190 + 128] = 0
                mem[_2190 + 160] = 0
                mem[_2190 + 192] = 0
                mem[_2190 + 224] = 0
                mem[_2190 + 256] = 0
                mem[_2190 + 288] = 0
                mem[_2190 + 320] = 0
                require ext_code.size(configAddress)
                staticcall configAddress.0xf1b78453 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2209 = mem[_2203]
                mem[mem[64] + 4] = stor8[arg1].field_264
                require ext_code.size(configAddress)
                staticcall configAddress.0xdb0952f5 with:
                        gas gas_remaining wei
                       args stor8[arg1].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2229 = mem[_2223]
                require ext_code.size(configAddress)
                staticcall configAddress.0x190eaaba with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require _2209
                require mem[_2239]
                if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2209) <= stor8[arg1].field_768:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2209), stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2229 / mem[_2239]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
                else:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_768, stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2229 / mem[_2239]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
            else:
                stor3[stor4[stor8[arg1].field_0][idx]].field_512 = 0
                require ext_code.size(configAddress)
                call configAddress.0x97a51113 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx + 1 < stor4[stor8[arg1].field_0]:
                    require ext_code.size(configAddress)
                    staticcall configAddress.0x13a9589c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2185 = mem[_2177]
                    _2200 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _2185
                    mem[mem[64] + 84] = block.difficulty
                    mem[mem[64] + 116] = block.number
                    mem[mem[64] + 148] = block.timestamp
                    mem[mem[64]] = 148
                    mem[64] = mem[64] + 180
                    require 2 * stor8[arg1].field_1024 / 10
                    s = _2200 + 180
                    s = _2185
                    s = _2185
                    idx = idx + 1
                    continue 
                _2176 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2176] = 0
                mem[_2176 + 32] = 0
                mem[_2176 + 64] = 0
                mem[_2176 + 96] = 0
                mem[_2176 + 128] = 0
                mem[_2176 + 160] = 0
                mem[_2176 + 192] = 0
                mem[_2176 + 224] = 0
                mem[_2176 + 256] = 0
                mem[_2176 + 288] = 0
                mem[_2176 + 320] = 0
                _2181 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2181] = stor8[arg1].field_0
                mem[_2181 + 32] = stor8[arg1].field_256
                mem[_2181 + 64] = stor8[arg1].field_264
                mem[_2181 + 96] = stor8[arg1].field_272
                mem[_2181 + 128] = stor8[arg1].field_512
                mem[_2181 + 160] = stor8[arg1].field_768
                mem[_2181 + 192] = stor8[arg1].field_1024
                mem[_2181 + 224] = stor8[arg1].field_1280
                mem[_2181 + 256] = stor8[arg1].field_1536
                mem[_2181 + 288] = stor8[arg1].field_1792
                mem[_2181 + 320] = bool(stor8[arg1].field_2048)
                _2191 = mem[64]
                mem[64] = mem[64] + 352
                mem[_2191] = 0
                mem[_2191 + 32] = 0
                mem[_2191 + 64] = 0
                mem[_2191 + 96] = 0
                mem[_2191 + 128] = 0
                mem[_2191 + 160] = 0
                mem[_2191 + 192] = 0
                mem[_2191 + 224] = 0
                mem[_2191 + 256] = 0
                mem[_2191 + 288] = 0
                mem[_2191 + 320] = 0
                require ext_code.size(configAddress)
                staticcall configAddress.0xf1b78453 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2210 = mem[_2204]
                mem[mem[64] + 4] = stor8[arg1].field_264
                require ext_code.size(configAddress)
                staticcall configAddress.0xdb0952f5 with:
                        gas gas_remaining wei
                       args stor8[arg1].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2230 = mem[_2224]
                require ext_code.size(configAddress)
                staticcall configAddress.0x190eaaba with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require _2210
                require mem[_2240]
                if stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2210) <= stor8[arg1].field_768:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_512 + ((1000 * block.timestamp) - (1000 * stor8[arg1].field_1792) / _2210), stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2230 / mem[_2240]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
                else:
                    emit 0xfd3e155b: stor8[arg1].field_256, stor8[arg1].field_256, stor8[arg1].field_768, stor8[arg1].field_1024 + (stor8[arg1].field_1024 * _2230 / mem[_2240]), stor8[arg1].field_1280, msg.sender, stor8[arg1].field_0, stor8[arg1].field_256
    revert with 0, 'EnumerableSet: index out of bounds'
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 6
    if not stor6[address(msg.sender)]:
        revert with 0, 'Miner: caller is not the miner'
    require ext_code.size(configAddress)
    staticcall configAddress.0x1f83dcd7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(configAddress)
    staticcall configAddress.0x88a6360e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= uint8(ext_call.return_data[0]):
        revert with 0, 'Game: account hold is full'
    stor7++
    require ext_code.size(configAddress)
    staticcall configAddress.0x88a6360e with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96] = 0
    mem[(6 * ceil32(return_data.size)) + 128] = 0
    mem[(6 * ceil32(return_data.size)) + 160] = 0
    mem[(6 * ceil32(return_data.size)) + 192] = 0
    mem[(6 * ceil32(return_data.size)) + 224] = 0
    mem[(6 * ceil32(return_data.size)) + 256] = 0
    mem[(6 * ceil32(return_data.size)) + 288] = 0
    mem[(6 * ceil32(return_data.size)) + 320] = 0
    mem[(6 * ceil32(return_data.size)) + 352] = 0
    mem[(6 * ceil32(return_data.size)) + 384] = 0
    mem[(6 * ceil32(return_data.size)) + 416] = 0
    mem[(6 * ceil32(return_data.size)) + 448] = 0
    mem[(6 * ceil32(return_data.size)) + 480] = 0
    mem[(6 * ceil32(return_data.size)) + 512] = 0
    mem[(6 * ceil32(return_data.size)) + 544] = 0
    mem[(6 * ceil32(return_data.size)) + 576] = 0
    mem[(6 * ceil32(return_data.size)) + 608] = 0
    mem[(6 * ceil32(return_data.size)) + 640] = 0
    mem[(6 * ceil32(return_data.size)) + 672] = 0
    mem[(6 * ceil32(return_data.size)) + 704] = 0
    mem[(6 * ceil32(return_data.size)) + 736] = 0
    mem[(6 * ceil32(return_data.size)) + 768] = 0
    require ext_code.size(configAddress)
    staticcall configAddress.0xeb9ecc4b with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(configAddress)
    staticcall configAddress.0x13a9589c with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x408f556e with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 804] = 1
    require ext_code.size(configAddress)
    staticcall configAddress.0xb5d4acb0 with:
            gas gas_remaining wei
           args 1
    mem[(10 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x190eaaba with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(12 * ceil32(return_data.size)) + 800] = 0x49c10e4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddress)
    staticcall configAddress.0x49c10e41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(12 * ceil32(return_data.size)) + 800 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 800
    require return_data.size >= 32
    _49 = mem[(12 * ceil32(return_data.size)) + 800]
    require mem[(12 * ceil32(return_data.size)) + 800] <= test266151307()
    require (12 * ceil32(return_data.size)) + return_data.size + 800 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 831
    _50 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]
    require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800] <= test266151307()
    require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]) + 832 <= test266151307()
    mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 800] + 800]) + 832
    mem[(13 * ceil32(return_data.size)) + 800] = _50
    require return_data.size >= _49 + (32 * _50) + 32
    mem[(13 * ceil32(return_data.size)) + 832 len 32 * _50] = mem[(12 * ceil32(return_data.size)) + _49 + 832 len 32 * _50]
    require ext_code.size(configAddress)
    call configAddress.0x97a51113 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 448] = stor7
    _337 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    mem[mem[64] + 52] = ext_call.return_data[0]
    mem[mem[64] + 84] = block.difficulty
    mem[mem[64] + 116] = block.number
    mem[mem[64] + 148] = block.timestamp
    _338 = mem[64]
    mem[mem[64]] = 148
    mem[64] = mem[64] + 180
    require uint8(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 480] = uint8((sha3(mem[_338 + 32 len mem[_338]]) % uint8(ext_call.return_data[0])) + 1)
    mem[_337 + 212] = address(arg1)
    mem[_337 + 232] = ext_call.return_data[0]
    mem[_337 + 264] = block.difficulty
    mem[_337 + 296] = block.number
    mem[_337 + 328] = block.timestamp
    mem[_337 + 180] = 148
    mem[64] = _337 + 360
    require ext_call.return_data[0]
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < _50:
        require uint8(idx) < _50
        if sha3(arg1, ext_call.return_data[0], block.difficulty, block.number, block.timestamp) % ext_call.return_data[0] < t:
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            t = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            continue 
        if sha3(arg1, ext_call.return_data[0], block.difficulty, block.number, block.timestamp) % ext_call.return_data[0] >= s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]:
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            t = s + mem[(32 * uint8(idx)) + (13 * ceil32(return_data.size)) + 832]
            continue 
        mem[(6 * ceil32(return_data.size)) + 512] = uint8(idx + 1)
        mem[(6 * ceil32(return_data.size)) + 544] = 1
        mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 672] = 0
        mem[_337 + 364] = 1
        require ext_code.size(configAddress)
        staticcall configAddress.0xfdf4083b with:
                gas gas_remaining wei
               args 1
        mem[_337 + 360] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _337 + ceil32(return_data.size) + 360
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 736] = block.timestamp
        mem[(6 * ceil32(return_data.size)) + 768] = 1
        mem[0] = stor7
        mem[32] = 8
        stor8[stor7].field_0 = stor7
        stor8[stor7].field_256 = mem[(6 * ceil32(return_data.size)) + 511 len 1]
        stor8[stor7].field_264 = uint8(idx + 1)
        stor8[stor7].field_272 = 1
        stor8[stor7].field_512 = ext_call.return_data[0]
        stor8[stor7].field_768 = ext_call.return_data[0]
        stor8[stor7].field_1024 = ext_call.return_data[0]
        stor8[stor7].field_1280 = 0
        stor8[stor7].field_1536 = ext_call.return_data[0]
        stor8[stor7].field_1792 = block.timestamp
        stor8[stor7].field_2048 = 1
        mem[_337 + ceil32(return_data.size) + 360] = 0x56e0ee0c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(configAddress)
        staticcall configAddress.mem[var181003 len 4] with:
                gas gas_remaining wei
               args mem[var181003 + 4 len var181004 - 4]
        mem[var181005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _337 + (2 * ceil32(return_data.size)) + 360
        require var185002 - var185001 >= 32
        require mem[var187002] == mem[var187002 + 31 len 1]
        if var191002 < uint8(var191001):
            stor2++
            mem[_337 + (2 * ceil32(return_data.size)) + 360] = 0x13a9589c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(configAddress)
            staticcall configAddress.mem[var203003 len 4] with:
                    gas gas_remaining wei
                   args mem[var203003 + 4 len var203004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var207002 - var207001 >= 32
            # nil
        else:
            mem[_337 + (2 * ceil32(return_data.size)) + 360] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 392] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 424] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 456] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 488] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 520] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 552] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 584] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 616] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 648] = 0
            mem[_337 + (2 * ceil32(return_data.size)) + 680] = 0
            require ext_code.size(configAddress)
            staticcall configAddress.0xf1b78453 with:
                    gas gas_remaining wei
            mem[_337 + (2 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_337 + (4 * ceil32(return_data.size)) + 716] = uint8(idx + 1)
            require ext_code.size(configAddress)
            staticcall configAddress.0xdb0952f5 with:
                    gas gas_remaining wei
                   args uint8(idx + 1)
            mem[_337 + (4 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddress)
            staticcall configAddress.0x190eaaba with:
                    gas gas_remaining wei
            mem[_337 + (6 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _337 + (7 * ceil32(return_data.size)) + 712
            require return_data.size >= 32
            require ext_call.return_data[0]
            if ext_call.return_data[0] + (0 / ext_call.return_data[0]) <= ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] + (0 / ext_call.return_data[0])
                require ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                mem[_337 + (7 * ceil32(return_data.size)) + 744] = 1
                mem[_337 + (7 * ceil32(return_data.size)) + 776] = ext_call.return_data[0] + (0 / ext_call.return_data[0])
                mem[_337 + (7 * ceil32(return_data.size)) + 808] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                mem[_337 + (7 * ceil32(return_data.size)) + 840] = 0
                emit 0x4e9f2670: idx + 1 << 248, 1, ext_call.return_data[0] + (0 / ext_call.return_data[0]), ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
                mem[_337 + (7 * ceil32(return_data.size)) + 712] = 0x1f83dcd700000000000000000000000000000000000000000000000000000000
                require ext_code.size(configAddress)
                staticcall configAddress.mem[var201003 len 4] with:
                        gas gas_remaining wei
                       args mem[var201003 + 4 len var201004 - 4]
                mem[var201005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _337 + (8 * ceil32(return_data.size)) + 712
                require var205002 - var205001 >= 32
                require mem[var207002] == mem[var207002 + 31 len 1]
                if var211002 >= uint8(var211001):
                    revert with 0, 'Game: account not have empty index'
                if not var217001:
                    # nil
                else:
                    if stor9[address(arg1)][3][var217002].field_0:
                        revert with 0, 'Game: index is not empty'
                    if stor9[address(arg1)][1][stor7].field_0:
                        revert with 0, 'Game: add fighter failed'
                    stor9[address(arg1)].field_0++
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = stor7
                    stor9[address(arg1)][1][stor7].field_0 = stor9[address(arg1)].field_0
                    stor9[address(arg1)][2][stor7].field_0 = var217002
                    stor9[address(arg1)][3][var217002].field_0 = stor7
            else:
                mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
                require ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                mem[_337 + (7 * ceil32(return_data.size)) + 744] = 1
                mem[_337 + (7 * ceil32(return_data.size)) + 776] = ext_call.return_data[0]
                mem[_337 + (7 * ceil32(return_data.size)) + 808] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                mem[_337 + (7 * ceil32(return_data.size)) + 840] = 0
                emit 0x4e9f2670: idx + 1 << 248, 1, ext_call.return_data[0], ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
                mem[_337 + (7 * ceil32(return_data.size)) + 712] = 0x1f83dcd700000000000000000000000000000000000000000000000000000000
                require ext_code.size(configAddress)
                staticcall configAddress.mem[var201003 len 4] with:
                        gas gas_remaining wei
                       args mem[var201003 + 4 len var201004 - 4]
                mem[var201005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _337 + (8 * ceil32(return_data.size)) + 712
                require var205002 - var205001 >= 32
                require mem[var207002] == mem[var207002 + 31 len 1]
                if var211002 >= uint8(var211001):
                    revert with 0, 'Game: account not have empty index'
                if not var217001:
                    # nil
                else:
                    if stor9[address(arg1)][3][var217002].field_0:
                        revert with 0, 'Game: index is not empty'
                    if stor9[address(arg1)][1][stor7].field_0:
                        revert with 0, 'Game: add fighter failed'
                    stor9[address(arg1)].field_0++
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = stor7
                    stor9[address(arg1)][1][stor7].field_0 = stor9[address(arg1)].field_0
                    stor9[address(arg1)][2][stor7].field_0 = var217002
                    stor9[address(arg1)][3][var217002].field_0 = stor7
    mem[(6 * ceil32(return_data.size)) + 512] = 1
    mem[(6 * ceil32(return_data.size)) + 544] = 1
    mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 672] = 0
    mem[_337 + 364] = 1
    require ext_code.size(configAddress)
    staticcall configAddress.0xfdf4083b with:
            gas gas_remaining wei
           args 1
    mem[_337 + 360] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _337 + ceil32(return_data.size) + 360
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 736] = block.timestamp
    mem[(6 * ceil32(return_data.size)) + 768] = 1
    mem[0] = stor7
    mem[32] = 8
    stor8[stor7].field_0 = stor7
    stor8[stor7].field_256 = mem[(6 * ceil32(return_data.size)) + 511 len 1]
    stor8[stor7].field_264 = 1
    stor8[stor7].field_272 = 1
    stor8[stor7].field_512 = ext_call.return_data[0]
    stor8[stor7].field_768 = ext_call.return_data[0]
    stor8[stor7].field_1024 = ext_call.return_data[0]
    stor8[stor7].field_1280 = 0
    stor8[stor7].field_1536 = ext_call.return_data[0]
    stor8[stor7].field_1792 = block.timestamp
    stor8[stor7].field_2048 = 1
    mem[_337 + ceil32(return_data.size) + 360] = 0x56e0ee0c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddress)
    staticcall configAddress.mem[var176003 len 4] with:
            gas gas_remaining wei
           args mem[var176003 + 4 len var176004 - 4]
    mem[var176005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _337 + (2 * ceil32(return_data.size)) + 360
    require var180002 - var180001 >= 32
    require mem[var182002] == mem[var182002 + 31 len 1]
    if var186002 < uint8(var186001):
        stor2++
        mem[_337 + (2 * ceil32(return_data.size)) + 360] = 0x13a9589c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(configAddress)
        staticcall configAddress.mem[var198003 len 4] with:
                gas gas_remaining wei
               args mem[var198003 + 4 len var198004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var202002 - var202001 >= 32
        # nil
    else:
        mem[_337 + (2 * ceil32(return_data.size)) + 360] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 392] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 424] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 456] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 488] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 520] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 552] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 584] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 616] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 648] = 0
        mem[_337 + (2 * ceil32(return_data.size)) + 680] = 0
        require ext_code.size(configAddress)
        staticcall configAddress.0xf1b78453 with:
                gas gas_remaining wei
        mem[_337 + (2 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_337 + (4 * ceil32(return_data.size)) + 716] = 1
        require ext_code.size(configAddress)
        staticcall configAddress.0xdb0952f5 with:
                gas gas_remaining wei
               args 1
        mem[_337 + (4 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(configAddress)
        staticcall configAddress.0x190eaaba with:
                gas gas_remaining wei
        mem[_337 + (6 * ceil32(return_data.size)) + 712] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _337 + (7 * ceil32(return_data.size)) + 712
        require return_data.size >= 32
        require ext_call.return_data[0]
        if ext_call.return_data[0] + (0 / ext_call.return_data[0]) <= ext_call.return_data[0]:
            mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] + (0 / ext_call.return_data[0])
            require ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            mem[_337 + (7 * ceil32(return_data.size)) + 744] = 1
            mem[_337 + (7 * ceil32(return_data.size)) + 776] = ext_call.return_data[0] + (0 / ext_call.return_data[0])
            mem[_337 + (7 * ceil32(return_data.size)) + 808] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            mem[_337 + (7 * ceil32(return_data.size)) + 840] = 0
            emit 0x4e9f2670: 1, 1, ext_call.return_data[0] + (0 / ext_call.return_data[0]), ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
            mem[_337 + (7 * ceil32(return_data.size)) + 712] = 0x1f83dcd700000000000000000000000000000000000000000000000000000000
            require ext_code.size(configAddress)
            staticcall configAddress.mem[var196003 len 4] with:
                    gas gas_remaining wei
                   args mem[var196003 + 4 len var196004 - 4]
            mem[var196005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _337 + (8 * ceil32(return_data.size)) + 712
            require var200002 - var200001 >= 32
            require mem[var202002] == mem[var202002 + 31 len 1]
            if var206002 >= uint8(var206001):
                revert with 0, 'Game: account not have empty index'
            if not var212001:
                # nil
            else:
                if stor9[address(arg1)][3][var212002].field_0:
                    revert with 0, 'Game: index is not empty'
                if stor9[address(arg1)][1][stor7].field_0:
                    revert with 0, 'Game: add fighter failed'
                stor9[address(arg1)].field_0++
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = stor7
                stor9[address(arg1)][1][stor7].field_0 = stor9[address(arg1)].field_0
                stor9[address(arg1)][2][stor7].field_0 = var212002
                stor9[address(arg1)][3][var212002].field_0 = stor7
        else:
            mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            require ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            mem[_337 + (7 * ceil32(return_data.size)) + 744] = 1
            mem[_337 + (7 * ceil32(return_data.size)) + 776] = ext_call.return_data[0]
            mem[_337 + (7 * ceil32(return_data.size)) + 808] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            mem[_337 + (7 * ceil32(return_data.size)) + 840] = 0
            emit 0x4e9f2670: 1, 1, ext_call.return_data[0], ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0, arg1, stor7, mem[(6 * ceil32(return_data.size)) + 511 len 1]
            mem[_337 + (7 * ceil32(return_data.size)) + 712] = 0x1f83dcd700000000000000000000000000000000000000000000000000000000
            require ext_code.size(configAddress)
            staticcall configAddress.mem[var196003 len 4] with:
                    gas gas_remaining wei
                   args mem[var196003 + 4 len var196004 - 4]
            mem[var196005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _337 + (8 * ceil32(return_data.size)) + 712
            require var200002 - var200001 >= 32
            require mem[var202002] == mem[var202002 + 31 len 1]
            if var206002 >= uint8(var206001):
                revert with 0, 'Game: account not have empty index'
            if not var212001:
                # nil
            else:
                if stor9[address(arg1)][3][var212002].field_0:
                    revert with 0, 'Game: index is not empty'
                if stor9[address(arg1)][1][stor7].field_0:
                    revert with 0, 'Game: add fighter failed'
                stor9[address(arg1)].field_0++
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = stor7
                stor9[address(arg1)][1][stor7].field_0 = stor9[address(arg1)].field_0
                stor9[address(arg1)][2][stor7].field_0 = var212002
                stor9[address(arg1)][3][var212002].field_0 = stor7
}

function sub_9fa3640b(?) payable {
    require ext_code.size(configAddress)
    staticcall configAddress.0x1f83dcd7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[31 len 1] <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[31 len 1]
        mem[64] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128
        if not uint8(ext_call.return_data[0]):
            mem[0] = msg.sender
            mem[32] = 9
            if var64002 >= stor9[address(msg.sender)].field_0:
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 32
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = ext_call.return_data[31 len 1]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192
                while idx < mem[ceil32(return_data.size) + 96]:
                    _571 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_571 + 63 len 1]
                    mem[t + 64] = mem[_571 + 95 len 1]
                    mem[t + 96] = mem[_571 + 127 len 1]
                    mem[t + 128] = mem[_571 + 128]
                    mem[t + 160] = mem[_571 + 160]
                    mem[t + 192] = mem[_571 + 192]
                    mem[t + 224] = mem[_571 + 224]
                    mem[t + 256] = mem[_571 + 256]
                    mem[t + 288] = mem[_571 + 288]
                    mem[t + 320] = bool(mem[_571 + 320])
                    idx = idx + 1
                    s = s + 32
                    t = t + 352
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + (352 * ext_call.return_data[31 len 1]) + -mem[64] + 192
            if var70001 >= stor9[address(msg.sender)].field_0:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var72002 < stor9[address(msg.sender)].field_0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 224] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 256] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 288] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 320] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 352] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 384] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 416] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 448] = 0
            mem[0] = var78001
            mem[32] = 8
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480] = stor8[var78001].field_0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 512] = stor8[var78001].field_256
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 544] = stor8[var78001].field_264
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 576] = stor8[var78001].field_272
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] = stor8[var78001].field_512
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 640] = stor8[var78001].field_768
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] = stor8[var78001].field_1024
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 704] = stor8[var78001].field_1280
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 736] = stor8[var78001].field_1536
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 768] = stor8[var78001].field_1792
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 800] = bool(stor8[var78001].field_2048)
            mem[64] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1184
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 832] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 864] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 896] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 928] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 960] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 992] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1024] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1056] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1088] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1120] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1152] = 0
            require ext_code.size(configAddress)
            staticcall configAddress.0xf1b78453 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1184] = ext_call.return_data[0]
            s = stor9[address(msg.sender)][2][var78001].field_0
            t = var78001
            u = var78003
            while ext_call.success:
                _1454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1457 = mem[_1454]
                _1459 = mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 544]
                mem[mem[64] + 4] = mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 575 len 1]
                require ext_code.size(configAddress)
                staticcall configAddress.0xdb0952f5 with:
                        gas gas_remaining wei
                       args (_1459 << 248)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1467 = mem[_1465]
                require ext_code.size(configAddress)
                staticcall configAddress.0x190eaaba with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1475 = mem[_1472]
                require _1457
                if mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] + ((1000 * block.timestamp) - (1000 * mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 768]) / _1457) <= mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 640]:
                    mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] = mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] + ((1000 * block.timestamp) - (1000 * mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 768]) / _1457)
                    require _1475
                    mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] = mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] + (mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] * _1467 / _1475)
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480
                    if u + 1 >= stor9[address(msg.sender)].field_0:
                        _1498 = mem[64]
                        mem[mem[64]] = 32
                        _1500 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        u = mem[64] + 64
                        while idx < _1500:
                            _1565 = mem[s]
                            mem[u] = mem[mem[s]]
                            mem[u + 32] = mem[_1565 + 63 len 1]
                            mem[u + 64] = mem[_1565 + 95 len 1]
                            mem[u + 96] = mem[_1565 + 127 len 1]
                            mem[u + 128] = mem[_1565 + 128]
                            mem[u + 160] = mem[_1565 + 160]
                            mem[u + 192] = mem[_1565 + 192]
                            mem[u + 224] = mem[_1565 + 224]
                            mem[u + 256] = mem[_1565 + 256]
                            mem[u + 288] = mem[_1565 + 288]
                            mem[u + 320] = bool(mem[_1565 + 320])
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 224] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 256] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 288] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 320] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 352] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 384] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 416] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 448] = 0
                            mem[0] = t
                            mem[32] = 8
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480] = stor8[t].field_0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 512] = stor8[var78001].field_256
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 544] = stor8[var78001].field_264
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 576] = stor8[var78001].field_272
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] = stor8[var78001].field_512
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 640] = stor8[var78001].field_768
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] = stor8[var78001].field_1024
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 704] = stor8[var78001].field_1280
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 736] = stor8[var78001].field_1536
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 768] = stor8[var78001].field_1792
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 800] = bool(stor8[var78001].field_2048)
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 832] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 864] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 896] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 928] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 960] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 992] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1024] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1056] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1088] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1120] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1152] = 0
                            mem[mem[64]] = 0xf1b7845300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(configAddress)
                            staticcall configAddress.0xf1b78453 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + -mem[64] + 1184]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            u = u + 352
                            continue 
                        return memory
                          from mem[64]
                           len _1498 + (352 * _1500) + -mem[64] + 64
                else:
                    mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] = mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 640]
                    require _1475
                    mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] = mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] + (mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] * _1467 / _1475)
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480
                    if u + 1 >= stor9[address(msg.sender)].field_0:
                        _1499 = mem[64]
                        mem[mem[64]] = 32
                        _1501 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        u = mem[64] + 64
                        while idx < _1501:
                            _1568 = mem[s]
                            mem[u] = mem[mem[s]]
                            mem[u + 32] = mem[_1568 + 63 len 1]
                            mem[u + 64] = mem[_1568 + 95 len 1]
                            mem[u + 96] = mem[_1568 + 127 len 1]
                            mem[u + 128] = mem[_1568 + 128]
                            mem[u + 160] = mem[_1568 + 160]
                            mem[u + 192] = mem[_1568 + 192]
                            mem[u + 224] = mem[_1568 + 224]
                            mem[u + 256] = mem[_1568 + 256]
                            mem[u + 288] = mem[_1568 + 288]
                            mem[u + 320] = bool(mem[_1568 + 320])
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 224] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 256] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 288] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 320] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 352] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 384] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 416] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 448] = 0
                            mem[0] = t
                            mem[32] = 8
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480] = stor8[t].field_0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 512] = stor8[var78001].field_256
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 544] = stor8[var78001].field_264
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 576] = stor8[var78001].field_272
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] = stor8[var78001].field_512
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 640] = stor8[var78001].field_768
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] = stor8[var78001].field_1024
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 704] = stor8[var78001].field_1280
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 736] = stor8[var78001].field_1536
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 768] = stor8[var78001].field_1792
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 800] = bool(stor8[var78001].field_2048)
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 832] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 864] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 896] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 928] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 960] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 992] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1024] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1056] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1088] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1120] = 0
                            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1152] = 0
                            mem[mem[64]] = 0xf1b7845300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(configAddress)
                            staticcall configAddress.0xf1b78453 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + -mem[64] + 1184]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            u = u + 352
                            continue 
                        return memory
                          from mem[64]
                           len _1499 + (352 * _1501) + -mem[64] + 64
                ('lt', ('add', 1, ('var', 3)), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor9', 9)))))
                mem[64] = mem[64] + 352
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 224] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 256] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 288] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 320] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 352] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 384] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 416] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 448] = 0
                mem[0] = stor9[address(msg.sender)][u].field_512
                mem[32] = 8
                mem[64] = mem[64] + 352
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480] = stor8[stor9[address(msg.sender)][u].field_512].field_0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 512] = stor8[var78001].field_256
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 544] = stor8[var78001].field_264
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 576] = stor8[var78001].field_272
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 608] = stor8[var78001].field_512
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 640] = stor8[var78001].field_768
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 672] = stor8[var78001].field_1024
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 704] = stor8[var78001].field_1280
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 736] = stor8[var78001].field_1536
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 768] = stor8[var78001].field_1792
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 800] = bool(stor8[var78001].field_2048)
                mem[64] = mem[64] + 352
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 832] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 864] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 896] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 928] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 960] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 992] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1024] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1056] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1088] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1120] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 1152] = 0
                mem[mem[64]] = 0xf1b7845300000000000000000000000000000000000000000000000000000000
                require ext_code.size(configAddress)
                staticcall configAddress.0xf1b78453 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + -mem[64] + 1184]
                mem[mem[64]] = ext_call.return_data[0]
                s = stor9[address(msg.sender)][2][stor9[address(msg.sender)][u].field_256].field_0
                t = stor9[address(msg.sender)][u].field_256
                u = u + 1
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 480
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 224] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 256] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 288] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 320] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 352] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 384] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 416] = 0
            mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 448] = 0
            mem[var14001] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128
            s = var14001
            idx = var14002
            while idx - 1:
                mem[64] = mem[64] + 352
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 160] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 192] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 224] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 256] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 288] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 320] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 352] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 384] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 416] = 0
                mem[ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 448] = 0
                mem[s + 32] = ceil32(return_data.size) + (32 * uint8(ext_call.return_data[0])) + 128
                s = s + 32
                idx = idx - 1
                continue 
            mem[0] = msg.sender
            mem[32] = 9
            if var71002 >= stor9[address(msg.sender)].field_0:
                _690 = mem[64]
                mem[mem[64]] = 32
                _692 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 64
                while idx < _692:
                    _825 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_825 + 63 len 1]
                    mem[t + 64] = mem[_825 + 95 len 1]
                    mem[t + 96] = mem[_825 + 127 len 1]
                    mem[t + 128] = mem[_825 + 128]
                    mem[t + 160] = mem[_825 + 160]
                    mem[t + 192] = mem[_825 + 192]
                    mem[t + 224] = mem[_825 + 224]
                    mem[t + 256] = mem[_825 + 256]
                    mem[t + 288] = mem[_825 + 288]
                    mem[t + 320] = bool(mem[_825 + 320])
                    idx = idx + 1
                    s = s + 32
                    t = t + 352
                    continue 
                return memory
                  from mem[64]
                   len _690 + (352 * _692) + -mem[64] + 64
            if var77001 >= stor9[address(msg.sender)].field_0:
                revert with 0, 'EnumerableSet: index out of bounds'
            require var79002 < stor9[address(msg.sender)].field_0
            mem[0] = var85001
            mem[32] = sha3(address(msg.sender), 9) + 2
            _1652 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1652] = 0
            mem[_1652 + 32] = 0
            mem[_1652 + 64] = 0
            mem[_1652 + 96] = 0
            mem[_1652 + 128] = 0
            mem[_1652 + 160] = 0
            mem[_1652 + 192] = 0
            mem[_1652 + 224] = 0
            mem[_1652 + 256] = 0
            mem[_1652 + 288] = 0
            mem[_1652 + 320] = 0
            mem[0] = var85001
            mem[32] = 8
            _1654 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1654] = stor8[var85001].field_0
            mem[_1654 + 32] = stor8[var85001].field_256
            mem[_1654 + 64] = stor8[var85001].field_264
            mem[_1654 + 96] = stor8[var85001].field_272
            mem[_1654 + 128] = stor8[var85001].field_512
            mem[_1654 + 160] = stor8[var85001].field_768
            mem[_1654 + 192] = stor8[var85001].field_1024
            mem[_1654 + 224] = stor8[var85001].field_1280
            mem[_1654 + 256] = stor8[var85001].field_1536
            mem[_1654 + 288] = stor8[var85001].field_1792
            mem[_1654 + 320] = bool(stor8[var85001].field_2048)
            _1655 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1655] = 0
            mem[_1655 + 32] = 0
            mem[_1655 + 64] = 0
            mem[_1655 + 96] = 0
            mem[_1655 + 128] = 0
            mem[_1655 + 160] = 0
            mem[_1655 + 192] = 0
            mem[_1655 + 224] = 0
            mem[_1655 + 256] = 0
            mem[_1655 + 288] = 0
            mem[_1655 + 320] = 0
            require ext_code.size(configAddress)
            staticcall configAddress.0xf1b78453 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            s = stor9[address(msg.sender)][2][var85001].field_0
            t = var85001
            u = var85003
            while ext_call.success:
                _1658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1659 = mem[_1658]
                _1660 = mem[_1654 + 64]
                mem[mem[64] + 4] = mem[_1654 + 95 len 1]
                require ext_code.size(configAddress)
                staticcall configAddress.0xdb0952f5 with:
                        gas gas_remaining wei
                       args (_1660 << 248)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1664 = mem[_1663]
                require ext_code.size(configAddress)
                staticcall configAddress.0x190eaaba with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1668 = mem[_1667]
                require _1659
                if mem[_1654 + 128] + ((1000 * block.timestamp) - (1000 * mem[_1654 + 288]) / _1659) <= mem[_1654 + 160]:
                    mem[_1654 + 128] = mem[_1654 + 128] + ((1000 * block.timestamp) - (1000 * mem[_1654 + 288]) / _1659)
                    require _1668
                    mem[_1654 + 192] = mem[_1654 + 192] + (mem[_1654 + 192] * _1664 / _1668)
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = _1654
                    if u + 1 >= stor9[address(msg.sender)].field_0:
                        _1679 = mem[64]
                        mem[mem[64]] = 32
                        _1681 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        u = mem[64] + 64
                        while idx < _1681:
                            _1713 = mem[s]
                            mem[u] = mem[mem[s]]
                            mem[u + 32] = mem[_1713 + 63 len 1]
                            mem[u + 64] = mem[_1713 + 95 len 1]
                            mem[u + 96] = mem[_1713 + 127 len 1]
                            mem[u + 128] = mem[_1713 + 128]
                            mem[u + 160] = mem[_1713 + 160]
                            mem[u + 192] = mem[_1713 + 192]
                            mem[u + 224] = mem[_1713 + 224]
                            mem[u + 256] = mem[_1713 + 256]
                            mem[u + 288] = mem[_1713 + 288]
                            mem[u + 320] = bool(mem[_1713 + 320])
                            _1652 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1652] = 0
                            mem[_1652 + 32] = 0
                            mem[_1652 + 64] = 0
                            mem[_1652 + 96] = 0
                            mem[_1652 + 128] = 0
                            mem[_1652 + 160] = 0
                            mem[_1652 + 192] = 0
                            mem[_1652 + 224] = 0
                            mem[_1652 + 256] = 0
                            mem[_1652 + 288] = 0
                            mem[_1652 + 320] = 0
                            mem[0] = t
                            mem[32] = 8
                            _1654 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1654] = stor8[t].field_0
                            mem[_1654 + 32] = stor8[var85001].field_256
                            mem[_1654 + 64] = stor8[var85001].field_264
                            mem[_1654 + 96] = stor8[var85001].field_272
                            mem[_1654 + 128] = stor8[var85001].field_512
                            mem[_1654 + 160] = stor8[var85001].field_768
                            mem[_1654 + 192] = stor8[var85001].field_1024
                            mem[_1654 + 224] = stor8[var85001].field_1280
                            mem[_1654 + 256] = stor8[var85001].field_1536
                            mem[_1654 + 288] = stor8[var85001].field_1792
                            mem[_1654 + 320] = bool(stor8[var85001].field_2048)
                            _1655 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1655] = 0
                            mem[_1655 + 32] = 0
                            mem[_1655 + 64] = 0
                            mem[_1655 + 96] = 0
                            mem[_1655 + 128] = 0
                            mem[_1655 + 160] = 0
                            mem[_1655 + 192] = 0
                            mem[_1655 + 224] = 0
                            mem[_1655 + 256] = 0
                            mem[_1655 + 288] = 0
                            mem[_1655 + 320] = 0
                            require ext_code.size(configAddress)
                            staticcall configAddress.0xf1b78453 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            u = u + 352
                            continue 
                        return memory
                          from mem[64]
                           len _1679 + (352 * _1681) + -mem[64] + 64
                else:
                    mem[_1654 + 128] = mem[_1654 + 160]
                    require _1668
                    mem[_1654 + 192] = mem[_1654 + 192] + (mem[_1654 + 192] * _1664 / _1668)
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = _1654
                    if u + 1 >= stor9[address(msg.sender)].field_0:
                        _1680 = mem[64]
                        mem[mem[64]] = 32
                        _1682 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        u = mem[64] + 64
                        while idx < _1682:
                            _1716 = mem[s]
                            mem[u] = mem[mem[s]]
                            mem[u + 32] = mem[_1716 + 63 len 1]
                            mem[u + 64] = mem[_1716 + 95 len 1]
                            mem[u + 96] = mem[_1716 + 127 len 1]
                            mem[u + 128] = mem[_1716 + 128]
                            mem[u + 160] = mem[_1716 + 160]
                            mem[u + 192] = mem[_1716 + 192]
                            mem[u + 224] = mem[_1716 + 224]
                            mem[u + 256] = mem[_1716 + 256]
                            mem[u + 288] = mem[_1716 + 288]
                            mem[u + 320] = bool(mem[_1716 + 320])
                            _1652 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1652] = 0
                            mem[_1652 + 32] = 0
                            mem[_1652 + 64] = 0
                            mem[_1652 + 96] = 0
                            mem[_1652 + 128] = 0
                            mem[_1652 + 160] = 0
                            mem[_1652 + 192] = 0
                            mem[_1652 + 224] = 0
                            mem[_1652 + 256] = 0
                            mem[_1652 + 288] = 0
                            mem[_1652 + 320] = 0
                            mem[0] = t
                            mem[32] = 8
                            _1654 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1654] = stor8[t].field_0
                            mem[_1654 + 32] = stor8[var85001].field_256
                            mem[_1654 + 64] = stor8[var85001].field_264
                            mem[_1654 + 96] = stor8[var85001].field_272
                            mem[_1654 + 128] = stor8[var85001].field_512
                            mem[_1654 + 160] = stor8[var85001].field_768
                            mem[_1654 + 192] = stor8[var85001].field_1024
                            mem[_1654 + 224] = stor8[var85001].field_1280
                            mem[_1654 + 256] = stor8[var85001].field_1536
                            mem[_1654 + 288] = stor8[var85001].field_1792
                            mem[_1654 + 320] = bool(stor8[var85001].field_2048)
                            _1655 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1655] = 0
                            mem[_1655 + 32] = 0
                            mem[_1655 + 64] = 0
                            mem[_1655 + 96] = 0
                            mem[_1655 + 128] = 0
                            mem[_1655 + 160] = 0
                            mem[_1655 + 192] = 0
                            mem[_1655 + 224] = 0
                            mem[_1655 + 256] = 0
                            mem[_1655 + 288] = 0
                            mem[_1655 + 320] = 0
                            require ext_code.size(configAddress)
                            staticcall configAddress.0xf1b78453 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            u = u + 352
                            continue 
                        return memory
                          from mem[64]
                           len _1680 + (352 * _1682) + -mem[64] + 64
                ('lt', ('add', 1, ('var', 3)), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor9', 9)))))
                mem[0] = stor9[address(msg.sender)][u].field_256
                mem[32] = sha3(address(msg.sender), 9) + 2
                _1652 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1652] = 0
                mem[_1652 + 32] = 0
                mem[_1652 + 64] = 0
                mem[_1652 + 96] = 0
                mem[_1652 + 128] = 0
                mem[_1652 + 160] = 0
                mem[_1652 + 192] = 0
                mem[_1652 + 224] = 0
                mem[_1652 + 256] = 0
                mem[_1652 + 288] = 0
                mem[_1652 + 320] = 0
                mem[0] = stor9[address(msg.sender)][u].field_512
                mem[32] = 8
                _1654 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1654] = stor8[stor9[address(msg.sender)][u].field_512].field_0
                mem[_1654 + 32] = stor8[var85001].field_256
                mem[_1654 + 64] = stor8[var85001].field_264
                mem[_1654 + 96] = stor8[var85001].field_272
                mem[_1654 + 128] = stor8[var85001].field_512
                mem[_1654 + 160] = stor8[var85001].field_768
                mem[_1654 + 192] = stor8[var85001].field_1024
                mem[_1654 + 224] = stor8[var85001].field_1280
                mem[_1654 + 256] = stor8[var85001].field_1536
                mem[_1654 + 288] = stor8[var85001].field_1792
                mem[_1654 + 320] = bool(stor8[var85001].field_2048)
                _1655 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1655] = 0
                mem[_1655 + 32] = 0
                mem[_1655 + 64] = 0
                mem[_1655 + 96] = 0
                mem[_1655 + 128] = 0
                mem[_1655 + 160] = 0
                mem[_1655 + 192] = 0
                mem[_1655 + 224] = 0
                mem[_1655 + 256] = 0
                mem[_1655 + 288] = 0
                mem[_1655 + 320] = 0
                require ext_code.size(configAddress)
                staticcall configAddress.0xf1b78453 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                s = stor9[address(msg.sender)][2][stor9[address(msg.sender)][u].field_256].field_0
                t = stor9[address(msg.sender)][u].field_256
                u = u + 1
                continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
