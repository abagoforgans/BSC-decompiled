contract main {




// =====================  Runtime code  =====================


#
#  - sub_54ffbd23(?)
#  - sub_95c2c673(?)
#  - sub_978b0089(?)
#  - sub_abbc44ed(?)
#  - sub_ae9d0a64(?)
#  - sub_bbcb2bbb(?)
#  - sub_cce6534f(?)
#  - sub_d07aa4c7(?)
#  - sub_e96c3edb(?)
#  - bulksendToken(address arg1, address[] arg2, uint256[] arg3, bytes32 arg4)
#
mapping of uint256 referrerFee;
array of struct stor1;
mapping of address owner;
mapping of uint8 stor4;

function initialized() {
    return bool(stor4['initialized'])
}

function referrerFee() {
    return referrerFee['referrerFee']
}

function owner() {
    return owner['owner']
}

function txFee() {
    return referrerFee['txFee']
}

function VIPFee() {
    return referrerFee['vipFee']
}

function _fallback() payable {
  stop
}

function getReceiverAddress() {
    if owner['receiverAddress']:
        return owner['receiverAddress']
    return owner['owner']
}

function setTxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner['owner']
    referrerFee['txFee'] = arg1
}

function setVIPFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner['owner']
    referrerFee['vipFee'] = arg1
}

function setReferrerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner['owner']
    referrerFee['referrerFee'] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner['owner']
    require arg1
    owner['owner'] = arg1
}

function setReceiverAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner['owner']
    require arg1
    owner['receiverAddress'] = arg1
}

function isVIP(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == owner['owner']:
        return True
    return bool(stor4[0][Mask(112, 144, Mask(112, 0, arg1), 0, 0) >> 144])
}

function sub_8b21f78e(?) {
    mem[128] = stor1['Agent_TYPEHASH'].field_0
    idx = 128
    s = 0
    while stor1['Agent_TYPEHASH'].length + 96 > idx:
        mem[idx + 32] = stor1['Agent_TYPEHASH'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1['Agent_TYPEHASH'].length) + 128] = mem[128]
    return memory
      from ceil32(stor1['Agent_TYPEHASH'].length) + 128
       len 32
}

function DOMAIN_SEPARATOR() {
    mem[128] = stor1['DOMAIN_SEPARATOR'].field_0
    idx = 128
    s = 0
    while stor1['DOMAIN_SEPARATOR'].length + 96 > idx:
        mem[idx + 32] = stor1['DOMAIN_SEPARATOR'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1['DOMAIN_SEPARATOR'].length) + 128] = mem[128]
    return memory
      from ceil32(stor1['DOMAIN_SEPARATOR'].length) + 128
       len 32
}

function registerVIP() payable {
    require msg.value >= referrerFee['vipFee']
    if owner['receiverAddress']:
        call owner['receiverAddress'] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call owner['owner'] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4[0][Mask(112, 144, Mask(112, 0, msg.sender), 0, 0) >> 144] = 1
}

function EIP712DOMAIN_TYPEHASH() {
    mem[128] = stor1['EIP712DOMAIN_TYPEHASH'].field_0
    idx = 128
    s = 0
    while stor1['EIP712DOMAIN_TYPEHASH'].length + 96 > idx:
        mem[idx + 32] = stor1['EIP712DOMAIN_TYPEHASH'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 128] = mem[128]
    return memory
      from ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 128
       len 32
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require not stor4['initialized']
    owner['owner'] = arg1
    require msg.sender == owner['owner']
    require arg1
    owner['receiverAddress'] = arg1
    require msg.sender == owner['owner']
    referrerFee['txFee'] = 10^16
    require msg.sender == owner['owner']
    referrerFee['vipFee'] = 10^18
    require msg.sender == owner['owner']
    referrerFee['referrerFee'] = 10^16
    stor4['initialized'] = 1
}

function stringToBytes32(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = mem[128]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_d7328527(?) {
    require calldata.size - 4 >= 32
    mem[128 len 1024] = code.data[23337 len 1024]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return 32, 32, mem[128]
}

function sub_806426f6(?) {
    require calldata.size - 4 >= 128
    mem[228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, mem[228 len 28]
    mem[324] = mem[352 len 4]
    call arg1.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 124]
    mem[328 len 96] = 0, address(arg2), arg3, mem[328 len 28]
    mem[392] = mem[420 len 4]
    call arg1.mem[328 len 4] with:
         gas gas_remaining wei
        args mem[332 len 92]
    if ext_call.success:
        return 1
    mem[460 len 128] = 0, msg.sender, address(arg2), arg3, mem[460 len 28]
    mem[556] = mem[584 len 4]
    call arg1.mem[460 len 4] with:
         gas gas_remaining wei
        args mem[464 len 124]
    if not ext_call.success:
        return 3
    return 2
}

function sub_e9073df1(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 64
    mem[192] = stor1['DOMAIN_SEPARATOR'].field_0
    idx = 192
    s = 0
    while stor1['DOMAIN_SEPARATOR'].length + 160 > idx:
        mem[idx + 32] = stor1['DOMAIN_SEPARATOR'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1['DOMAIN_SEPARATOR'].length) + 224] = stor1['Agent_TYPEHASH'].field_0
    idx = ceil32(stor1['DOMAIN_SEPARATOR'].length) + 224
    s = 0
    while ceil32(stor1['DOMAIN_SEPARATOR'].length) + stor1['Agent_TYPEHASH'].length + 192 > idx:
        mem[idx + 32] = stor1['Agent_TYPEHASH'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(mem[192], Mask(240, 16, sha3(mem[ceil32(stor1['DOMAIN_SEPARATOR'].length) + 224], arg1 << 192, arg2)) >> 16 >> 256, mem[ceil32(stor1['DOMAIN_SEPARATOR'].length) + ceil32(stor1['Agent_TYPEHASH'].length) + 514 len 2]), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function addToVIPList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 128] = 'owner'
    mem[0] = sha3('owner')
    mem[32] = 2
    require msg.sender == owner['owner']
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _38 = mem[(32 * idx) + 128]
        _39 = mem[64]
        mem[mem[64] + 32] = 'vip'
        mem[mem[64] + 35] = address(_38)
        _40 = mem[64]
        mem[mem[64]] = 23
        mem[64] = mem[64] + 55
        _42 = mem[_40]
        t = _40 + 32
        u = _39 + 55
        s = mem[_40]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_39 + floor32(mem[_40]) + 55] = mem[_40 + -(mem[_40] % 32) + floor32(mem[_40]) + 64 len mem[_40] % 32] or Mask(8 * -(mem[_40] % 32) + 32, -(8 * -(mem[_40] % 32) + 32) + 256, mem[_39 + floor32(mem[_40]) + 55])
        mem[0] = sha3(mem[_39 + 55 len _42])
        mem[32] = 4
        stor4[mem[0]] = 1
        idx = idx + 1
        continue 
}

function removeFromVIPList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 128] = 'owner'
    mem[0] = sha3('owner')
    mem[32] = 2
    require msg.sender == owner['owner']
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _38 = mem[(32 * idx) + 128]
        _39 = mem[64]
        mem[mem[64] + 32] = 'vip'
        mem[mem[64] + 35] = address(_38)
        _40 = mem[64]
        mem[mem[64]] = 23
        mem[64] = mem[64] + 55
        _42 = mem[_40]
        t = _40 + 32
        u = _39 + 55
        s = mem[_40]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_39 + floor32(mem[_40]) + 55] = mem[_40 + -(mem[_40] % 32) + floor32(mem[_40]) + 64 len mem[_40] % 32] or Mask(8 * -(mem[_40] % 32) + 32, -(8 * -(mem[_40] % 32) + 32) + 256, mem[_39 + floor32(mem[_40]) + 55])
        mem[0] = sha3(mem[_39 + 55 len _42])
        mem[32] = 4
        stor4[mem[0]] = 0
        idx = idx + 1
        continue 
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner['owner']
    if owner['receiverAddress']:
        if not arg1:
            call owner['receiverAddress'] with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner['receiverAddress'], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogGetToken(address(arg1), owner['receiverAddress'], ext_call.return_data[0]);
    else:
        if not arg1:
            call owner['owner'] with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner['owner'], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogGetToken(address(arg1), owner['owner'], ext_call.return_data[0]);
}

function sub_f14d7006(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = (64 * ('cd', 4).length) + 160
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[23337 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = (64 * ('cd', 4).length) + 160
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = code.data[23337 len 32 * ('cd', 4).length]
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require idx < ('cd', 4).length
            require idx < ('cd', 4).length
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
            require idx < ('cd', 36).length
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = cd[((32 * idx) + cd[36] + 36)]
        s = ext_call.success
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 64
    mem[(64 * ('cd', 4).length) + 224] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * ('cd', 4).length) + 192] = (32 * ('cd', 4).length) + 96
    mem[(98 * ('cd', 4).length) + 256] = mem[(32 * ('cd', 4).length) + 128]
    mem[(98 * ('cd', 4).length) + 288 len 32 * mem[(32 * ('cd', 4).length) + 128]] = mem[(32 * ('cd', 4).length) + 160 len 32 * mem[(32 * ('cd', 4).length) + 128]]
    return memory
      from mem[64]
       len (98 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + -mem[64] + 288
}

function sub_2cfbb7de(?) {
    require msg.sender == owner['owner']
    mem[128 len 1024] = code.data[23337 len 1024]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'EIP712Domain(string name,string '", "'version,uint256 chainId,address '", "'verifyingContract)'"))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'EIP712Domain(string name,string '", "'version,uint256 chainId,address '", "'verifyingContract)'"))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'EIP712Domain(string name,string '", "'version,uint256 chainId,address '", "'verifyingContract)'"))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'EIP712Domain(string name,string '", "'version,uint256 chainId,address '", "'verifyingContract)'"))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    mem[160] = 'EIP712DOMAIN_TYPEHASH'
    stor1['EIP712DOMAIN_TYPEHASH'].field_0 = 65
    s = 0
    idx = 128
    while 160 > idx:
        stor1['EIP712DOMAIN_TYPEHASH'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1['EIP712DOMAIN_TYPEHASH'].length + 31 / 32 > idx:
        stor1['EIP712DOMAIN_TYPEHASH'][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192 len 1024] = code.data[23337 len 1024]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'Agent(address delegater,uint256 '", "'expiration)'"))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'Agent(address delegater,uint256 '", "'expiration)'"))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'Agent(address delegater,uint256 '", "'expiration)'"))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('sha3', ('data', "'Agent(address delegater,uint256 '", "'expiration)'"))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    mem[224] = 'Agent_TYPEHASH'
    stor1['Agent_TYPEHASH'].field_0 = 65
    s = 0
    idx = 192
    while 224 > idx:
        stor1['Agent_TYPEHASH'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1['Agent_TYPEHASH'].length + 31 / 32 > idx:
        stor1['Agent_TYPEHASH'][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_723685a6(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307() and ceil32(arg2.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == owner[Mask(40, -(8 * ceil32(arg2.length) + -arg2.length + 5) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg4
    mem[32] = 1
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 320
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = stor1['EIP712DOMAIN_TYPEHASH'].length
    mem[0] = sha3(sha3('EIP712DOMAIN_TYPEHASH'), 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = stor1['EIP712DOMAIN_TYPEHASH'].field_0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 320
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + stor1['EIP712DOMAIN_TYPEHASH'].length + 288 > idx:
        mem[idx + 32] = stor1['EIP712DOMAIN_TYPEHASH'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _128 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 320]
    _139 = mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 320 len floor32(mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])] = mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + floor32(mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]) + -(mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]] % 32) + 352 len mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]] % 32] = mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + floor32(mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]) + -(mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]] % 32) + 64 len mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]] % 32]
    _197 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 320 len _139])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 320 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 352 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    _256 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 320 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 544 len 1024] = code.data[23337 len 1024]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + idx + 544 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('var', '_128'), ('var', '_197'), ('var', '_256'), ('param', 'arg3'), ('param', 'arg4')))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('var', '_128'), ('var', '_197'), ('var', '_256'), ('param', 'arg3'), ('param', 'arg4')))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('var', '_128'), ('var', '_197'), ('var', '_256'), ('param', 'arg3'), ('param', 'arg4')))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('sha3', ('data', ('var', '_128'), ('var', '_197'), ('var', '_256'), ('param', 'arg3'), ('param', 'arg4')))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 576] = 'DOMAIN_SEPARATOR'
    stor1['DOMAIN_SEPARATOR'].field_0 = 65
    s = 0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 544
    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 576 > idx:
        stor1['DOMAIN_SEPARATOR'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1['DOMAIN_SEPARATOR'].length + 31 / 32 > idx:
        stor1['DOMAIN_SEPARATOR'][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_c4a3b5b9(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 36).length
        mem[64] = (98 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        if not ('cd', 36).length:
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                if not cd[100]:
                    mem[mem[64]] = 'safeTransferFrom(address,address'
                    mem[mem[64] + 32] = ',uint256)'
                    require idx < mem[96]
                    _818 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _834 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _835 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_818)
                    mem[mem[64] + 100] = _834
                    _863 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_863 + 32] = mem[_863 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256)'))
                    _866 = mem[_863]
                    s = 0
                    while s < _866:
                        mem[_835 + s + 132] = mem[_863 + s + 32]
                        s = s + 32
                        continue 
                    if not _866 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _866 + _835 + -mem[64] + 128]
                    else:
                        mem[floor32(_866) + _835 + 132] = mem[floor32(_866) + _835 + -(_866 % 32) + 164 len _866 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_866) + _835 + -mem[64] + 160]
                else:
                    mem[mem[64]] = 'transferFrom(address,address,uin'
                    mem[mem[64] + 32] = 't256)'
                    require idx < mem[96]
                    _820 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _836 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _837 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_820)
                    mem[mem[64] + 100] = _836
                    _867 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_867 + 32] = mem[_867 + 36 len 28] or Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
                    _870 = mem[_867]
                    s = 0
                    while s < _870:
                        mem[_837 + s + 132] = mem[_867 + s + 32]
                        s = s + 32
                        continue 
                    if not _870 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _870 + _837 + -mem[64] + 128]
                    else:
                        mem[floor32(_870) + _837 + 132] = mem[floor32(_870) + _837 + -(_870 % 32) + 164 len _870 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_870) + _837 + -mem[64] + 160]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                s = ext_call.success
                idx = idx + 1
                continue 
            _782 = mem[64]
            mem[mem[64]] = 64
            _850 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
            t = mem[64] + 96
            while idx < _850:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_782 + 32] = (32 * _850) + 96
            _1066 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_782 + (32 * _850) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_782 + (32 * _850) + 128 len 32 * _1066] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _1066]
            return memory
              from mem[64]
               len _782 + (32 * _850) + (32 * _1066) + -mem[64] + 128
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            if not cd[100]:
                mem[mem[64]] = 'safeTransferFrom(address,address'
                mem[mem[64] + 32] = ',uint256)'
                require idx < mem[96]
                _822 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _838 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _839 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_822)
                mem[mem[64] + 100] = _838
                _872 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_872 + 32] = mem[_872 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256)'))
                _875 = mem[_872]
                s = 0
                while s < _875:
                    mem[_839 + s + 132] = mem[_872 + s + 32]
                    s = s + 32
                    continue 
                if not _875 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _875 + _839 + -mem[64] + 128]
                else:
                    mem[floor32(_875) + _839 + 132] = mem[floor32(_875) + _839 + -(_875 % 32) + 164 len _875 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_875) + _839 + -mem[64] + 160]
            else:
                mem[mem[64]] = 'transferFrom(address,address,uin'
                mem[mem[64] + 32] = 't256)'
                require idx < mem[96]
                _824 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _840 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _841 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_824)
                mem[mem[64] + 100] = _840
                _876 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_876 + 32] = mem[_876 + 36 len 28] or Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
                _879 = mem[_876]
                s = 0
                while s < _879:
                    mem[_841 + s + 132] = mem[_876 + s + 32]
                    s = s + 32
                    continue 
                if not _879 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _879 + _841 + -mem[64] + 128]
                else:
                    mem[floor32(_879) + _841 + 132] = mem[floor32(_879) + _841 + -(_879 % 32) + 164 len _879 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_879) + _841 + -mem[64] + 160]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            s = ext_call.success
            idx = idx + 1
            continue 
        _791 = mem[64]
        mem[mem[64]] = 64
        _851 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + 96
        while idx < _851:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_791 + 32] = (32 * _851) + 96
        _1069 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_791 + (32 * _851) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_791 + (32 * _851) + 128 len 32 * _1069] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _1069]
        return memory
          from mem[64]
           len _791 + (32 * _851) + (32 * _1069) + -mem[64] + 128
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 36).length
    mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    if not ('cd', 36).length:
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            if not cd[100]:
                mem[mem[64]] = 'safeTransferFrom(address,address'
                mem[mem[64] + 32] = ',uint256)'
                require idx < mem[96]
                _826 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _842 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _843 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_826)
                mem[mem[64] + 100] = _842
                _881 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_881 + 32] = mem[_881 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256)'))
                _884 = mem[_881]
                s = 0
                while s < _884:
                    mem[_843 + s + 132] = mem[_881 + s + 32]
                    s = s + 32
                    continue 
                if not _884 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _884 + _843 + -mem[64] + 128]
                else:
                    mem[floor32(_884) + _843 + 132] = mem[floor32(_884) + _843 + -(_884 % 32) + 164 len _884 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_884) + _843 + -mem[64] + 160]
            else:
                mem[mem[64]] = 'transferFrom(address,address,uin'
                mem[mem[64] + 32] = 't256)'
                require idx < mem[96]
                _828 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _844 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _845 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_828)
                mem[mem[64] + 100] = _844
                _885 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_885 + 32] = mem[_885 + 36 len 28] or Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
                _888 = mem[_885]
                s = 0
                while s < _888:
                    mem[_845 + s + 132] = mem[_885 + s + 32]
                    s = s + 32
                    continue 
                if not _888 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _888 + _845 + -mem[64] + 128]
                else:
                    mem[floor32(_888) + _845 + 132] = mem[floor32(_888) + _845 + -(_888 % 32) + 164 len _888 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_888) + _845 + -mem[64] + 160]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            s = ext_call.success
            idx = idx + 1
            continue 
        _800 = mem[64]
        mem[mem[64]] = 64
        _852 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + 96
        while idx < _852:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_800 + 32] = (32 * _852) + 96
        _1072 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_800 + (32 * _852) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_800 + (32 * _852) + 128 len 32 * _1072] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _1072]
        return memory
          from mem[64]
           len _800 + (32 * _852) + (32 * _1072) + -mem[64] + 128
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    s = 0
    idx = 0
    while idx < ('cd', 36).length:
        if not cd[100]:
            mem[mem[64]] = 'safeTransferFrom(address,address'
            mem[mem[64] + 32] = ',uint256)'
            require idx < mem[96]
            _830 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _846 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _847 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_830)
            mem[mem[64] + 100] = _846
            _890 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_890 + 32] = mem[_890 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256)'))
            _893 = mem[_890]
            s = 0
            while s < _893:
                mem[_847 + s + 132] = mem[_890 + s + 32]
                s = s + 32
                continue 
            if not _893 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _893 + _847 + -mem[64] + 128]
            else:
                mem[floor32(_893) + _847 + 132] = mem[floor32(_893) + _847 + -(_893 % 32) + 164 len _893 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_893) + _847 + -mem[64] + 160]
        else:
            mem[mem[64]] = 'transferFrom(address,address,uin'
            mem[mem[64] + 32] = 't256)'
            require idx < mem[96]
            _832 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _848 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _849 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_832)
            mem[mem[64] + 100] = _848
            _894 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_894 + 32] = mem[_894 + 36 len 28] or Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
            _897 = mem[_894]
            s = 0
            while s < _897:
                mem[_849 + s + 132] = mem[_894 + s + 32]
                s = s + 32
                continue 
            if not _897 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _897 + _849 + -mem[64] + 128]
            else:
                mem[floor32(_897) + _849 + 132] = mem[floor32(_897) + _849 + -(_897 % 32) + 164 len _897 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_897) + _849 + -mem[64] + 160]
        if not ext_call.success:
            require idx < mem[96]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        s = ext_call.success
        idx = idx + 1
        continue 
    _809 = mem[64]
    mem[mem[64]] = 64
    _853 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    idx = 0
    s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    t = mem[64] + 96
    while idx < _853:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_809 + 32] = (32 * _853) + 96
    _1075 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[_809 + (32 * _853) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[_809 + (32 * _853) + 128 len 32 * _1075] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _1075]
    return memory
      from mem[64]
       len _809 + (32 * _853) + (32 * _1075) + -mem[64] + 128
}

function sub_788ab883(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192 <= test266151307() and (32 * ('cd', 100).length) + 192 >= 160
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = ('cd', 36).length
            mem[64] = (131 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288
            if not ('cd', 36).length:
                s = 0
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64]] = 'safeTransferFrom(address,address'
                    mem[mem[64] + 32] = ',uint256,uint256,bytes)'
                    require idx < mem[96]
                    _1544 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    _1567 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _1583 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _1584 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1544)
                    mem[mem[64] + 100] = _1567
                    mem[mem[64] + 132] = _1583
                    mem[mem[64] + 164] = 160
                    mem[mem[64] + 196] = 0
                    _1639 = mem[64]
                    mem[mem[64]] = 196
                    mem[64] = mem[64] + 228
                    mem[_1639 + 32] = mem[_1639 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
                    _1642 = mem[_1639]
                    s = 0
                    while s < _1642:
                        mem[_1584 + s + 228] = mem[_1639 + s + 32]
                        s = s + 32
                        continue 
                    if not _1642 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1642 + _1584 + -mem[64] + 224]
                    else:
                        mem[floor32(_1642) + _1584 + 228] = mem[floor32(_1642) + _1584 + -(_1642 % 32) + 260 len _1642 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_1642) + _1584 + -mem[64] + 256]
                    if not ext_call.success:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                        require idx < mem[(32 * ('cd', 36).length) + 128]
                        require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                        mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                        mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    s = ext_call.success
                    idx = idx + 1
                    continue 
                _1543 = mem[64]
                mem[mem[64]] = 96
                _1599 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                idx = 0
                s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
                t = mem[64] + 128
                while idx < _1599:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1543 + 32] = (32 * _1599) + 128
                _1911 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                mem[_1543 + (32 * _1599) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                mem[_1543 + (32 * _1599) + 160 len 32 * _1911] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1911]
                mem[_1543 + 64] = (32 * _1599) + (32 * _1911) + 160
                _2095 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                mem[_1543 + (32 * _1599) + (32 * _1911) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                mem[_1543 + (32 * _1599) + (32 * _1911) + 192 len 32 * _2095] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2095]
                return memory
                  from mem[64]
                   len _1543 + (32 * _1599) + (32 * _1911) + (32 * _2095) + -mem[64] + 192
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64]] = 'safeTransferFrom(address,address'
                mem[mem[64] + 32] = ',uint256,uint256,bytes)'
                require idx < mem[96]
                _1547 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                _1569 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _1585 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1586 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1547)
                mem[mem[64] + 100] = _1569
                mem[mem[64] + 132] = _1585
                mem[mem[64] + 164] = 160
                mem[mem[64] + 196] = 0
                _1643 = mem[64]
                mem[mem[64]] = 196
                mem[64] = mem[64] + 228
                mem[_1643 + 32] = mem[_1643 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
                _1646 = mem[_1643]
                s = 0
                while s < _1646:
                    mem[_1586 + s + 228] = mem[_1643 + s + 32]
                    s = s + 32
                    continue 
                if not _1646 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1646 + _1586 + -mem[64] + 224]
                else:
                    mem[floor32(_1646) + _1586 + 228] = mem[floor32(_1646) + _1586 + -(_1646 % 32) + 260 len _1646 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_1646) + _1586 + -mem[64] + 256]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                    mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = ext_call.success
                idx = idx + 1
                continue 
            _1546 = mem[64]
            mem[mem[64]] = 96
            _1600 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
            t = mem[64] + 128
            while idx < _1600:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1600) + 128
            _1915 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[_1546 + (32 * _1600) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[_1546 + (32 * _1600) + 160 len 32 * _1915] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1915]
            var86001 = _1915
            mem[_1546 + 64] = (32 * _1600) + (32 * _1915) + 160
            _2096 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[_1546 + (32 * _1600) + (32 * _1915) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[_1546 + (32 * _1600) + (32 * _1915) + 192 len 32 * _2096] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2096]
            var95002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2096) + 288
            return memory
              from mem[64]
               len _1546 + (32 * _1600) + (32 * _1915) + (32 * _2096) + -mem[64] + 192
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = ('cd', 36).length
        mem[64] = (131 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288
        if not ('cd', 36).length:
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64]] = 'safeTransferFrom(address,address'
                mem[mem[64] + 32] = ',uint256,uint256,bytes)'
                require idx < mem[96]
                _1550 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                _1571 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _1587 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1588 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1550)
                mem[mem[64] + 100] = _1571
                mem[mem[64] + 132] = _1587
                mem[mem[64] + 164] = 160
                mem[mem[64] + 196] = 0
                _1647 = mem[64]
                mem[mem[64]] = 196
                mem[64] = mem[64] + 228
                mem[_1647 + 32] = mem[_1647 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
                _1650 = mem[_1647]
                s = 0
                while s < _1650:
                    mem[_1588 + s + 228] = mem[_1647 + s + 32]
                    s = s + 32
                    continue 
                if not _1650 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1650 + _1588 + -mem[64] + 224]
                else:
                    mem[floor32(_1650) + _1588 + 228] = mem[floor32(_1650) + _1588 + -(_1650 % 32) + 260 len _1650 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_1650) + _1588 + -mem[64] + 256]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                    mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = ext_call.success
                idx = idx + 1
                continue 
            _1549 = mem[64]
            mem[mem[64]] = 96
            _1601 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
            t = mem[64] + 128
            while idx < _1601:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1549 + 32] = (32 * _1601) + 128
            _1919 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[_1549 + (32 * _1601) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[_1549 + (32 * _1601) + 160 len 32 * _1919] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1919]
            var86001 = _1919
            mem[_1549 + 64] = (32 * _1601) + (32 * _1919) + 160
            _2097 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[_1549 + (32 * _1601) + (32 * _1919) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[_1549 + (32 * _1601) + (32 * _1919) + 192 len 32 * _2097] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2097]
            var95002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2097) + 288
            return memory
              from mem[64]
               len _1549 + (32 * _1601) + (32 * _1919) + (32 * _2097) + -mem[64] + 192
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64]] = 'safeTransferFrom(address,address'
            mem[mem[64] + 32] = ',uint256,uint256,bytes)'
            require idx < mem[96]
            _1553 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            _1573 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _1589 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _1590 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1553)
            mem[mem[64] + 100] = _1573
            mem[mem[64] + 132] = _1589
            mem[mem[64] + 164] = 160
            mem[mem[64] + 196] = 0
            _1651 = mem[64]
            mem[mem[64]] = 196
            mem[64] = mem[64] + 228
            mem[_1651 + 32] = mem[_1651 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
            _1654 = mem[_1651]
            s = 0
            while s < _1654:
                mem[_1590 + s + 228] = mem[_1651 + s + 32]
                s = s + 32
                continue 
            if not _1654 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1654 + _1590 + -mem[64] + 224]
            else:
                mem[floor32(_1654) + _1590 + 228] = mem[floor32(_1654) + _1590 + -(_1654 % 32) + 260 len _1654 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_1654) + _1590 + -mem[64] + 256]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            s = ext_call.success
            idx = idx + 1
            continue 
        _1552 = mem[64]
        mem[mem[64]] = 96
        _1602 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        t = mem[64] + 128
        while idx < _1602:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1552 + 32] = (32 * _1602) + 128
        _1923 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[_1552 + (32 * _1602) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[_1552 + (32 * _1602) + 160 len 32 * _1923] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1923]
        var87001 = _1923
        mem[_1552 + 64] = (32 * _1602) + (32 * _1923) + 160
        _2098 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
        mem[_1552 + (32 * _1602) + (32 * _1923) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
        mem[_1552 + (32 * _1602) + (32 * _1923) + 192 len 32 * _2098] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2098]
        var96002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2098) + 288
        return memory
          from mem[64]
           len _1552 + (32 * _1602) + (32 * _1923) + (32 * _2098) + -mem[64] + 192
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = ('cd', 36).length
        mem[64] = (131 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288
        if not ('cd', 36).length:
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64]] = 'safeTransferFrom(address,address'
                mem[mem[64] + 32] = ',uint256,uint256,bytes)'
                require idx < mem[96]
                _1556 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                _1575 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _1591 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1592 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1556)
                mem[mem[64] + 100] = _1575
                mem[mem[64] + 132] = _1591
                mem[mem[64] + 164] = 160
                mem[mem[64] + 196] = 0
                _1655 = mem[64]
                mem[mem[64]] = 196
                mem[64] = mem[64] + 228
                mem[_1655 + 32] = mem[_1655 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
                _1658 = mem[_1655]
                s = 0
                while s < _1658:
                    mem[_1592 + s + 228] = mem[_1655 + s + 32]
                    s = s + 32
                    continue 
                if not _1658 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1658 + _1592 + -mem[64] + 224]
                else:
                    mem[floor32(_1658) + _1592 + 228] = mem[floor32(_1658) + _1592 + -(_1658 % 32) + 260 len _1658 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_1658) + _1592 + -mem[64] + 256]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                    mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = ext_call.success
                idx = idx + 1
                continue 
            _1555 = mem[64]
            mem[mem[64]] = 96
            _1603 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
            t = mem[64] + 128
            while idx < _1603:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1555 + 32] = (32 * _1603) + 128
            _1927 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[_1555 + (32 * _1603) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[_1555 + (32 * _1603) + 160 len 32 * _1927] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1927]
            var86001 = _1927
            mem[_1555 + 64] = (32 * _1603) + (32 * _1927) + 160
            _2099 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[_1555 + (32 * _1603) + (32 * _1927) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[_1555 + (32 * _1603) + (32 * _1927) + 192 len 32 * _2099] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2099]
            var95002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2099) + 288
            return memory
              from mem[64]
               len _1555 + (32 * _1603) + (32 * _1927) + (32 * _2099) + -mem[64] + 192
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64]] = 'safeTransferFrom(address,address'
            mem[mem[64] + 32] = ',uint256,uint256,bytes)'
            require idx < mem[96]
            _1559 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            _1577 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _1593 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _1594 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1559)
            mem[mem[64] + 100] = _1577
            mem[mem[64] + 132] = _1593
            mem[mem[64] + 164] = 160
            mem[mem[64] + 196] = 0
            _1659 = mem[64]
            mem[mem[64]] = 196
            mem[64] = mem[64] + 228
            mem[_1659 + 32] = mem[_1659 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
            _1662 = mem[_1659]
            s = 0
            while s < _1662:
                mem[_1594 + s + 228] = mem[_1659 + s + 32]
                s = s + 32
                continue 
            if not _1662 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1662 + _1594 + -mem[64] + 224]
            else:
                mem[floor32(_1662) + _1594 + 228] = mem[floor32(_1662) + _1594 + -(_1662 % 32) + 260 len _1662 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_1662) + _1594 + -mem[64] + 256]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            s = ext_call.success
            idx = idx + 1
            continue 
        _1558 = mem[64]
        mem[mem[64]] = 96
        _1604 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        t = mem[64] + 128
        while idx < _1604:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1558 + 32] = (32 * _1604) + 128
        _1931 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[_1558 + (32 * _1604) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[_1558 + (32 * _1604) + 160 len 32 * _1931] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1931]
        var87001 = _1931
        mem[_1558 + 64] = (32 * _1604) + (32 * _1931) + 160
        _2100 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
        mem[_1558 + (32 * _1604) + (32 * _1931) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
        mem[_1558 + (32 * _1604) + (32 * _1931) + 192 len 32 * _2100] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2100]
        var96002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2100) + 288
        return memory
          from mem[64]
           len _1558 + (32 * _1604) + (32 * _1931) + (32 * _2100) + -mem[64] + 192
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    mem[(98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = ('cd', 36).length
    mem[64] = (99 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288
    if not ('cd', 36).length:
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64]] = 'safeTransferFrom(address,address'
            mem[mem[64] + 32] = ',uint256,uint256,bytes)'
            require idx < mem[96]
            _1562 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            _1579 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _1595 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _1596 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1562)
            mem[mem[64] + 100] = _1579
            mem[mem[64] + 132] = _1595
            mem[mem[64] + 164] = 160
            mem[mem[64] + 196] = 0
            _1663 = mem[64]
            mem[mem[64]] = 196
            mem[64] = mem[64] + 228
            mem[_1663 + 32] = mem[_1663 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
            _1666 = mem[_1663]
            s = 0
            while s < _1666:
                mem[_1596 + s + 228] = mem[_1663 + s + 32]
                s = s + 32
                continue 
            if not _1666 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1666 + _1596 + -mem[64] + 224]
            else:
                mem[floor32(_1666) + _1596 + 228] = mem[floor32(_1666) + _1596 + -(_1666 % 32) + 260 len _1666 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_1666) + _1596 + -mem[64] + 256]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
                mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            s = ext_call.success
            idx = idx + 1
            continue 
        _1561 = mem[64]
        mem[mem[64]] = 96
        _1605 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        t = mem[64] + 128
        while idx < _1605:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1605) + 128
        _1935 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[_1561 + (32 * _1605) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[_1561 + (32 * _1605) + 160 len 32 * _1935] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1935]
        var87001 = _1935
        mem[_1561 + 64] = (32 * _1605) + (32 * _1935) + 160
        _2101 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
        mem[_1561 + (32 * _1605) + (32 * _1935) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
        mem[_1561 + (32 * _1605) + (32 * _1935) + 192 len 32 * _2101] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2101]
        var96002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2101) + 288
        return memory
          from mem[64]
           len _1561 + (32 * _1605) + (32 * _1935) + (32 * _2101) + -mem[64] + 192
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    s = 0
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64]] = 'safeTransferFrom(address,address'
        mem[mem[64] + 32] = ',uint256,uint256,bytes)'
        require idx < mem[96]
        _1565 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        _1581 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _1597 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        _1598 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_1565)
        mem[mem[64] + 100] = _1581
        mem[mem[64] + 132] = _1597
        mem[mem[64] + 164] = 160
        mem[mem[64] + 196] = 0
        _1667 = mem[64]
        mem[mem[64]] = 196
        mem[64] = mem[64] + 228
        mem[_1667 + 32] = mem[_1667 + 36 len 28] or Mask(32, 224, sha3('safeTransferFrom(address,address', ',uint256,uint256,bytes)'))
        _1670 = mem[_1667]
        s = 0
        while s < _1670:
            mem[_1598 + s + 228] = mem[_1667 + s + 32]
            s = s + 32
            continue 
        if not _1670 % 32:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1670 + _1598 + -mem[64] + 224]
        else:
            mem[floor32(_1670) + _1598 + 228] = mem[floor32(_1670) + _1598 + -(_1670 % 32) + 260 len _1670 % 32]
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(_1670) + _1598 + -mem[64] + 256]
        if not ext_call.success:
            require idx < mem[96]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            require idx < mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            mem[(32 * idx) + (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        s = ext_call.success
        idx = idx + 1
        continue 
    _1564 = mem[64]
    mem[mem[64]] = 96
    _1606 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
    mem[mem[64] + 96] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
    idx = 0
    s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    t = mem[64] + 128
    while idx < _1606:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _1606) + 128
    _1939 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
    mem[_1564 + (32 * _1606) + 128] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
    mem[_1564 + (32 * _1606) + 160 len 32 * _1939] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _1939]
    var88001 = _1939
    mem[_1564 + 64] = (32 * _1606) + (32 * _1939) + 160
    _2102 = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
    mem[_1564 + (32 * _1606) + (32 * _1939) + 160] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
    mem[_1564 + (32 * _1606) + (32 * _1939) + 192 len 32 * _2102] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288 len 32 * _2102]
    var97002 = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * _2102) + 288
    return memory
      from mem[64]
       len _1564 + (32 * _1606) + (32 * _1939) + (32 * _2102) + -mem[64] + 192
}

function sub_35fdf13a(?) {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 36).length
        mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        if not ('cd', 36).length:
            if cd[132]:
                s = 0
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    if not cd[132]:
                        require idx < mem[(32 * ('cd', 36).length) + 128]
                        _2230 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                        _2231 = mem[64]
                        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 68] = _2230
                        _2362 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_2362 + 32] = mem[_2362 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _2365 = mem[_2362]
                        s = 0
                        while s < _2365:
                            mem[_2231 + s + 100] = mem[_2362 + s + 32]
                            s = s + 32
                            continue 
                        if not _2365 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2365 + _2231 + -mem[64] + 96]
                        else:
                            mem[floor32(_2365) + _2231 + 100] = mem[floor32(_2365) + _2231 + -(_2365 % 32) + 132 len _2365 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2365) + _2231 + -mem[64] + 128]
                    else:
                        _2212 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 36).length) + 128]
                        _2232 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                        _2233 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(_2212)
                        mem[mem[64] + 100] = _2232
                        _2404 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_2404 + 32] = mem[_2404 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        _2407 = mem[_2404]
                        s = 0
                        while s < _2407:
                            mem[_2233 + s + 132] = mem[_2404 + s + 32]
                            s = s + 32
                            continue 
                        if not _2407 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2407 + _2233 + -mem[64] + 128]
                        else:
                            mem[floor32(_2407) + _2233 + 132] = mem[floor32(_2407) + _2233 + -(_2407 % 32) + 164 len _2407 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2407) + _2233 + -mem[64] + 160]
                    if not ext_call.success:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                        require idx < mem[(32 * ('cd', 36).length) + 128]
                        require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    s = ext_call.success
                    idx = idx + 1
                    continue 
                _2190 = mem[64]
                mem[mem[64]] = 64
                _2250 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                idx = 0
                s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
                t = mem[64] + 96
                while idx < _2250:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2190 + 32] = (32 * _2250) + 96
                _2982 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[_2190 + (32 * _2250) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[_2190 + (32 * _2250) + 128 len 32 * _2982] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _2982]
                return memory
                  from mem[64]
                   len _2190 + (32 * _2250) + (32 * _2982) + -mem[64] + 128
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = msg.sender
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = this.address
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = cd[100]
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 100
            mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 28]
            mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 452] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 480 len 4]
            call address(cd[4]).mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 4] with:
                 gas gas_remaining wei
                args mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 360 len 124]
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                if not cd[132]:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _2989 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _2990 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 68] = _2989
                    _3150 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_3150 + 32] = mem[_3150 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _3153 = mem[_3150]
                    s = 0
                    while s < _3153:
                        mem[_2990 + s + 100] = mem[_3150 + s + 32]
                        s = s + 32
                        continue 
                    if not _3153 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3153 + _2990 + -mem[64] + 96]
                    else:
                        mem[floor32(_3153) + _2990 + 100] = mem[floor32(_3153) + _2990 + -(_3153 % 32) + 132 len _3153 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_3153) + _2990 + -mem[64] + 128]
                else:
                    _2950 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _2991 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _2992 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_2950)
                    mem[mem[64] + 100] = _2991
                    _3210 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_3210 + 32] = mem[_3210 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _3213 = mem[_3210]
                    s = 0
                    while s < _3213:
                        mem[_2992 + s + 132] = mem[_3210 + s + 32]
                        s = s + 32
                        continue 
                    if not _3213 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3213 + _2992 + -mem[64] + 128]
                    else:
                        mem[floor32(_3213) + _2992 + 132] = mem[floor32(_3213) + _2992 + -(_3213 % 32) + 164 len _3213 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_3213) + _2992 + -mem[64] + 160]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                s = ext_call.success
                idx = idx + 1
                continue 
            _2909 = mem[64]
            mem[mem[64]] = 64
            _3033 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
            t = mem[64] + 96
            while idx < _3033:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2909 + 32] = (32 * _3033) + 96
            _3565 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_2909 + (32 * _3033) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_2909 + (32 * _3033) + 128 len 32 * _3565] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _3565]
            return memory
              from mem[64]
               len _2909 + (32 * _3033) + (32 * _3565) + -mem[64] + 128
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
        if cd[132]:
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                if not cd[132]:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _2235 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _2236 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 68] = _2235
                    _2367 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2367 + 32] = mem[_2367 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _2370 = mem[_2367]
                    s = 0
                    while s < _2370:
                        mem[_2236 + s + 100] = mem[_2367 + s + 32]
                        s = s + 32
                        continue 
                    if not _2370 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2370 + _2236 + -mem[64] + 96]
                    else:
                        mem[floor32(_2370) + _2236 + 100] = mem[floor32(_2370) + _2236 + -(_2370 % 32) + 132 len _2370 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_2370) + _2236 + -mem[64] + 128]
                else:
                    _2217 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _2237 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _2238 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_2217)
                    mem[mem[64] + 100] = _2237
                    _2415 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2415 + 32] = mem[_2415 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _2418 = mem[_2415]
                    s = 0
                    while s < _2418:
                        mem[_2238 + s + 132] = mem[_2415 + s + 32]
                        s = s + 32
                        continue 
                    if not _2418 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2418 + _2238 + -mem[64] + 128]
                    else:
                        mem[floor32(_2418) + _2238 + 132] = mem[floor32(_2418) + _2238 + -(_2418 % 32) + 164 len _2418 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_2418) + _2238 + -mem[64] + 160]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                s = ext_call.success
                idx = idx + 1
                continue 
            _2195 = mem[64]
            mem[mem[64]] = 64
            _2252 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
            t = mem[64] + 96
            while idx < _2252:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2195 + 32] = (32 * _2252) + 96
            _2993 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_2195 + (32 * _2252) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_2195 + (32 * _2252) + 128 len 32 * _2993] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _2993]
            return memory
              from mem[64]
               len _2195 + (32 * _2252) + (32 * _2993) + -mem[64] + 128
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = msg.sender
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = this.address
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = cd[100]
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 100
        mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 4] = unknown_0x23b872dd(?????)
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 28]
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 452] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 480 len 4]
        call address(cd[4]).mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 4] with:
             gas gas_remaining wei
            args mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 360 len 124]
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if not cd[132]:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _3000 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _3001 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _3000
                _3158 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_3158 + 32] = mem[_3158 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _3161 = mem[_3158]
                s = 0
                while s < _3161:
                    mem[_3001 + s + 100] = mem[_3158 + s + 32]
                    s = s + 32
                    continue 
                if not _3161 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3161 + _3001 + -mem[64] + 96]
                else:
                    mem[floor32(_3161) + _3001 + 100] = mem[floor32(_3161) + _3001 + -(_3161 % 32) + 132 len _3161 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_3161) + _3001 + -mem[64] + 128]
            else:
                _2960 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _3002 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _3003 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_2960)
                mem[mem[64] + 100] = _3002
                _3222 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_3222 + 32] = mem[_3222 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _3225 = mem[_3222]
                s = 0
                while s < _3225:
                    mem[_3003 + s + 132] = mem[_3222 + s + 32]
                    s = s + 32
                    continue 
                if not _3225 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3225 + _3003 + -mem[64] + 128]
                else:
                    mem[floor32(_3225) + _3003 + 132] = mem[floor32(_3225) + _3003 + -(_3225 % 32) + 164 len _3225 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_3225) + _3003 + -mem[64] + 160]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            s = ext_call.success
            idx = idx + 1
            continue 
        _2919 = mem[64]
        mem[mem[64]] = 64
        _3041 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + 96
        while idx < _3041:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2919 + 32] = (32 * _3041) + 96
        _3571 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_2919 + (32 * _3041) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_2919 + (32 * _3041) + 128 len 32 * _3571] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _3571]
        return memory
          from mem[64]
           len _2919 + (32 * _3041) + (32 * _3571) + -mem[64] + 128
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 36).length
    mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    if not ('cd', 36).length:
        if cd[132]:
            s = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                if not cd[132]:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _2240 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _2241 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 68] = _2240
                    _2372 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_2372 + 32] = mem[_2372 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _2375 = mem[_2372]
                    s = 0
                    while s < _2375:
                        mem[_2241 + s + 100] = mem[_2372 + s + 32]
                        s = s + 32
                        continue 
                    if not _2375 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2375 + _2241 + -mem[64] + 96]
                    else:
                        mem[floor32(_2375) + _2241 + 100] = mem[floor32(_2375) + _2241 + -(_2375 % 32) + 132 len _2375 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_2375) + _2241 + -mem[64] + 128]
                else:
                    _2222 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    _2242 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    _2243 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_2222)
                    mem[mem[64] + 100] = _2242
                    _2426 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2426 + 32] = mem[_2426 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _2429 = mem[_2426]
                    s = 0
                    while s < _2429:
                        mem[_2243 + s + 132] = mem[_2426 + s + 32]
                        s = s + 32
                        continue 
                    if not _2429 % 32:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2429 + _2243 + -mem[64] + 128]
                    else:
                        mem[floor32(_2429) + _2243 + 132] = mem[floor32(_2429) + _2243 + -(_2429 % 32) + 164 len _2429 % 32]
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_2429) + _2243 + -mem[64] + 160]
                if not ext_call.success:
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                s = ext_call.success
                idx = idx + 1
                continue 
            _2200 = mem[64]
            mem[mem[64]] = 64
            _2254 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            idx = 0
            s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
            t = mem[64] + 96
            while idx < _2254:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2200 + 32] = (32 * _2254) + 96
            _3004 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_2200 + (32 * _2254) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[_2200 + (32 * _2254) + 128 len 32 * _3004] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _3004]
            return memory
              from mem[64]
               len _2200 + (32 * _2254) + (32 * _3004) + -mem[64] + 128
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = msg.sender
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = this.address
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = cd[100]
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 100
        mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 4] = unknown_0x23b872dd(?????)
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 28]
        mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 452] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 480 len 4]
        call address(cd[4]).mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 4] with:
             gas gas_remaining wei
            args mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 360 len 124]
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if not cd[132]:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _3011 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _3012 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _3011
                _3166 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_3166 + 32] = mem[_3166 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _3169 = mem[_3166]
                s = 0
                while s < _3169:
                    mem[_3012 + s + 100] = mem[_3166 + s + 32]
                    s = s + 32
                    continue 
                if not _3169 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3169 + _3012 + -mem[64] + 96]
                else:
                    mem[floor32(_3169) + _3012 + 100] = mem[floor32(_3169) + _3012 + -(_3169 % 32) + 132 len _3169 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_3169) + _3012 + -mem[64] + 128]
            else:
                _2970 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _3013 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _3014 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_2970)
                mem[mem[64] + 100] = _3013
                _3234 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_3234 + 32] = mem[_3234 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _3237 = mem[_3234]
                s = 0
                while s < _3237:
                    mem[_3014 + s + 132] = mem[_3234 + s + 32]
                    s = s + 32
                    continue 
                if not _3237 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3237 + _3014 + -mem[64] + 128]
                else:
                    mem[floor32(_3237) + _3014 + 132] = mem[floor32(_3237) + _3014 + -(_3237 % 32) + 164 len _3237 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_3237) + _3014 + -mem[64] + 160]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            s = ext_call.success
            idx = idx + 1
            continue 
        _2929 = mem[64]
        mem[mem[64]] = 64
        _3049 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + 96
        while idx < _3049:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2929 + 32] = (32 * _3049) + 96
        _3577 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_2929 + (32 * _3049) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_2929 + (32 * _3049) + 128 len 32 * _3577] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _3577]
        return memory
          from mem[64]
           len _2929 + (32 * _3049) + (32 * _3577) + -mem[64] + 128
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 36).length] = code.data[23337 len 32 * ('cd', 36).length]
    if cd[132]:
        s = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if not cd[132]:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _2245 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _2246 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _2245
                _2377 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2377 + 32] = mem[_2377 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _2380 = mem[_2377]
                s = 0
                while s < _2380:
                    mem[_2246 + s + 100] = mem[_2377 + s + 32]
                    s = s + 32
                    continue 
                if not _2380 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2380 + _2246 + -mem[64] + 96]
                else:
                    mem[floor32(_2380) + _2246 + 100] = mem[floor32(_2380) + _2246 + -(_2380 % 32) + 132 len _2380 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_2380) + _2246 + -mem[64] + 128]
            else:
                _2227 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _2247 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _2248 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_2227)
                mem[mem[64] + 100] = _2247
                _2437 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_2437 + 32] = mem[_2437 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _2440 = mem[_2437]
                s = 0
                while s < _2440:
                    mem[_2248 + s + 132] = mem[_2437 + s + 32]
                    s = s + 32
                    continue 
                if not _2440 % 32:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2440 + _2248 + -mem[64] + 128]
                else:
                    mem[floor32(_2440) + _2248 + 132] = mem[floor32(_2440) + _2248 + -(_2440 % 32) + 164 len _2440 % 32]
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_2440) + _2248 + -mem[64] + 160]
            if not ext_call.success:
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            s = ext_call.success
            idx = idx + 1
            continue 
        _2205 = mem[64]
        mem[mem[64]] = 64
        _2256 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + 96
        while idx < _2256:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2205 + 32] = (32 * _2256) + 96
        _3015 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_2205 + (32 * _2256) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_2205 + (32 * _2256) + 128 len 32 * _3015] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _3015]
        return memory
          from mem[64]
           len _2205 + (32 * _2256) + (32 * _3015) + -mem[64] + 128
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = msg.sender
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = this.address
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = cd[100]
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 100
    mem[64] = (3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 4] = unknown_0x23b872dd(?????)
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[100], mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 28]
    var70001 = 128
    mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 452] = mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 480 len 4]
    call address(cd[4]).mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len 4] with:
         gas gas_remaining wei
        args mem[(3 * 32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 360 len 124]
    s = 0
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        if not cd[132]:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _3022 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _3023 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 68] = _3022
            _3174 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_3174 + 32] = mem[_3174 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _3177 = mem[_3174]
            s = 0
            while s < _3177:
                mem[_3023 + s + 100] = mem[_3174 + s + 32]
                s = s + 32
                continue 
            if not _3177 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3177 + _3023 + -mem[64] + 96]
            else:
                mem[floor32(_3177) + _3023 + 100] = mem[floor32(_3177) + _3023 + -(_3177 % 32) + 132 len _3177 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_3177) + _3023 + -mem[64] + 128]
        else:
            _2980 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _3024 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            _3025 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_2980)
            mem[mem[64] + 100] = _3024
            _3246 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_3246 + 32] = mem[_3246 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _3249 = mem[_3246]
            s = 0
            while s < _3249:
                mem[_3025 + s + 132] = mem[_3246 + s + 32]
                s = s + 32
                continue 
            if not _3249 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3249 + _3025 + -mem[64] + 128]
            else:
                mem[floor32(_3249) + _3025 + 132] = mem[floor32(_3249) + _3025 + -(_3249 % 32) + 164 len _3249 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_3249) + _3025 + -mem[64] + 160]
        if not ext_call.success:
            require idx < mem[96]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        s = ext_call.success
        idx = idx + 1
        continue 
    _2939 = mem[64]
    mem[mem[64]] = 64
    _3057 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    idx = 0
    s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    t = mem[64] + 96
    while idx < _3057:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_2939 + 32] = (32 * _3057) + 96
    _3583 = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[_2939 + (32 * _3057) + 96] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[_2939 + (32 * _3057) + 128 len 32 * _3583] = mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * _3583]
    return memory
      from mem[64]
       len _2939 + (32 * _3057) + (32 * _3583) + -mem[64] + 128
}



}
