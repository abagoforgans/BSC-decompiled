contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor9;
uint256 stor10;
array of struct oracles;
uint256 bftValue;
uint8 dataType; offset 160
address gravityContractAddress;
array of struct subscriptionIds;
uint256 lastPulseId;
mapping of struct subscriptions;
mapping of struct pulses;
mapping of uint8 stor20;

function pulses(uint256 arg1) {
    require calldata.size - 4 >= 32
    return pulses[arg1].field_0, pulses[arg1].field_256
}

function bftValue() {
    return bftValue
}

function oracles(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < oracles.length
    return oracles[arg1].field_0
}

function sub_6148d3f3(?) {
    require calldata.size - 4 >= 64
    return bool(stor20[arg1][arg2])
}

function dataType() {
    require dataType <= 2
    return dataType
}

function gravityContract() {
    return gravityContractAddress
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function subscriptionIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < subscriptionIds.length
    return subscriptionIds[arg1].field_0
}

function lastPulseId() {
    return lastPulseId
}

function subscriptions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return subscriptions[arg1].field_0, 
           subscriptions[arg1].field_256,
           subscriptions[arg1].field_256,
           subscriptions[arg1].field_512
}

function _fallback() payable {
    revert
}

function pulseQueue() {
    return stor9, stor10
}

function oracleQueue() {
    return stor1, stor2
}

function subscriptionsQueue() {
    return stor5, stor6
}

function sendValueToSubInt(int64 arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    if stor20[arg2][arg3]:
        revert with 0, 'sub sent'
    stor20[arg2][arg3] = 1
    require ext_code.size(subscriptions[arg3].field_256)
    call subscriptions[arg3].field_256.attachValue(int64 rg1) with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('param', 'arg1')))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendValueToSubString(string arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if stor20[arg2][arg3]:
        revert with 0, 'sub sent'
    stor20[arg2][arg3] = 1
    require ext_code.size(subscriptions[arg3].field_256)
    call subscriptions[arg3].field_256 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getOracles() {
    if not oracles.length:
        mem[(32 * oracles.length) + 128] = 32
        mem[(32 * oracles.length) + 160] = oracles.length
        mem[(32 * oracles.length) + 192 len floor32(oracles.length)] = mem[128 len floor32(oracles.length)]
        return memory
          from (32 * oracles.length) + 128
           len (96 * oracles.length) + 64
    mem[128] = address(oracles.field_0)
    idx = 128
    s = 0
    while (32 * oracles.length) + 96 > idx:
        mem[idx + 32] = oracles[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * oracles.length) + 192 len floor32(oracles.length)] = mem[128 len floor32(oracles.length)]
    return Array(len=oracles.length, data=mem[128 len floor32(oracles.length)], mem[(32 * oracles.length) + floor32(oracles.length) + 192 len (32 * oracles.length) - floor32(oracles.length)]), 
}

function getSubscribersIds() {
    if not subscriptionIds.length:
        mem[(32 * subscriptionIds.length) + 128] = 32
        mem[(32 * subscriptionIds.length) + 160] = subscriptionIds.length
        mem[(32 * subscriptionIds.length) + 192 len floor32(subscriptionIds.length)] = mem[128 len floor32(subscriptionIds.length)]
        return memory
          from (32 * subscriptionIds.length) + 128
           len (96 * subscriptionIds.length) + 64
    mem[128] = uint256(subscriptionIds.field_0)
    idx = 128
    s = 0
    while (32 * subscriptionIds.length) + 96 > idx:
        mem[idx + 32] = subscriptionIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * subscriptionIds.length) + 192 len floor32(subscriptionIds.length)] = mem[128 len floor32(subscriptionIds.length)]
    return Array(len=subscriptionIds.length, data=mem[128 len floor32(subscriptionIds.length)], mem[(32 * subscriptionIds.length) + floor32(subscriptionIds.length) + 192 len (32 * subscriptionIds.length) - floor32(subscriptionIds.length)]), 
}

function hashNewOracles(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = 96
    while idx < arg1.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        _22 = mem[64]
        _23 = mem[s]
        u = s + 32
        v = mem[64] + 32
        t = mem[s]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
        mem[_23 + _22 + 32] = address(_21)
        _30 = mem[64]
        mem[mem[64]] = _23 + _22 + -mem[64] + 20
        mem[64] = _23 + _22 + 52
        idx = idx + 1
        s = _30
        continue 
    mem[mem[64]] = sha3(mem[s + 32 len mem[s]])
    return memory
      from mem[64]
       len 32
}

function sendValueToSubByte(bytes arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor20[arg2][arg3]:
        revert with 0, 'sub sent'
    stor20[arg2][arg3] = 1
    mem[ceil32(arg1.length) + 128] = 0xcc32a15100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if not arg1.length:
        require ext_code.size(subscriptions[arg3].field_256)
        call subscriptions[arg3].field_256.0xcc32a151 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    else:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        require ext_code.size(subscriptions[arg3].field_256)
        call subscriptions[arg3].field_256 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function subscribe(address arg1, uint8 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_0:
        revert with 0, 'rq is exist'
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_0 = msg.sender
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_256 = arg1
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_416 = arg2
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_512 = arg3
    require ext_code.size(0x8bc1aced146679114be91a2d2f9e63dd3aa15d99)
    delegate 0x8bc1aced146679114be91a2d2f9e63dd3aa15d99.0xa506d954 with:
         gas gas_remaining wei
        args 5, sha3(uint32(call.func_hash), Mask(160, 96, msg.sender) >> 96, uint64(arg1), Mask(96, 0, arg1), arg2)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    subscriptionIds.length++
    subscriptionIds[subscriptionIds.length].field_0 = sha3(uint32(call.func_hash), Mask(160, 96, msg.sender) >> 96, uint64(arg1), Mask(96, 0, arg1), arg2)
    emit NewSubscriber(sha3(uint32(call.func_hash), Mask(160, 96, msg.sender) >> 96, uint64(arg1), Mask(96, 0, arg1), arg2));
}

function sendHashValue(bytes32 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0
    idx = 0
    while idx < oracles.length:
        mem[0] = 13
        require idx < mem[96]
        _34 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _36 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _38 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _39 = mem[64]
        mem[64] = mem[64] + 32
        mem[_39 + 32] = arg1
        mem[_39 + 64] = uint8(_34)
        mem[_39 + 96] = _36
        mem[_39 + 128] = _38
        signer = erecover(arg1, _34 << 248, _36, _38) 
        mem[_39] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if 0 < bftValue:
        revert with 0, 'invalid bft count'
    pulses[stor17 + 1].field_0 = arg1
    pulses[stor17 + 1].field_256 = block.number
    emit NewPulse(lastPulseId + 1, block.number, arg1);
    lastPulseId++
}

function updateOracles(address[] arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    idx = 0
    s = 96
    while idx < arg1.length:
        require idx < mem[96]
        _51 = mem[(32 * idx) + 128]
        _53 = mem[s]
        u = s + 32
        v = mem[64] + 32
        t = mem[s]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
        mem[_53 + mem[64] + 32] = address(_51)
        _88 = mem[64]
        mem[mem[64]] = _53 + 20
        mem[64] = _53 + mem[64] + 52
        idx = idx + 1
        s = _88
        continue 
    _47 = sha3(mem[s + 32 len mem[s]])
    mem[mem[64]] = 0xad595b1a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(gravityContractAddress)
    staticcall gravityContractAddress.0xad595b1a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _54 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _59 = mem[_54]
    require mem[_54] <= 4294967296
    require mem[_54] + 32 <= return_data.size
    require mem[_54 + mem[_54]] <= 4294967296 and mem[_54] + (32 * mem[_54 + mem[_54]]) + 32 <= return_data.size
    mem[_54 + ceil32(return_data.size)] = mem[_54 + mem[_54]]
    _62 = mem[_54 + _59]
    mem[_54 + ceil32(return_data.size) + 32 len floor32(mem[_54 + _59])] = mem[_54 + _59 + 32 len floor32(mem[_54 + _59])]
    mem[64] = (32 * _62) + _54 + ceil32(return_data.size) + 32
    _111 = mem[_54 + ceil32(return_data.size)]
    idx = 0
    while idx < _111:
        require idx < mem[_54 + ceil32(return_data.size)]
        _116 = mem[(32 * idx) + _54 + ceil32(return_data.size) + 32]
        require idx < mem[(32 * arg1.length) + 128]
        _119 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _121 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _123 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        _124 = mem[64]
        mem[64] = mem[64] + 32
        mem[_124 + 32] = _47
        mem[_124 + 64] = uint8(_119)
        mem[_124 + 96] = _121
        mem[_124 + 128] = _123
        signer = erecover(_47, _119 << 248, _121, _123) 
        mem[_124] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if 0 < bftValue:
        revert with 0, 'invalid bft count'
    oracles.length = mem[96]
    if not mem[96]:
        s = 0
        while oracles.length > s:
            oracles[s].field_0 = 0
            s = s + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            oracles[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while oracles.length > idx:
            oracles[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[arg5] = 1
}



}
