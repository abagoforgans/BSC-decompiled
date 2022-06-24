contract main {




// =====================  Runtime code  =====================


#
#  - sub_4ec52e27(?)
#  - sub_84bcbebc(?)
#
address stor0;
uint32 stor2;
uint256 stor2; offset 32
uint256 stor2;
address stor3;
address stor4;
array of address stor5;
mapping of uint8 stor6;

function sub_54917f83(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function sub_4e4bd6a9(?) payable {
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor2.field_0)
    mem[132] = 64
    mem[164] = stor5.length
    mem[0] = 5
    idx = 0
    s = 196
    t = 0
    while idx < stor5.length:
        mem[s] = stor5[t]
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor2.field_0), Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _15 = mem[96 len 4], Mask(224, 0, stor2.field_32)
    require mem[96 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor2.field_32) + 127 < return_data.size + 96
    _16 = mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _16
    require (32 * _16) + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _16)] = mem[_15 + 128 len ceil32(32 * _16)]
    if 0 >= _16:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 128]
    return memory
      from mem[64]
       len 32
}

function sub_13673133(?) payable {
    mem[32] = 6
    if stor6[msg.sender]:
        revert with 0, 'HotCams: You are already a model'
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor2.field_0)
    mem[132] = 64
    mem[164] = stor5.length
    mem[0] = 5
    idx = 0
    s = 196
    t = 0
    while idx < stor5.length:
        mem[s] = stor5[t]
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor2.field_0), Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _103 = mem[96 len 4], Mask(224, 0, stor2.field_32)
    require mem[96 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor2.field_32) + 127 < return_data.size + 96
    _104 = mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _104
    require (32 * _104) + _103 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _104)] = mem[_103 + 128 len ceil32(32 * _104)]
    if 0 >= _104:
        revert with 0, 50
    _198 = mem[ceil32(return_data.size) + 128]
    _199 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = stor3
    mem[mem[64] + 100] = _198
    _200 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_199 + 132] = 32
    mem[_199 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor0):
        revert with 0, 'Address: call to non-contract'
    _207 = mem[_200]
    mem[_199 + 196 len ceil32(mem[_200])] = mem[_200 + 32 len ceil32(mem[_200])]
    if ceil32(_207) > _207:
        mem[_207 + _199 + 196] = 0
    call stor0 with:
         gas gas_remaining wei
        args mem[_199 + 200 len _207 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96 len 4], Mask(224, 0, stor2.field_32):
                revert with memory
                  from 128
                   len mem[96 len 4], Mask(224, 0, stor2.field_32)
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96 len 4], Mask(224, 0, stor2.field_32):
            require mem[96 len 4], Mask(224, 0, stor2.field_32) >= 32
            require uint32(stor2.field_0), 0 == bool(uint32(stor2.field_0), 0)
            if not uint32(stor2.field_0), 0:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_199 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_199 + 228] == bool(mem[_199 + 228])
            if not mem[_199 + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor6[address(msg.sender)] = 1
    emit 0xb290225f: msg.sender
}



}
