contract main {




// =====================  Runtime code  =====================


#
#  - getTemplateAsJson(address arg1, string arg2)
#  - updateTemplateTemplate(address arg1, string arg2, string arg3)
#
uint8 stor0;
address owner; offset 8
array of uint256 stor1;
array of uint8 stor2;
array of uint8 stor3;

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function templateExists(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    mem[ceil32(arg2.length) + 128] = bool(stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function getTemplateBlockValidity(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    mem[ceil32(arg2.length) + 128] = uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function updateTemplateBlockValidity(address arg1, string arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))]) = arg3
}

function isTemplateValid(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    if not stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))]:
        mem[ceil32(arg2.length) + 128] = bool(stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))])
    else:
        mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
        if not uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))]):
            mem[ceil32(arg2.length) + 128] = not uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))])
        else:
            mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
            mem[ceil32(arg2.length) + 128] = uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))]) >= block.number
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function getTemplateTemplate(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    if ceil32(arg2.length) <= arg2.length:
        _46 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
        mem[64] = ceil32(arg2.length) + ceil32(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length) + 160
        mem[ceil32(arg2.length) + 128] = stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length
        mem[0] = _46
        mem[ceil32(arg2.length) + 160] = stor[sha3(_46)]
        idx = ceil32(arg2.length) + 160
        s = 0
        while ceil32(arg2.length) + stor[_46].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_46) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_46].length
        mem[mem[64] + 64 len ceil32(stor[_46].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor[_46].length)]
        if ceil32(stor[_46].length) <= stor[_46].length:
            return Array(len=stor[_46].length, data=mem[mem[64] + 64 len ceil32(stor[_46].length)])
        mem[mem[64] + stor[_46].length + 64] = 0
        return memory
          from mem[64]
           len _87 + ceil32(stor[_46].length) + -mem[64] + 64
    _49 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
    mem[64] = ceil32(arg2.length) + ceil32(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)].length
    mem[0] = _49
    mem[ceil32(arg2.length) + 160] = stor[sha3(_49)]
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[_49].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_49) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _88 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor[_49].length
    mem[mem[64] + 64 len ceil32(stor[_49].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor[_49].length)]
    if ceil32(stor[_49].length) <= stor[_49].length:
        return Array(len=stor[_49].length, data=mem[mem[64] + 64 len ceil32(stor[_49].length)])
    mem[mem[64] + stor[_49].length + 64] = 0
    return memory
      from mem[64]
       len _88 + ceil32(stor[_49].length) + -mem[64] + 64
}

function getTemplateMeta(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    if ceil32(arg2.length) <= arg2.length:
        _46 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
        mem[64] = ceil32(arg2.length) + ceil32(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1].length) + 160
        mem[ceil32(arg2.length) + 128] = stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1].length
        mem[0] = _46 + 1
        mem[ceil32(arg2.length) + 160] = stor[sha3(_46 + 1)]
        idx = ceil32(arg2.length) + 160
        s = 0
        while ceil32(arg2.length) + stor[_46 + 1].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_46 + 1) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_46 + 1].length
        mem[mem[64] + 64 len ceil32(stor[_46 + 1].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor[_46 + 1].length)]
        if ceil32(stor[_46 + 1].length) <= stor[_46 + 1].length:
            return Array(len=stor[_46 + 1].length, data=mem[mem[64] + 64 len ceil32(stor[_46 + 1].length)])
        mem[mem[64] + stor[_46 + 1].length + 64] = 0
        return memory
          from mem[64]
           len _87 + ceil32(stor[_46 + 1].length) + -mem[64] + 64
    _49 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
    mem[64] = ceil32(arg2.length) + ceil32(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1].length) + 160
    mem[ceil32(arg2.length) + 128] = stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1].length
    mem[0] = _49 + 1
    mem[ceil32(arg2.length) + 160] = stor[sha3(_49 + 1)]
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor[_49 + 1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_49 + 1) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _88 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor[_49 + 1].length
    mem[mem[64] + 64 len ceil32(stor[_49 + 1].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor[_49 + 1].length)]
    if ceil32(stor[_49 + 1].length) <= stor[_49 + 1].length:
        return Array(len=stor[_49 + 1].length, data=mem[mem[64] + 64 len ceil32(stor[_49 + 1].length)])
    mem[mem[64] + stor[_49 + 1].length + 64] = 0
    return memory
      from mem[64]
       len _88 + ceil32(stor[_49 + 1].length) + -mem[64] + 64
}

function updateTemplateMeta(address arg1, string arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(arg1), 1)
    if not stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))]:
        revert with 0, 'updateTemplateMeta: Template doesn't exist.'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(arg1), 1)
    if Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        stor[mem[ceil32(arg2.length) + arg3.length + 192 len arg2.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][1][] = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    else:
        stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))] = 0
        idx = 0
        while stor[mem[ceil32(arg2.length) + arg3.length + 192 len arg2.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][1].length + 31 / 32 > idx:
            stor[mem[ceil32(arg2.length) + arg3.length + 192 len arg2.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][idx + 1] = 0
            idx = idx + 1
            continue 
}

function publishData(address arg1, string arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    require uint8(stor2[address(msg.sender)])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(arg1), 1)
    if not stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))]:
        revert with 0, 'Template doesn't exist.'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(arg1), 1)
    if not stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))]:
        revert with 0, 'Template is not valid.'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(arg1), 1)
    if uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))]):
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = sha3(address(arg1), 1)
        if uint256(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))]) < block.number:
            revert with 0, 'Template is not valid.'
}

function addTemplate(address arg1, string arg2, string arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 <= test266151307() and ceil32(arg4.length) + 192 >= 160
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192] = 0
    if stor0:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = sha3(address(arg1), 1)
    if stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), ('cd', ('add', 4, ('param', 'arg4'))))), 0, 0, 0), ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('cd', ('add', 4, ('param', 'arg4')))), ('add', ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg4')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))))))]:
        revert with 0, 'addTemplate: Template already exist.'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = ceil32(arg2.length) + 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 320] = sha3(address(arg1), 1)
    if Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
        stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][] = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    else:
        stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256] = 0
        idx = 0
        while stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].length + 31 / 32 > idx:
            stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][idx] = 0
            idx = idx + 1
            continue 
    if Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][1][] = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    else:
        stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('data', ('call.data', ('add', 36, ('param', 'arg2')), ('cd', ('add', 4, ('param', 'arg2')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg2')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2'))))))))), ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))))] = 0
        idx = 0
        while stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][1].length + 31 / 32 > idx:
            stor[mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256][idx + 1] = 0
            idx = idx + 1
            continue 
    uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('data', ('call.data', ('add', 36, ('param', 'arg2')), ('cd', ('add', 4, ('param', 'arg2')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg2')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2'))))))))), ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))))]) = 0
    stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('data', ('call.data', ('add', 36, ('param', 'arg2')), ('cd', ('add', 4, ('param', 'arg2')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg2')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2'))))))))), ('mem', ('range', ('add', 320, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))), ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))))] = 1
    uint8(stor2[address(arg1)]) = 1
}



}
