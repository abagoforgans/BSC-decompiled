contract main {




// =====================  Runtime code  =====================


#
#  - sub_95c2c673(?)
#  - sub_abbc44ed(?)
#  - sub_ae9d0a64(?)
#  - sub_bbcb2bbb(?)
#  - sub_cce6534f(?)
#  - sub_d07aa4c7(?)
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

function sub_978b0089(?) {
    require calldata.size - 4 >= 32
    mem[220] = Mask(192, 0, arg1), Mask(32, 224, 'txRecord') >> 224 or Mask(32, 224, mem[220])
    return bool(stor4['txRecord'][msg.sender][uint32(arg1)][mem[220 len 28]])
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
    return bool(stor4[Mask(184, 72, Mask(112, 0, arg1), 0, 0) >> 72])
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

function registerVIP() payable {
    require msg.value >= referrerFee['vipFee']
    if owner['receiverAddress']:
        call owner['receiverAddress'] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor4[0][Mask(112, 144, Mask(112, 0, msg.sender), 0, 0) >> 144] = 1
    else:
        call owner['owner'] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor4[Mask(184, 72, Mask(112, 0, msg.sender), 0, 0) >> 72] = 1
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
    mem[128 len 1024] = code.data[14805 len 1024]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return 32, 32, mem[128]
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
        u = mem[64]
        s = mem[_40]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_40])] = mem[_40 + floor32(mem[_40]) + -(mem[_40] % 32) + 64 len mem[_40] % 32] or Mask(8 * -(mem[_40] % 32) + 32, -(8 * -(mem[_40] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_40])])
        mem[0] = sha3(mem[mem[64] len _42 + _39 + -mem[64] + 55])
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
        u = mem[64]
        s = mem[_40]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_40])] = mem[_40 + floor32(mem[_40]) + -(mem[_40] % 32) + 64 len mem[_40] % 32] or Mask(8 * -(mem[_40] % 32) + 32, -(8 * -(mem[_40] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_40])])
        mem[0] = sha3(mem[mem[64] len _42 + _39 + -mem[64] + 55])
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

function sub_2cfbb7de(?) {
    require msg.sender == owner['owner']
    mem[128 len 1024] = code.data[14805 len 1024]
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
    mem[192 len 1024] = code.data[14805 len 1024]
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
    referrerFee['vipFee'] = 20 * 10^18
    require msg.sender == owner['owner']
    referrerFee['referrerFee'] = 10^17
    require msg.sender == owner['owner']
    mem[128 len 1024] = code.data[14805 len 1024]
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
    mem[192 len 1024] = code.data[14805 len 1024]
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
    stor4['initialized'] = 1
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
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor1['EIP712DOMAIN_TYPEHASH'].length) + 544 len 1024] = code.data[14805 len 1024]
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



}
