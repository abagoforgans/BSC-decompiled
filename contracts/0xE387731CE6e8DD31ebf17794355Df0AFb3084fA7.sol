contract main {




// =====================  Runtime code  =====================


#
#  - withdrawToken(uint256 arg1, address arg2)
#
address stor0;
mapping of uint8 stor1;
uint8 stor2;
address stor2; offset 8
uint32 stor3;
address stor3;
uint256 stor3;
address stor4;
address stor5;
address stor6;
array of struct stor7;
array of struct stor8;

function isExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_d0a284f7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addExecutors(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function removeExecutors(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function execute() {
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Executor may call this method'
    if uint8(stor2.field_0) >= stor7.length:
        revert with 0, 'counter overflow'
    mem[128] = stor5
    mem[160] = stor4
    if block.timestamp > -10000:
        revert with 'NH{q', 17
    if stor5 != address(stor2.field_8):
        idx = 0
        s = 128
        t = 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor8.length):
                mem[484] = Mask(248, 8, stor8.length)
                mem[484 len 288] = Mask(32, 224, sha3(mem[484 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_0, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[420 len 64], stor8.length.field_32), stor6
            else:
                if bool(stor8.length) != 1:
                    mem[484 len 288] = Mask(32, 224, sha3(mem[484 len -484])) >> 224, stor7[uint8(stor2.field_0)].field_0, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[420 len 92]), stor6
                else:
                    idx = 0
                    s = 0
                    while idx < stor8.length.field_1:
                        mem[idx + 484] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[484 len 288] = Mask(32, 224, sha3(mem[484 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_0, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[420 len 92]), stor6
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor8.length):
                mem[484] = Mask(248, 8, stor8.length)
                mem[484 len 288] = Mask(32, 224, sha3(mem[484 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_0, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[420 len 64], stor8.length.field_32), stor6
            else:
                if bool(stor8.length) != 1:
                    mem[484 len 288] = Mask(32, 224, sha3(mem[484 len -484])) >> 224, stor7[uint8(stor2.field_0)].field_0, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[420 len 92]), stor6
                else:
                    idx = 0
                    s = 0
                    while idx < stor8.length.field_1:
                        mem[idx + 484] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[484 len 288] = Mask(32, 224, sha3(mem[484 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_0, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[420 len 92]), stor6
        call address(stor3).mem[484 len 4] with:
             gas gas_remaining wei
            args mem[488 len 256]
    else:
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor8.length):
                mem[452] = Mask(248, 8, stor8.length)
                mem[452 len 256] = Mask(32, 224, sha3(mem[452 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[388 len 64], stor8.length.field_32), stor6
            else:
                if bool(stor8.length) != 1:
                    mem[452 len 256] = Mask(32, 224, sha3(mem[452 len -452])) >> 224, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[388 len 92]), stor6
                else:
                    idx = 0
                    s = 0
                    while idx < stor8.length.field_1:
                        mem[idx + 452] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[452 len 256] = Mask(32, 224, sha3(mem[452 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[388 len 92]), stor6
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor8.length):
                mem[452] = Mask(248, 8, stor8.length)
                mem[452 len 256] = Mask(32, 224, sha3(mem[452 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[388 len 64], stor8.length.field_32), stor6
            else:
                if bool(stor8.length) != 1:
                    mem[452 len 256] = Mask(32, 224, sha3(mem[452 len -452])) >> 224, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[388 len 92]), stor6
                else:
                    idx = 0
                    s = 0
                    while idx < stor8.length.field_1:
                        mem[idx + 452] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[452 len 256] = Mask(32, 224, sha3(mem[452 len stor8.length.field_1])) >> 224, stor7[uint8(stor2.field_0)].field_256, Array(len=block.timestamp + 9999, data=2, mem[388 len 92]), stor6
        call address(stor3).mem[452 len 4] with:
           value stor7[uint8(stor2.field_0)].field_0 wei
             gas gas_remaining wei
            args mem[456 len 224]
    if ext_call.success:
        if uint8(stor2.field_0) > 254:
            revert with 'NH{q', 17
        uint8(stor2.field_0) = uint8(uint8(stor2.field_0) + 1)
}

function sub_6e1405cb(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (64 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    uint8(stor2.field_0) = 0
    stor5 = address(cd[4])
    stor4 = address(cd[68])
    stor6 = address(cd[36])
    stor7.length = 0
    idx = 0
    while 2 * stor7.length > idx:
        stor7[idx].field_0 = 0
        stor7[idx].field_256 = 0
        idx = idx + 2
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        stor7.length++
        mem[0] = 7
        require cd[((64 * idx) + cd[100] + 36)] == cd[((64 * idx) + cd[100] + 36)]
        stor7[stor7.length].field_0 = cd[((64 * idx) + cd[100] + 36)]
        require cd[((64 * idx) + cd[100] + 68)] == cd[((64 * idx) + cd[100] + 68)]
        stor7[stor7.length].field_256 = cd[((64 * idx) + cd[100] + 68)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 132).length:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8.length = (2 * ('cd', 132).length) + 1
            s = 0
            idx = cd[132] + 36
            while cd[132] + ('cd', 132).length + 36 > idx:
                stor8[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 132).length:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8.length = (2 * ('cd', 132).length) + 1
            s = 0
            idx = cd[132] + 36
            while cd[132] + ('cd', 132).length + 36 > idx:
                stor8[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    address(stor3) = address(cd[164])
    if stor5 != address(stor2.field_8):
        mem[100] = this.address
        mem[132] = address(stor3)
        staticcall stor5.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(stor3)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 132] = address(stor3)
        mem[ceil32(return_data.size) + 164] = -1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stor5) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call stor5 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor3) == bool(0, Mask(224, 0, stor3))
                if not 0, Mask(224, 0, stor3):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getState() {
    mem[64] = (32 * stor7.length) + 128
    mem[96] = stor7.length
    s = 128
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_119] = stor7[idx].field_0
        mem[_119 + 32] = stor7[idx].field_256
        mem[s] = _119
        s = s + 32
        idx = idx + 1
        continue 
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(stor8.length.field_1) + 32
        mem[_120] = stor8.length.field_1
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor8.length.field_1:
                _122 = mem[64]
                mem[mem[64]] = stor5
                mem[mem[64] + 32] = stor4
                mem[mem[64] + 64] = stor6
                mem[mem[64] + 96] = uint8(stor2.field_0)
                mem[mem[64] + 128] = 224
                _138 = mem[96]
                mem[mem[64] + 224] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 256
                while idx < _138:
                    _234 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_234 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                mem[_122 + 160] = (64 * _138) + 256
                _254 = mem[_120]
                mem[_122 + (64 * _138) + 256] = mem[_120]
                mem[_122 + (64 * _138) + 288 len ceil32(_254)] = mem[_120 + 32 len ceil32(_254)]
                if ceil32(_254) > _254:
                    mem[_122 + (64 * _138) + _254 + 288] = 0
                mem[_122 + 192] = address(stor3)
                return memory
                  from mem[64]
                   len _122 + (64 * _138) + ceil32(_254) + -mem[64] + 288
            if 31 >= stor8.length.field_1:
                mem[_120 + 32] = 256 * stor8.length.field_8
                _128 = mem[64]
                mem[mem[64]] = stor5
                mem[mem[64] + 32] = stor4
                mem[mem[64] + 64] = stor6
                mem[mem[64] + 96] = uint8(stor2.field_0)
                mem[mem[64] + 128] = 224
                _141 = mem[96]
                mem[mem[64] + 224] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 256
                while idx < _141:
                    _235 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_235 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                mem[_128 + 160] = (64 * _141) + 256
                _255 = mem[_120]
                mem[_128 + (64 * _141) + 256] = mem[_120]
                mem[_128 + (64 * _141) + 288 len ceil32(_255)] = mem[_120 + 32 len ceil32(_255)]
                if ceil32(_255) > _255:
                    mem[_128 + (64 * _141) + _255 + 288] = 0
                mem[_128 + 192] = address(stor3)
                return memory
                  from mem[64]
                   len _128 + (64 * _141) + ceil32(_255) + -mem[64] + 288
            mem[0] = 8
            mem[_120 + 32] = uint256(stor8.field_0)
            idx = _120 + 32
            s = 0
            while _120 + stor8.length.field_1 > idx:
                mem[idx + 32] = stor8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _243 = mem[64]
            mem[mem[64]] = stor5
            mem[mem[64] + 32] = stor4
            mem[mem[64] + 64] = stor6
            mem[mem[64] + 96] = uint8(stor2.field_0)
            mem[mem[64] + 128] = 224
            _294 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < _294:
                _327 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_327 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_243 + 160] = (64 * _294) + 256
            _342 = mem[_120]
            mem[_243 + (64 * _294) + 256] = mem[_120]
            mem[_243 + (64 * _294) + 288 len ceil32(_342)] = mem[_120 + 32 len ceil32(_342)]
            var64001 = ceil32(_342)
            if ceil32(_342) > _342:
                mem[_243 + (64 * _294) + _342 + 288] = 0
            mem[_243 + 192] = address(stor3)
            return memory
              from mem[64]
               len _243 + (64 * _294) + ceil32(_342) + -mem[64] + 288
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor8.length.field_1:
            _124 = mem[64]
            mem[mem[64]] = stor5
            mem[mem[64] + 32] = stor4
            mem[mem[64] + 64] = stor6
            mem[mem[64] + 96] = uint8(stor2.field_0)
            mem[mem[64] + 128] = 224
            _139 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < _139:
                _236 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_236 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_124 + 160] = (64 * _139) + 256
            _256 = mem[_120]
            mem[_124 + (64 * _139) + 256] = mem[_120]
            mem[_124 + (64 * _139) + 288 len ceil32(_256)] = mem[_120 + 32 len ceil32(_256)]
            if ceil32(_256) > _256:
                mem[_124 + (64 * _139) + _256 + 288] = 0
            mem[_124 + 192] = address(stor3)
            return memory
              from mem[64]
               len _124 + (64 * _139) + ceil32(_256) + -mem[64] + 288
        if 31 >= stor8.length.field_1:
            mem[_120 + 32] = 256 * stor8.length.field_8
            _131 = mem[64]
            mem[mem[64]] = stor5
            mem[mem[64] + 32] = stor4
            mem[mem[64] + 64] = stor6
            mem[mem[64] + 96] = uint8(stor2.field_0)
            mem[mem[64] + 128] = 224
            _143 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < _143:
                _237 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_237 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_131 + 160] = (64 * _143) + 256
            _257 = mem[_120]
            mem[_131 + (64 * _143) + 256] = mem[_120]
            mem[_131 + (64 * _143) + 288 len ceil32(_257)] = mem[_120 + 32 len ceil32(_257)]
            if ceil32(_257) > _257:
                mem[_131 + (64 * _143) + _257 + 288] = 0
            mem[_131 + 192] = address(stor3)
            return memory
              from mem[64]
               len _131 + (64 * _143) + ceil32(_257) + -mem[64] + 288
        mem[0] = 8
        mem[_120 + 32] = uint256(stor8.field_0)
        idx = _120 + 32
        s = 0
        while _120 + stor8.length.field_1 > idx:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _246 = mem[64]
        mem[mem[64]] = stor5
        mem[mem[64] + 32] = stor4
        mem[mem[64] + 64] = stor6
        mem[mem[64] + 96] = uint8(stor2.field_0)
        mem[mem[64] + 128] = 224
        _295 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < _295:
            _330 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_330 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_246 + 160] = (64 * _295) + 256
        _343 = mem[_120]
        mem[_246 + (64 * _295) + 256] = mem[_120]
        mem[_246 + (64 * _295) + 288 len ceil32(_343)] = mem[_120 + 32 len ceil32(_343)]
        var65001 = ceil32(_343)
        if ceil32(_343) > _343:
            mem[_246 + (64 * _295) + _343 + 288] = 0
        mem[_246 + 192] = address(stor3)
        return memory
          from mem[64]
           len _246 + (64 * _295) + ceil32(_343) + -mem[64] + 288
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(stor8.length.field_1) + 32
    mem[_121] = stor8.length.field_1
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor8.length.field_1:
            _126 = mem[64]
            mem[mem[64]] = stor5
            mem[mem[64] + 32] = stor4
            mem[mem[64] + 64] = stor6
            mem[mem[64] + 96] = uint8(stor2.field_0)
            mem[mem[64] + 128] = 224
            _140 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < _140:
                _238 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_238 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_126 + 160] = (64 * _140) + 256
            _258 = mem[_121]
            mem[_126 + (64 * _140) + 256] = mem[_121]
            mem[_126 + (64 * _140) + 288 len ceil32(_258)] = mem[_121 + 32 len ceil32(_258)]
            if ceil32(_258) > _258:
                mem[_126 + (64 * _140) + _258 + 288] = 0
            mem[_126 + 192] = address(stor3)
            return memory
              from mem[64]
               len _126 + (64 * _140) + ceil32(_258) + -mem[64] + 288
        if 31 >= stor8.length.field_1:
            mem[_121 + 32] = 256 * stor8.length.field_8
            _132 = mem[64]
            mem[mem[64]] = stor5
            mem[mem[64] + 32] = stor4
            mem[mem[64] + 64] = stor6
            mem[mem[64] + 96] = uint8(stor2.field_0)
            mem[mem[64] + 128] = 224
            _144 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < _144:
                _239 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_239 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_132 + 160] = (64 * _144) + 256
            _259 = mem[_121]
            mem[_132 + (64 * _144) + 256] = mem[_121]
            mem[_132 + (64 * _144) + 288 len ceil32(_259)] = mem[_121 + 32 len ceil32(_259)]
            if ceil32(_259) > _259:
                mem[_132 + (64 * _144) + _259 + 288] = 0
            mem[_132 + 192] = address(stor3)
            return memory
              from mem[64]
               len _132 + (64 * _144) + ceil32(_259) + -mem[64] + 288
        mem[0] = 8
        mem[_121 + 32] = uint256(stor8.field_0)
        idx = _121 + 32
        s = 0
        while _121 + stor8.length.field_1 > idx:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _249 = mem[64]
        mem[mem[64]] = stor5
        mem[mem[64] + 32] = stor4
        mem[mem[64] + 64] = stor6
        mem[mem[64] + 96] = uint8(stor2.field_0)
        mem[mem[64] + 128] = 224
        _296 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < _296:
            _333 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_333 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_249 + 160] = (64 * _296) + 256
        _344 = mem[_121]
        mem[_249 + (64 * _296) + 256] = mem[_121]
        mem[_249 + (64 * _296) + 288 len ceil32(_344)] = mem[_121 + 32 len ceil32(_344)]
        var65001 = ceil32(_344)
        if ceil32(_344) > _344:
            mem[_249 + (64 * _296) + _344 + 288] = 0
        mem[_249 + 192] = address(stor3)
        return memory
          from mem[64]
           len _249 + (64 * _296) + ceil32(_344) + -mem[64] + 288
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor8.length.field_1:
        _129 = mem[64]
        mem[mem[64]] = stor5
        mem[mem[64] + 32] = stor4
        mem[mem[64] + 64] = stor6
        mem[mem[64] + 96] = uint8(stor2.field_0)
        mem[mem[64] + 128] = 224
        _142 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < _142:
            _240 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_240 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_129 + 160] = (64 * _142) + 256
        _260 = mem[_121]
        mem[_129 + (64 * _142) + 256] = mem[_121]
        mem[_129 + (64 * _142) + 288 len ceil32(_260)] = mem[_121 + 32 len ceil32(_260)]
        if ceil32(_260) > _260:
            mem[_129 + (64 * _142) + _260 + 288] = 0
        mem[_129 + 192] = address(stor3)
        return memory
          from mem[64]
           len _129 + (64 * _142) + ceil32(_260) + -mem[64] + 288
    if 31 >= stor8.length.field_1:
        mem[_121 + 32] = 256 * stor8.length.field_8
        _134 = mem[64]
        mem[mem[64]] = stor5
        mem[mem[64] + 32] = stor4
        mem[mem[64] + 64] = stor6
        mem[mem[64] + 96] = uint8(stor2.field_0)
        mem[mem[64] + 128] = 224
        _146 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < _146:
            _241 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_241 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_134 + 160] = (64 * _146) + 256
        _261 = mem[_121]
        mem[_134 + (64 * _146) + 256] = mem[_121]
        mem[_134 + (64 * _146) + 288 len ceil32(_261)] = mem[_121 + 32 len ceil32(_261)]
        var63001 = ceil32(_261)
        if ceil32(_261) > _261:
            mem[_134 + (64 * _146) + _261 + 288] = 0
        mem[_134 + 192] = address(stor3)
        return memory
          from mem[64]
           len _134 + (64 * _146) + ceil32(_261) + -mem[64] + 288
    mem[0] = 8
    mem[_121 + 32] = uint256(stor8.field_0)
    idx = _121 + 32
    s = 0
    while _121 + stor8.length.field_1 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _252 = mem[64]
    mem[mem[64]] = stor5
    mem[mem[64] + 32] = stor4
    mem[mem[64] + 64] = stor6
    mem[mem[64] + 96] = uint8(stor2.field_0)
    mem[mem[64] + 128] = 224
    _297 = mem[96]
    mem[mem[64] + 224] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 256
    while idx < _297:
        _336 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_336 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_252 + 160] = (64 * _297) + 256
    _345 = mem[_121]
    mem[_252 + (64 * _297) + 256] = mem[_121]
    mem[_252 + (64 * _297) + 288 len ceil32(_345)] = mem[_121 + 32 len ceil32(_345)]
    var66001 = ceil32(_345)
    if ceil32(_345) > _345:
        mem[_252 + (64 * _297) + _345 + 288] = 0
    mem[_252 + 192] = address(stor3)
    return memory
      from mem[64]
       len _252 + (64 * _297) + ceil32(_345) + -mem[64] + 288
}



}
