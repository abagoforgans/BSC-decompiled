contract main {




// =====================  Runtime code  =====================


const EIP712_DOMAIN_TYPEHASH = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472


array of uint256 stor0;
array of uint256 version;
array of uint256 stor2;
mapping of uint256 vipPrice;
mapping of address owner;
mapping of uint8 stor7;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function getVipPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return vipPrice['vip'][arg1]
}

function getUnlimAccess(address arg1) {
    require calldata.size - 4 >= 32
    return vipPrice['unlimAccess'][arg1]
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return address(stor2.length)
}

function upgradeabilityOwner() {
    return address(stor0.length)
}

function referralFee() {
    return vipPrice['referralFee']
}

function owner() {
    return owner['owner']
}

function getAllVipPrices() {
    return uint256(stor3[('map', "'vip'", ('name', 'stor0', 0))]), 
           stor3[('map', "'vip'", ('name', 'version', 1))],
           uint256(stor3[('map', "'vip'", ('name', 'stor2', 2))])
}

function fee() {
    return vipPrice['fee']
}

function pendingOwner() {
    return owner['pendingOwner']
}

function _fallback() payable {
  stop
}

function hash(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sha3(0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25, address(arg1), arg2)
}

function currentFee(address arg1) {
    require calldata.size - 4 >= 32
    if vipPrice['unlimAccess'][arg1] < block.timestamp:
        return vipPrice['fee']
    else:
        return 0
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    require arg1
    vipPrice['fee'] = arg1
}

function setVipPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    vipPrice['vip'][arg1] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    require arg1
    owner['pendingOwner'] = arg1
}

function claimOwnership() {
    require msg.sender == owner['pendingOwner']
    emit OwnershipTransferred(owner['owner'], owner['pendingOwner']);
    owner['owner'] = owner['pendingOwner']
    owner['pendingOwner'] = 0
}

function setReferralFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    require vipPrice['fee'] >= arg1
    vipPrice['referralFee'] = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function DOMAIN_SEPARATOR() {
    return sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3('Multisender'), sha3('2.0'), vipPrice['chainId'], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
}

function getDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return (block.timestamp + (24 * 3600))
    if arg1 == 1:
        return (block.timestamp + (168 * 24 * 3600))
    if arg1 != 2:
        return 0
    return (block.timestamp + (8760 * 24 * 3600))
}

function buyVip(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value >= vipPrice['vip'][arg1]
    if not arg1:
        vipPrice['unlimAccess'][msg.sender] = block.timestamp + (24 * 3600)
    else:
        if arg1 == 1:
            vipPrice['unlimAccess'][msg.sender] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg1 != 2:
                vipPrice['unlimAccess'][msg.sender] = 0
            else:
                vipPrice['unlimAccess'][msg.sender] = block.timestamp + (8760 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg1);
}

function setAddressToVip(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    if not arg2:
        vipPrice['unlimAccess'][arg1] = block.timestamp + (24 * 3600)
    else:
        if arg2 == 1:
            vipPrice['unlimAccess'][arg1] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg2 != 2:
                vipPrice['unlimAccess'][arg1] = 0
            else:
                vipPrice['unlimAccess'][arg1] = block.timestamp + (8760 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg2);
}

function sub_829fb13c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[23564 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if stor7['rs_multisender_initialized']:
        require msg.sender == owner['owner']
    emit OwnershipTransferred(owner['owner'], arg1);
    owner['owner'] = arg1
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    require arg2
    vipPrice['fee'] = arg2
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    uint256(stor3[('map', "'vip'", ('name', 'stor0', 0))]) = arg3
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    stor3[('map', "'vip'", ('name', 'version', 1))] = arg4
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    uint256(stor3[('map', "'vip'", ('name', 'stor2', 2))]) = arg5
    vipPrice['chainId'] = arg6
    stor7['rs_multisender_initialized'] = 1
    require vipPrice['fee'] >= 10^16
    vipPrice['referralFee'] = 10^16
}

function sub_40d6f059(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 < block.timestamp:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(arg2.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + 224] = arg1
    mem[ceil32(arg2.length) + 128] = 96
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3('Multisender'), sha3('2.0'), vipPrice['chainId'], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_723d1661(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 132] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 192 len floor32(('cd', 36).length)] = mem[128 len floor32(('cd', 36).length)]
    return Array(len=('cd', 36).length, data=mem[128 len floor32(('cd', 36).length)], mem[(32 * ('cd', 36).length) + floor32(('cd', 36).length) + 192 len (32 * ('cd', 36).length) - floor32(('cd', 36).length)]), 
}

function recoverAddress(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    mem[ceil32(arg2.length) + 160] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(arg2.length) + 192] = sha3(Mask(88, -(8 * ceil32(arg2.length) + -arg2.length + 11) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 11) + 256)
    mem[ceil32(arg2.length) + 224] = sha3(Mask(24, -(8 * ceil32(arg2.length) + -arg2.length + 3) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 3) + 256)
    mem[ceil32(arg2.length) + 256] = vipPrice[Mask(56, -(8 * ceil32(arg2.length) + -arg2.length + 7) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc8 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256]
    mem[ceil32(arg2.length) + 288] = this.address
    mem[ceil32(arg2.length) + 320] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(arg2.length) + 128] = 192
    signer = erecover(sha3(0, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), arg1), 0, _2, _3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function claimTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner['owner'] != msg.sender:
        revert with 0, 'not an owner'
    if arg2:
        if not arg1:
            call owner['owner'] with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner['owner'], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit ClaimedTokens(address(arg1), owner['owner'], ext_call.return_data[0]);
    else:
        if not arg1:
            call owner['owner'] with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner['owner'], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit ClaimedTokens(address(arg1), owner['owner'], ext_call.return_data[0]);
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'no contributors sent'
    if arg1.length != arg2.length:
        revert with 0, 'different arrays lengths'
    require msg.value <= eth.balance(this.address)
    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
        require 0 <= msg.value
        idx = 0
        s = msg.value
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] <= s
            idx = idx + 1
            s = s - cd[((32 * idx) + arg2 + 36)]
            continue 
        if eth.balance(this.address) < eth.balance(this.address) - msg.value:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    else:
        require vipPrice['fee'] <= msg.value
        idx = 0
        s = msg.value - vipPrice['fee']
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] <= s
            idx = idx + 1
            s = s - cd[((32 * idx) + arg2 + 36)]
            continue 
        require vipPrice['fee'] >= 0
        if eth.balance(this.address) < eth.balance(this.address) - msg.value + vipPrice['fee']:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    emit Multisended(s, 48879);
}

function etherFindBadAddresses(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'no contributors sent'
    if arg1.length != arg2.length:
        revert with 0, 'different arrays lengths'
    if not arg1.length:
        mem[(32 * arg1.length) + 128] = arg1.length
    else:
        mem[128 len 32 * arg1.length] = code.data[23564 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[23564 len 32 * arg1.length]
    mem[(64 * arg1.length) + 192] = 'unlimAccess'
    mem[(64 * arg1.length) + 203] = address(msg.sender)
    mem[(64 * arg1.length) + 160] = (127 * arg1.length) + 31
    if vipPrice[mem[(64 * arg1.length) + 192 len (127 * arg1.length) + 31]] < block.timestamp:
        require vipPrice['fee'] <= msg.value
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < arg2.length
                require cd[((32 * idx) + arg2 + 36)] <= msg.value - vipPrice['fee']
                idx = idx + 1
                continue 
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = cd[((32 * idx) + arg2 + 36)]
            idx = idx + 1
            continue 
    else:
        require 0 <= msg.value
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < arg2.length
                require cd[((32 * idx) + arg2 + 36)] <= msg.value
                idx = idx + 1
                continue 
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = cd[((32 * idx) + arg2 + 36)]
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 223] = 64
    mem[(64 * arg1.length) + 287] = arg1.length
    mem[(64 * arg1.length) + 319 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    mem[(64 * arg1.length) + 255] = (32 * arg1.length) + 96
    mem[(98 * arg1.length) + 319] = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 351 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return memory
      from (64 * arg1.length) + 223
       len (32 * mem[(32 * arg1.length) + 128]) + (161 * arg1.length) + 128
}

function sub_966fa3cc(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length <= 0:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'different arrays lengths'
    mem[128] = 'unlimAccess'
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[64] = 159
    mem[0] = sha3('unlimAccess', msg.sender)
    mem[32] = 3
    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _93 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _94 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_94 + 32] = mem[_94 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _97 = mem[_94]
            t = _94 + 32
            u = mem[64]
            s = mem[_94]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_94])] = mem[_94 + floor32(mem[_94]) + -(mem[_94] % 32) + 64 len mem[_94] % 32] or Mask(8 * -(mem[_94] % 32) + 32, -(8 * -(mem[_94] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_94])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _97 + _93 + -mem[64] + 128]
            if return_data.size:
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_137] = return_data.size
                mem[_137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[159] = 'fee'
        mem[0] = sha3('fee')
        mem[32] = 3
        if vipPrice['fee'] <= 0:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _78 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _79 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_79 + 32] = mem[_79 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _82 = mem[_79]
                t = _79 + 32
                u = mem[64]
                s = mem[_79]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_79])] = mem[_79 + floor32(mem[_79]) + -(mem[_79] % 32) + 64 len mem[_79] % 32] or Mask(8 * -(mem[_79] % 32) + 32, -(8 * -(mem[_79] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_79])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _82 + _78 + -mem[64] + 128]
                if return_data.size:
                    _134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_134] = return_data.size
                    mem[_134 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if msg.value < vipPrice['fee']:
                revert with 0, 'no fee'
            if not address(cd[132]):
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _83 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _84 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_84 + 32] = mem[_84 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _87 = mem[_84]
                    t = _84 + 32
                    u = mem[64]
                    s = mem[_84]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_84])] = mem[_84 + floor32(mem[_84]) + -(mem[_84] % 32) + 64 len mem[_84] % 32] or Mask(8 * -(mem[_84] % 32) + 32, -(8 * -(mem[_84] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_84])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _87 + _83 + -mem[64] + 128]
                    if return_data.size:
                        _135 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_135] = return_data.size
                        mem[_135 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[159] = 'referralFee'
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call address(cd[132]) with:
                   value vipPrice['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _88 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _89 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_89 + 32] = mem[_89 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _92 = mem[_89]
                    t = _89 + 32
                    u = mem[64]
                    s = mem[_89]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_89])] = mem[_89 + floor32(mem[_89]) + -(mem[_89] % 32) + 64 len mem[_89] % 32] or Mask(8 * -(mem[_89] % 32) + 32, -(8 * -(mem[_89] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_89])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _92 + _88 + -mem[64] + 128]
                    if return_data.size:
                        _136 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_136] = return_data.size
                        mem[_136 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    emit Multisended(cd[100], address(cd[4]));
}

function sub_9bafebfb(?) payable {
    require calldata.size - 4 >= 224
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + ('cd', 164).length + 36 <= calldata.size
    mem[96] = ('cd', 164).length
    mem[128 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    mem[('cd', 164).length + 128] = 0
    if cd[196] < block.timestamp:
        revert with 0, 
                    32,
                    39,
                    0x79746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[ceil32(('cd', 164).length) + 235 len 25]
    mem[ceil32(('cd', 164).length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(('cd', 164).length) + 192] = msg.sender
    mem[ceil32(('cd', 164).length) + 224] = cd[196]
    mem[ceil32(('cd', 164).length) + 128] = 96
    _5 = sha3(mem[ceil32(('cd', 164).length) + 160 len Mask(8 * -ceil32(('cd', 164).length) + ('cd', 164).length + 32, 0, 0), mem[('cd', 164).length + 160 len -('cd', 164).length + ceil32(('cd', 164).length)]])
    mem[ceil32(('cd', 164).length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(('cd', 164).length) + 320] = sha3('Multisender')
    mem[ceil32(('cd', 164).length) + 352] = sha3('2.0')
    mem[ceil32(('cd', 164).length) + 384] = vipPrice['chainId']
    mem[ceil32(('cd', 164).length) + 416] = this.address
    mem[ceil32(('cd', 164).length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(('cd', 164).length) + 256] = 192
    mem[ceil32(('cd', 164).length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 164).length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3('Multisender'), sha3('2.0'), vipPrice['chainId'], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(('cd', 164).length) + 546] = _5
    mem[ceil32(('cd', 164).length) + 480] = 66
    mem[ceil32(('cd', 164).length) + 674] = mem[128]
    mem[ceil32(('cd', 164).length) + 706] = mem[160]
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3('Multisender'), sha3('2.0'), vipPrice['chainId'], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _5), 0, mem[128], mem[160]) 
    mem[ceil32(('cd', 164).length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x79746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[171 len 21],
                    mem[ceil32(('cd', 164).length) + 738 len 4]
    if ('cd', 36).length <= 0:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'different arrays lengths'
    mem[ceil32(('cd', 164).length) + 642] = 'unlimAccess'
    mem[ceil32(('cd', 164).length) + 653] = address(signer)
    mem[ceil32(('cd', 164).length) + 610] = 31
    mem[64] = ceil32(('cd', 164).length) + 673
    mem[0] = sha3('unlimAccess', address(signer))
    mem[32] = 3
    if vipPrice['unlimAccess'][address(signer)] >= block.timestamp:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _128 = mem[64]
            mem[mem[64] + 36] = address(signer)
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _129 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_129 + 32] = mem[_129 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _132 = mem[_129]
            t = _129 + 32
            u = mem[64]
            s = mem[_129]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_129])] = mem[_129 + floor32(mem[_129]) + -(mem[_129] % 32) + 64 len mem[_129] % 32] or Mask(8 * -(mem[_129] % 32) + 32, -(8 * -(mem[_129] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_129])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _132 + _128 + -mem[64] + 128]
            if return_data.size:
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_172] = return_data.size
                mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[ceil32(('cd', 164).length) + 673] = 'fee'
        mem[0] = sha3('fee')
        mem[32] = 3
        if vipPrice['fee'] <= 0:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _113 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _114 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_114 + 32] = mem[_114 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _117 = mem[_114]
                t = _114 + 32
                u = _113 + 132
                s = mem[_114]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_113 + floor32(mem[_114]) + 132] = mem[_114 + -(mem[_114] % 32) + floor32(mem[_114]) + 64 len mem[_114] % 32] or Mask(8 * -(mem[_114] % 32) + 32, -(8 * -(mem[_114] % 32) + 32) + 256, mem[_113 + floor32(mem[_114]) + 132])
                call address(cd[4]).mem[_113 + 132 len 4] with:
                     gas gas_remaining wei
                    args mem[_113 + 136 len _117 - 4]
                if return_data.size:
                    mem[64] = _113 + ceil32(return_data.size) + 133
                    mem[_113 + 132] = return_data.size
                    mem[_113 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if msg.value < vipPrice['fee']:
                revert with 0, 'no fee'
            if not address(cd[132]):
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _118 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _119 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_119 + 32] = mem[_119 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _122 = mem[_119]
                    t = _119 + 32
                    u = mem[64]
                    s = mem[_119]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_119])] = mem[_119 + floor32(mem[_119]) + -(mem[_119] % 32) + 64 len mem[_119] % 32] or Mask(8 * -(mem[_119] % 32) + 32, -(8 * -(mem[_119] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_119])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _122 + _118 + -mem[64] + 128]
                    if return_data.size:
                        _170 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_170] = return_data.size
                        mem[_170 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(('cd', 164).length) + 673] = 'referralFee'
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call address(cd[132]) with:
                   value vipPrice['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _123 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _124 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_124 + 32] = mem[_124 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    _127 = mem[_124]
                    t = _124 + 32
                    u = mem[64]
                    s = mem[_124]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_124])] = mem[_124 + floor32(mem[_124]) + -(mem[_124] % 32) + 64 len mem[_124] % 32] or Mask(8 * -(mem[_124] % 32) + 32, -(8 * -(mem[_124] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_124])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _127 + _123 + -mem[64] + 128]
                    if return_data.size:
                        _171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_171] = return_data.size
                        mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    emit Multisended(cd[100], address(cd[4]));
}

function sub_05dba83f(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length <= 0:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'different arrays lengths'
    mem[128] = 'unlimAccess'
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3('unlimAccess', msg.sender)
    mem[32] = 3
    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + 223
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _195 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _196 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_196 + 32] = mem[_196 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _199 = mem[_196]
                t = _196 + 32
                u = mem[64]
                s = mem[_196]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_196])] = mem[_196 + floor32(mem[_196]) + -(mem[_196] % 32) + 64 len mem[_196] % 32] or Mask(8 * -(mem[_196] % 32) + 32, -(8 * -(mem[_196] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_196])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _199 + _195 + -mem[64] + 128]
                if return_data.size:
                    _335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_335] = return_data.size
                    mem[_335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _169 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _171 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _171) + _169 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _318 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _171) + _169 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _318) + (32 * _171) + _169 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _200 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _201 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_201 + 32] = mem[_201 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _204 = mem[_201]
            t = _201 + 32
            u = mem[64]
            s = mem[_201]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_201])] = mem[_201 + floor32(mem[_201]) + -(mem[_201] % 32) + 64 len mem[_201] % 32] or Mask(8 * -(mem[_201] % 32) + 32, -(8 * -(mem[_201] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_201])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _204 + _200 + -mem[64] + 128]
            if return_data.size:
                _336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_336] = return_data.size
                mem[_336 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _174 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _174) + _172 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _325 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _174) + _172 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _325) + (32 * _174) + _172 + -mem[64] + 128
    mem[0] = sha3('fee')
    mem[32] = 3
    if vipPrice['fee'] <= 0:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + 223
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _175 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _176 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_176 + 32] = mem[_176 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _179 = mem[_176]
                t = _176 + 32
                u = mem[64]
                s = mem[_176]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_176])] = mem[_176 + floor32(mem[_176]) + -(mem[_176] % 32) + 64 len mem[_176] % 32] or Mask(8 * -(mem[_176] % 32) + 32, -(8 * -(mem[_176] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_176])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _179 + _175 + -mem[64] + 128]
                if return_data.size:
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_331] = return_data.size
                    mem[_331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _157 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _159 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _159) + _157 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _290 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _159) + _157 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _290) + (32 * _159) + _157 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _180 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _181 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_181 + 32] = mem[_181 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _184 = mem[_181]
            t = _181 + 32
            u = mem[64]
            s = mem[_181]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_181])] = mem[_181 + floor32(mem[_181]) + -(mem[_181] % 32) + 64 len mem[_181] % 32] or Mask(8 * -(mem[_181] % 32) + 32, -(8 * -(mem[_181] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_181])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _184 + _180 + -mem[64] + 128]
            if return_data.size:
                _332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_332] = return_data.size
                mem[_332 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _160 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _162 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _162) + _160 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _297 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _162) + _160 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _297) + (32 * _162) + _160 + -mem[64] + 128
    if msg.value < vipPrice['fee']:
        revert with 0, 'no fee'
    mem[159] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _185 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _186 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_186 + 32] = mem[_186 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _189 = mem[_186]
            t = _186 + 32
            u = mem[64]
            s = mem[_186]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_186])] = mem[_186 + floor32(mem[_186]) + -(mem[_186] % 32) + 64 len mem[_186] % 32] or Mask(8 * -(mem[_186] % 32) + 32, -(8 * -(mem[_186] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_186])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _189 + _185 + -mem[64] + 128]
            if return_data.size:
                _333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_333] = return_data.size
                mem[_333 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _163 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _165 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _165) + _163 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _304 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _165) + _163 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _304) + (32 * _165) + _163 + -mem[64] + 128
    mem[191 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 223
    mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        _190 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
        _191 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_191 + 32] = mem[_191 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        _194 = mem[_191]
        t = _191 + 32
        u = mem[64]
        s = mem[_191]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_191])] = mem[_191 + floor32(mem[_191]) + -(mem[_191] % 32) + 64 len mem[_191] % 32] or Mask(8 * -(mem[_191] % 32) + 32, -(8 * -(mem[_191] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_191])])
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _194 + _190 + -mem[64] + 128]
        if return_data.size:
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_334] = return_data.size
            mem[_334 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require idx < ('cd', 36).length
            require idx < mem[159]
            mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    _166 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[159]
    _168 = mem[159]
    mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
    mem[mem[64] + 32] = (32 * mem[159]) + 96
    mem[(32 * _168) + _166 + 96] = mem[(32 * ('cd', 36).length) + 191]
    _311 = mem[(32 * ('cd', 36).length) + 191]
    mem[(32 * _168) + _166 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
    return memory
      from mem[64]
       len (32 * _311) + (32 * _168) + _166 + -mem[64] + 128
}

function sub_4ad6b31c(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length <= 0:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'different arrays lengths'
    mem[128] = 'unlimAccess'
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3('unlimAccess', msg.sender)
    mem[32] = 3
    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
        mem[195] = msg.sender
        mem[227] = this.address
        mem[259] = cd[100]
        mem[159] = 100
        mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, cd[100]) >> 32
        mem[415 len 4] = uint32(cd[100])
        call address(cd[4]) with:
             gas gas_remaining wei
            args Mask(224, 32, cd[100]) << 480, mem[387 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'transferFrom failed'
        mem[64] = ceil32(return_data.size) + 292
        mem[291] = return_data.size
        mem[323 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'transferFrom failed'
        if return_data.size <= 0:
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _712 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _713 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_713 + 32] = mem[_713 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _716 = mem[_713]
                u = _713 + 32
                v = mem[64]
                t = mem[_713]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_713])] = mem[_713 + floor32(mem[_713]) + -(mem[_713] % 32) + 64 len mem[_713] % 32] or Mask(8 * -(mem[_713] % 32) + 32, -(8 * -(mem[_713] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_713])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _716 + _712 + -mem[64] + 96]
                if return_data.size:
                    _944 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_944] = return_data.size
                    mem[_944 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < ('cd', 68).length:
                    idx = idx + 1
                    s = s + cd[((32 * idx) + cd[68] + 36)]
                    continue 
                revert
        else:
            require return_data.size >= 32
            if not mem[323]:
                revert with 0, 'not enough allowed tokens'
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _717 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _718 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_718 + 32] = mem[_718 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _721 = mem[_718]
                u = _718 + 32
                v = _717 + 100
                t = mem[_718]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_717 + floor32(mem[_718]) + 100] = mem[_718 + -(mem[_718] % 32) + floor32(mem[_718]) + 64 len mem[_718] % 32] or Mask(8 * -(mem[_718] % 32) + 32, -(8 * -(mem[_718] % 32) + 32) + 256, mem[_717 + floor32(mem[_718]) + 100])
                call address(cd[4]).mem[_717 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_717 + 104 len _721 - 4]
                if return_data.size:
                    mem[64] = _717 + ceil32(return_data.size) + 101
                    mem[_717 + 100] = return_data.size
                    mem[_717 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < ('cd', 68).length:
                    idx = idx + 1
                    s = s + cd[((32 * idx) + cd[68] + 36)]
                    continue 
                revert
    else:
        mem[0] = sha3('fee')
        mem[32] = 3
        if vipPrice['fee'] <= 0:
            mem[195] = msg.sender
            mem[227] = this.address
            mem[259] = cd[100]
            mem[159] = 100
            mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
            mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, cd[100]) >> 32
            mem[415 len 4] = uint32(cd[100])
            call address(cd[4]) with:
                 gas gas_remaining wei
                args Mask(224, 32, cd[100]) << 480, mem[387 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'transferFrom failed'
            mem[64] = ceil32(return_data.size) + 292
            mem[291] = return_data.size
            mem[323 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'transferFrom failed'
            if return_data.size <= 0:
                idx = 0
                s = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _652 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _653 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_653 + 32] = mem[_653 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _656 = mem[_653]
                    u = _653 + 32
                    v = mem[64]
                    t = mem[_653]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_653])] = mem[_653 + floor32(mem[_653]) + -(mem[_653] % 32) + 64 len mem[_653] % 32] or Mask(8 * -(mem[_653] % 32) + 32, -(8 * -(mem[_653] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_653])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _656 + _652 + -mem[64] + 96]
                    if return_data.size:
                        _932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_932] = return_data.size
                        mem[_932 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < ('cd', 68).length:
                        idx = idx + 1
                        s = s + cd[((32 * idx) + cd[68] + 36)]
                        continue 
                    revert
            else:
                require return_data.size >= 32
                if not mem[323]:
                    revert with 0, 'not enough allowed tokens'
                idx = 0
                s = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _657 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _658 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_658 + 32] = mem[_658 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _661 = mem[_658]
                    u = _658 + 32
                    v = mem[64]
                    t = mem[_658]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_658])] = mem[_658 + floor32(mem[_658]) + -(mem[_658] % 32) + 64 len mem[_658] % 32] or Mask(8 * -(mem[_658] % 32) + 32, -(8 * -(mem[_658] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_658])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _661 + _657 + -mem[64] + 96]
                    if return_data.size:
                        _933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_933] = return_data.size
                        mem[_933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < ('cd', 68).length:
                        idx = idx + 1
                        s = s + cd[((32 * idx) + cd[68] + 36)]
                        continue 
                    revert
        else:
            if msg.value < vipPrice['fee']:
                revert with 0, 'no fee'
            if not address(cd[132]):
                mem[195] = msg.sender
                mem[227] = this.address
                mem[259] = cd[100]
                mem[159] = 100
                mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, cd[100]) >> 32
                mem[415 len 4] = uint32(cd[100])
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args Mask(224, 32, cd[100]) << 480, mem[387 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'transferFrom failed'
                mem[64] = ceil32(return_data.size) + 292
                mem[291] = return_data.size
                mem[323 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'transferFrom failed'
                if return_data.size <= 0:
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        _672 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _673 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_673 + 32] = mem[_673 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _676 = mem[_673]
                        u = _673 + 32
                        v = mem[64]
                        t = mem[_673]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_673])] = mem[_673 + floor32(mem[_673]) + -(mem[_673] % 32) + 64 len mem[_673] % 32] or Mask(8 * -(mem[_673] % 32) + 32, -(8 * -(mem[_673] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_673])])
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _676 + _672 + -mem[64] + 96]
                        if return_data.size:
                            _936 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_936] = return_data.size
                            mem[_936 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 68).length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + cd[68] + 36)]
                            continue 
                        revert
                else:
                    require return_data.size >= 32
                    if not mem[323]:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        _677 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _678 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_678 + 32] = mem[_678 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _681 = mem[_678]
                        u = _678 + 32
                        v = mem[64]
                        t = mem[_678]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_678])] = mem[_678 + floor32(mem[_678]) + -(mem[_678] % 32) + 64 len mem[_678] % 32] or Mask(8 * -(mem[_678] % 32) + 32, -(8 * -(mem[_678] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_678])])
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _681 + _677 + -mem[64] + 96]
                        if return_data.size:
                            _937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_937] = return_data.size
                            mem[_937 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 68).length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + cd[68] + 36)]
                            continue 
                        revert
            else:
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call address(cd[132]) with:
                   value vipPrice['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                mem[195] = msg.sender
                mem[227] = this.address
                mem[259] = cd[100]
                mem[159] = 100
                mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, cd[100]) >> 32
                mem[415 len 4] = uint32(cd[100])
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args Mask(224, 32, cd[100]) << 480, mem[387 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'transferFrom failed'
                mem[64] = ceil32(return_data.size) + 292
                mem[291] = return_data.size
                mem[323 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'transferFrom failed'
                if return_data.size <= 0:
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        _692 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _693 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_693 + 32] = mem[_693 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _696 = mem[_693]
                        u = _693 + 32
                        v = mem[64]
                        t = mem[_693]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_693])] = mem[_693 + floor32(mem[_693]) + -(mem[_693] % 32) + 64 len mem[_693] % 32] or Mask(8 * -(mem[_693] % 32) + 32, -(8 * -(mem[_693] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_693])])
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _696 + _692 + -mem[64] + 96]
                        if return_data.size:
                            _940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_940] = return_data.size
                            mem[_940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 68).length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + cd[68] + 36)]
                            continue 
                        revert
                else:
                    require return_data.size >= 32
                    if not mem[323]:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        _697 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _698 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_698 + 32] = mem[_698 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _701 = mem[_698]
                        u = _698 + 32
                        v = mem[64]
                        t = mem[_698]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_698])] = mem[_698 + floor32(mem[_698]) + -(mem[_698] % 32) + 64 len mem[_698] % 32] or Mask(8 * -(mem[_698] % 32) + 32, -(8 * -(mem[_698] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_698])])
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _701 + _697 + -mem[64] + 96]
                        if return_data.size:
                            _941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_941] = return_data.size
                            mem[_941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 68).length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + cd[68] + 36)]
                            continue 
                        revert
    if s:
        require ext_code.size(address(cd[4]))
        call address(cd[4]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Multisended(cd[100], address(cd[4]));
}

function multisendTokenWithSignature(address arg1, address[] arg2, uint256[] arg3, uint256 arg4, address arg5, bytes arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    if arg7 < block.timestamp:
        revert with 0, 
                    32,
                    39,
                    0x79746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[ceil32(arg6.length) + 235 len 25]
    mem[ceil32(arg6.length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(arg6.length) + 192] = msg.sender
    mem[ceil32(arg6.length) + 224] = arg7
    mem[ceil32(arg6.length) + 128] = 96
    _5 = sha3(mem[ceil32(arg6.length) + 160 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]])
    mem[ceil32(arg6.length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(arg6.length) + 320] = sha3('Multisender')
    mem[ceil32(arg6.length) + 352] = sha3('2.0')
    mem[ceil32(arg6.length) + 384] = vipPrice['chainId']
    mem[ceil32(arg6.length) + 416] = this.address
    mem[ceil32(arg6.length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(arg6.length) + 256] = 192
    mem[ceil32(arg6.length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg6.length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3('Multisender'), sha3('2.0'), vipPrice['chainId'], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(arg6.length) + 546] = _5
    mem[ceil32(arg6.length) + 480] = 66
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3('Multisender'), sha3('2.0'), vipPrice['chainId'], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _5), 0, mem[128], mem[160]) 
    mem[ceil32(arg6.length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x79746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[171 len 21],
                    mem[ceil32(arg6.length) + 738 len 4]
    if arg2.length <= 0:
        revert with 0, 'no contributors sent'
    if arg2.length != arg3.length:
        revert with 0, 'different arrays lengths'
    mem[ceil32(arg6.length) + 642] = 'unlimAccess'
    mem[ceil32(arg6.length) + 653] = address(signer)
    mem[ceil32(arg6.length) + 610] = 31
    mem[0] = sha3('unlimAccess', address(signer))
    mem[32] = 3
    if vipPrice['unlimAccess'][address(signer)] >= block.timestamp:
        mem[ceil32(arg6.length) + 709] = address(signer)
        mem[ceil32(arg6.length) + 741] = this.address
        mem[ceil32(arg6.length) + 773] = arg4
        mem[ceil32(arg6.length) + 673] = 100
        mem[64] = ceil32(arg6.length) + 805
        mem[ceil32(arg6.length) + 709 len 28] = address(signer) << 64
        mem[ceil32(arg6.length) + 705 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[ceil32(arg6.length) + 805 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), address(signer) << 64, 0, address(this.address), Mask(224, 32, arg4) >> 32
        mem[ceil32(arg6.length) + 929 len 4] = uint32(arg4)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[ceil32(arg6.length) + 901 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'not enough allowed tokens'
            idx = 0
            s = 0
            while idx < arg2.length:
                require idx < arg3.length
                _427 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                _428 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_428 + 32] = mem[_428 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _431 = mem[_428]
                u = _428 + 32
                v = _427 + 100
                t = mem[_428]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_427 + floor32(mem[_428]) + 100] = mem[_428 + -(mem[_428] % 32) + floor32(mem[_428]) + 64 len mem[_428] % 32] or Mask(8 * -(mem[_428] % 32) + 32, -(8 * -(mem[_428] % 32) + 32) + 256, mem[_427 + floor32(mem[_428]) + 100])
                call arg1.mem[_427 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_427 + 104 len _431 - 4]
                if return_data.size:
                    mem[64] = _427 + ceil32(return_data.size) + 101
                    mem[_427 + 100] = return_data.size
                    mem[_427 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < arg3.length:
                    idx = idx + 1
                    s = s + cd[((32 * idx) + arg3 + 36)]
                    continue 
                revert
            if s:
                _385 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = s
                _386 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_386 + 32 len 4] = transfer(address rg1, uint256 rg2)
                _389 = mem[_386]
                mem[mem[64] len floor32(mem[_386])] = mem[_386 + 32 len floor32(mem[_386])]
                mem[mem[64] + floor32(mem[_386]) + -(mem[_386] % 32) + 32 len mem[_386] % 32] = mem[_386 + floor32(mem[_386]) + -(mem[_386] % 32) + 64 len mem[_386] % 32]
                call arg1 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _389 + _385 + -mem[64] + 96]
        else:
            mem[64] = ceil32(arg6.length) + ceil32(return_data.size) + 806
            mem[ceil32(arg6.length) + 805] = return_data.size
            mem[ceil32(arg6.length) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'not enough allowed tokens'
            idx = 0
            s = 0
            while idx < arg2.length:
                require idx < arg3.length
                _432 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                _433 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_433 + 32] = mem[_433 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _436 = mem[_433]
                u = _433 + 32
                v = mem[64]
                t = mem[_433]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_433])] = mem[_433 + floor32(mem[_433]) + -(mem[_433] % 32) + 64 len mem[_433] % 32] or Mask(8 * -(mem[_433] % 32) + 32, -(8 * -(mem[_433] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_433])])
                call arg1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _436 + _432 + -mem[64] + 96]
                if return_data.size:
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_628] = return_data.size
                    mem[_628 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < arg3.length:
                    idx = idx + 1
                    s = s + cd[((32 * idx) + arg3 + 36)]
                    continue 
                revert
            if s:
                _392 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = s
                _393 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_393 + 32 len 4] = transfer(address rg1, uint256 rg2)
                _396 = mem[_393]
                mem[mem[64] len floor32(mem[_393])] = mem[_393 + 32 len floor32(mem[_393])]
                mem[mem[64] + floor32(mem[_393]) + -(mem[_393] % 32) + 32 len mem[_393] % 32] = mem[_393 + floor32(mem[_393]) + -(mem[_393] % 32) + 64 len mem[_393] % 32]
                call arg1 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _396 + _392 + -mem[64] + 96]
    else:
        mem[0] = sha3('fee')
        mem[32] = 3
        if vipPrice['fee'] <= 0:
            mem[ceil32(arg6.length) + 709] = address(signer)
            mem[ceil32(arg6.length) + 741] = this.address
            mem[ceil32(arg6.length) + 773] = arg4
            mem[ceil32(arg6.length) + 673] = 100
            mem[64] = ceil32(arg6.length) + 805
            mem[ceil32(arg6.length) + 709 len 28] = address(signer) << 64
            mem[ceil32(arg6.length) + 705 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
            mem[ceil32(arg6.length) + 805 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), address(signer) << 64, 0, address(this.address), Mask(224, 32, arg4) >> 32
            mem[ceil32(arg6.length) + 929 len 4] = uint32(arg4)
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg4) << 480, mem[ceil32(arg6.length) + 901 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'not enough allowed tokens'
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg3.length
                    _397 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                    _398 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_398 + 32] = mem[_398 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _401 = mem[_398]
                    u = _398 + 32
                    v = mem[64]
                    t = mem[_398]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_398])] = mem[_398 + floor32(mem[_398]) + -(mem[_398] % 32) + 64 len mem[_398] % 32] or Mask(8 * -(mem[_398] % 32) + 32, -(8 * -(mem[_398] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_398])])
                    call arg1.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _401 + _397 + -mem[64] + 96]
                    if return_data.size:
                        _614 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_614] = return_data.size
                        mem[_614 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < arg3.length:
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg3 + 36)]
                        continue 
                    revert
                if s:
                    _343 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = s
                    _344 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_344 + 32 len 4] = transfer(address rg1, uint256 rg2)
                    _347 = mem[_344]
                    mem[mem[64] len floor32(mem[_344])] = mem[_344 + 32 len floor32(mem[_344])]
                    mem[mem[64] + floor32(mem[_344]) + -(mem[_344] % 32) + 32 len mem[_344] % 32] = mem[_344 + floor32(mem[_344]) + -(mem[_344] % 32) + 64 len mem[_344] % 32]
                    call arg1 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _347 + _343 + -mem[64] + 96]
            else:
                mem[64] = ceil32(arg6.length) + ceil32(return_data.size) + 806
                mem[ceil32(arg6.length) + 805] = return_data.size
                mem[ceil32(arg6.length) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'not enough allowed tokens'
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg3.length
                    _402 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                    _403 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_403 + 32] = mem[_403 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _406 = mem[_403]
                    u = _403 + 32
                    v = mem[64]
                    t = mem[_403]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_403])] = mem[_403 + floor32(mem[_403]) + -(mem[_403] % 32) + 64 len mem[_403] % 32] or Mask(8 * -(mem[_403] % 32) + 32, -(8 * -(mem[_403] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_403])])
                    call arg1.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _406 + _402 + -mem[64] + 96]
                    if return_data.size:
                        _616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_616] = return_data.size
                        mem[_616 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < arg3.length:
                        idx = idx + 1
                        s = s + cd[((32 * idx) + arg3 + 36)]
                        continue 
                    revert
                if s:
                    _350 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = s
                    _351 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_351 + 32 len 4] = transfer(address rg1, uint256 rg2)
                    _354 = mem[_351]
                    mem[_350 + 100 len floor32(mem[_351])] = mem[_351 + 32 len floor32(mem[_351])]
                    mem[_350 + floor32(mem[_351]) + -(mem[_351] % 32) + 132 len mem[_351] % 32] = mem[_351 + -(mem[_351] % 32) + floor32(mem[_351]) + 64 len mem[_351] % 32]
                    call arg1.mem[_350 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_350 + 104 len _354 - 4]
        else:
            if msg.value < vipPrice['fee']:
                revert with 0, 'no fee'
            if not arg5:
                mem[ceil32(arg6.length) + 709] = address(signer)
                mem[ceil32(arg6.length) + 741] = this.address
                mem[ceil32(arg6.length) + 773] = arg4
                mem[ceil32(arg6.length) + 673] = 100
                mem[64] = ceil32(arg6.length) + 805
                mem[ceil32(arg6.length) + 709 len 28] = address(signer) << 64
                mem[ceil32(arg6.length) + 705 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                mem[ceil32(arg6.length) + 805 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), address(signer) << 64, 0, address(this.address), Mask(224, 32, arg4) >> 32
                mem[ceil32(arg6.length) + 929 len 4] = uint32(arg4)
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg4) << 480, mem[ceil32(arg6.length) + 901 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg3.length
                        _407 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _408 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_408 + 32] = mem[_408 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _411 = mem[_408]
                        u = _408 + 32
                        v = mem[64]
                        t = mem[_408]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_408])] = mem[_408 + floor32(mem[_408]) + -(mem[_408] % 32) + 64 len mem[_408] % 32] or Mask(8 * -(mem[_408] % 32) + 32, -(8 * -(mem[_408] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_408])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _411 + _407 + -mem[64] + 96]
                        if return_data.size:
                            _618 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_618] = return_data.size
                            mem[_618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < arg3.length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + arg3 + 36)]
                            continue 
                        revert
                    if s:
                        _357 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _358 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_358 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _361 = mem[_358]
                        mem[mem[64] len floor32(mem[_358])] = mem[_358 + 32 len floor32(mem[_358])]
                        mem[mem[64] + floor32(mem[_358]) + -(mem[_358] % 32) + 32 len mem[_358] % 32] = mem[_358 + floor32(mem[_358]) + -(mem[_358] % 32) + 64 len mem[_358] % 32]
                        call arg1 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _361 + _357 + -mem[64] + 96]
                else:
                    mem[64] = ceil32(arg6.length) + ceil32(return_data.size) + 806
                    mem[ceil32(arg6.length) + 805] = return_data.size
                    mem[ceil32(arg6.length) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg3.length
                        _412 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _413 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_413 + 32] = mem[_413 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _416 = mem[_413]
                        u = _413 + 32
                        v = mem[64]
                        t = mem[_413]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_413])] = mem[_413 + floor32(mem[_413]) + -(mem[_413] % 32) + 64 len mem[_413] % 32] or Mask(8 * -(mem[_413] % 32) + 32, -(8 * -(mem[_413] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_413])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _416 + _412 + -mem[64] + 96]
                        if return_data.size:
                            _620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_620] = return_data.size
                            mem[_620 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < arg3.length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + arg3 + 36)]
                            continue 
                        revert
                    if s:
                        _364 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _365 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_365 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _368 = mem[_365]
                        mem[mem[64] len floor32(mem[_365])] = mem[_365 + 32 len floor32(mem[_365])]
                        mem[mem[64] + floor32(mem[_365]) + -(mem[_365] % 32) + 32 len mem[_365] % 32] = mem[_365 + floor32(mem[_365]) + -(mem[_365] % 32) + 64 len mem[_365] % 32]
                        call arg1 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _368 + _364 + -mem[64] + 96]
            else:
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call arg5 with:
                   value vipPrice['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                mem[ceil32(arg6.length) + 709] = address(signer)
                mem[ceil32(arg6.length) + 741] = this.address
                mem[ceil32(arg6.length) + 773] = arg4
                mem[ceil32(arg6.length) + 673] = 100
                mem[64] = ceil32(arg6.length) + 805
                mem[ceil32(arg6.length) + 709 len 28] = address(signer) << 64
                mem[ceil32(arg6.length) + 705 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                mem[ceil32(arg6.length) + 805 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), address(signer) << 64, 0, address(this.address), Mask(224, 32, arg4) >> 32
                mem[ceil32(arg6.length) + 929 len 4] = uint32(arg4)
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg4) << 480, mem[ceil32(arg6.length) + 901 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg3.length
                        _417 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _418 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_418 + 32] = mem[_418 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _421 = mem[_418]
                        u = _418 + 32
                        v = mem[64]
                        t = mem[_418]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_418])] = mem[_418 + floor32(mem[_418]) + -(mem[_418] % 32) + 64 len mem[_418] % 32] or Mask(8 * -(mem[_418] % 32) + 32, -(8 * -(mem[_418] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_418])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _421 + _417 + -mem[64] + 96]
                        if return_data.size:
                            _622 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_622] = return_data.size
                            mem[_622 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < arg3.length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + arg3 + 36)]
                            continue 
                        revert
                    if s:
                        _371 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _372 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_372 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _375 = mem[_372]
                        mem[mem[64] len floor32(mem[_372])] = mem[_372 + 32 len floor32(mem[_372])]
                        mem[mem[64] + floor32(mem[_372]) + -(mem[_372] % 32) + 32 len mem[_372] % 32] = mem[_372 + floor32(mem[_372]) + -(mem[_372] % 32) + 64 len mem[_372] % 32]
                        call arg1 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _375 + _371 + -mem[64] + 96]
                else:
                    mem[64] = ceil32(arg6.length) + ceil32(return_data.size) + 806
                    mem[ceil32(arg6.length) + 805] = return_data.size
                    mem[ceil32(arg6.length) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg3.length
                        _422 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _423 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_423 + 32] = mem[_423 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _426 = mem[_423]
                        u = _423 + 32
                        v = mem[64]
                        t = mem[_423]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[_423])] = mem[_423 + floor32(mem[_423]) + -(mem[_423] % 32) + 64 len mem[_423] % 32] or Mask(8 * -(mem[_423] % 32) + 32, -(8 * -(mem[_423] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_423])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _426 + _422 + -mem[64] + 96]
                        if return_data.size:
                            _624 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_624] = return_data.size
                            mem[_624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < arg3.length:
                            idx = idx + 1
                            s = s + cd[((32 * idx) + arg3 + 36)]
                            continue 
                        revert
                    if s:
                        _378 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _379 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_379 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _382 = mem[_379]
                        mem[mem[64] len floor32(mem[_379])] = mem[_379 + 32 len floor32(mem[_379])]
                        mem[mem[64] + floor32(mem[_379]) + -(mem[_379] % 32) + 32 len mem[_379] % 32] = mem[_379 + floor32(mem[_379]) + -(mem[_379] % 32) + 64 len mem[_379] % 32]
                        call arg1 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _382 + _378 + -mem[64] + 96]
    emit Multisended(arg4, arg1);
}

function sub_b0ab5f36(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length <= 0:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'different arrays lengths'
    mem[128] = 'unlimAccess'
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3('unlimAccess', msg.sender)
    mem[32] = 3
    if vipPrice['unlimAccess'][msg.sender] >= block.timestamp:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[(64 * ('cd', 36).length) + 259] = msg.sender
            mem[(64 * ('cd', 36).length) + 291] = this.address
            mem[(64 * ('cd', 36).length) + 323] = cd[100]
            mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
            mem[64] = (64 * ('cd', 36).length) + 355
            mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
            mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
            mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 287 len (127 * ('cd', 36).length) + 100 % 32]
            call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
            if not return_data.size:
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _719 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _720 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_720 + 32] = mem[_720 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _723 = mem[_720]
                    t = _720 + 32
                    u = mem[64]
                    s = mem[_720]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_720])] = mem[_720 + floor32(mem[_720]) + -(mem[_720] % 32) + 64 len mem[_720] % 32] or Mask(8 * -(mem[_720] % 32) + 32, -(8 * -(mem[_720] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_720])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _723 + _719 + -mem[64] + 96]
                    if return_data.size:
                        _999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_999] = return_data.size
                        mem[_999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require idx < mem[159]
                        mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                        require idx < ('cd', 68).length
                        require idx < mem[(32 * ('cd', 36).length) + 191]
                        mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                    idx = idx + 1
                    continue 
                _667 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[159]
                _669 = mem[159]
                mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
                mem[mem[64] + 32] = (32 * mem[159]) + 96
                mem[(32 * _669) + _667 + 96] = mem[(32 * ('cd', 36).length) + 191]
                _964 = mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * _669) + _667 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
                return memory
                  from mem[64]
                   len (32 * _964) + (32 * _669) + _667 + -mem[64] + 128
            mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
            mem[(64 * ('cd', 36).length) + 355] = return_data.size
            mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _724 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _725 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_725 + 32] = mem[_725 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _728 = mem[_725]
                t = _725 + 32
                u = mem[64]
                s = mem[_725]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_725])] = mem[_725 + floor32(mem[_725]) + -(mem[_725] % 32) + 64 len mem[_725] % 32] or Mask(8 * -(mem[_725] % 32) + 32, -(8 * -(mem[_725] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_725])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _728 + _724 + -mem[64] + 96]
                if return_data.size:
                    _1000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1000] = return_data.size
                    mem[_1000 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _670 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _672 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _672) + _670 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _971 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _672) + _670 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _971) + (32 * _672) + _670 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + 259] = msg.sender
        mem[(64 * ('cd', 36).length) + 291] = this.address
        mem[(64 * ('cd', 36).length) + 323] = cd[100]
        mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
        mem[64] = (64 * ('cd', 36).length) + 355
        mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
        mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 287 len (127 * ('cd', 36).length) + 100 % 32]
        call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _729 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _730 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_730 + 32] = mem[_730 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _733 = mem[_730]
                t = _730 + 32
                u = mem[64]
                s = mem[_730]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_730])] = mem[_730 + floor32(mem[_730]) + -(mem[_730] % 32) + 64 len mem[_730] % 32] or Mask(8 * -(mem[_730] % 32) + 32, -(8 * -(mem[_730] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_730])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _733 + _729 + -mem[64] + 96]
                if return_data.size:
                    _1001 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1001] = return_data.size
                    mem[_1001 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _673 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _675 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _675) + _673 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _978 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _675) + _673 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _978) + (32 * _675) + _673 + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
        mem[(64 * ('cd', 36).length) + 355] = return_data.size
        mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _734 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _735 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_735 + 32] = mem[_735 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _738 = mem[_735]
            t = _735 + 32
            u = mem[64]
            s = mem[_735]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_735])] = mem[_735 + floor32(mem[_735]) + -(mem[_735] % 32) + 64 len mem[_735] % 32] or Mask(8 * -(mem[_735] % 32) + 32, -(8 * -(mem[_735] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_735])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _738 + _734 + -mem[64] + 96]
            if return_data.size:
                _1002 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1002] = return_data.size
                mem[_1002 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _676 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _678 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _678) + _676 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _985 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _678) + _676 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _985) + (32 * _678) + _676 + -mem[64] + 128
    mem[0] = sha3('fee')
    mem[32] = 3
    if vipPrice['fee'] <= 0:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[(64 * ('cd', 36).length) + 259] = msg.sender
            mem[(64 * ('cd', 36).length) + 291] = this.address
            mem[(64 * ('cd', 36).length) + 323] = cd[100]
            mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
            mem[64] = (64 * ('cd', 36).length) + 355
            mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
            mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
            mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 287 len (127 * ('cd', 36).length) + 100 % 32]
            call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
            if not return_data.size:
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _679 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _680 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_680 + 32] = mem[_680 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _683 = mem[_680]
                    t = _680 + 32
                    u = mem[64]
                    s = mem[_680]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_680])] = mem[_680 + floor32(mem[_680]) + -(mem[_680] % 32) + 64 len mem[_680] % 32] or Mask(8 * -(mem[_680] % 32) + 32, -(8 * -(mem[_680] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_680])])
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _683 + _679 + -mem[64] + 96]
                    if return_data.size:
                        _991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_991] = return_data.size
                        mem[_991 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require idx < mem[159]
                        mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                        require idx < ('cd', 68).length
                        require idx < mem[(32 * ('cd', 36).length) + 191]
                        mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                    idx = idx + 1
                    continue 
                _643 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[159]
                _645 = mem[159]
                mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
                mem[mem[64] + 32] = (32 * mem[159]) + 96
                mem[(32 * _645) + _643 + 96] = mem[(32 * ('cd', 36).length) + 191]
                _908 = mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * _645) + _643 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
                return memory
                  from mem[64]
                   len (32 * _908) + (32 * _645) + _643 + -mem[64] + 128
            mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
            mem[(64 * ('cd', 36).length) + 355] = return_data.size
            mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _684 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _685 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_685 + 32] = mem[_685 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _688 = mem[_685]
                t = _685 + 32
                u = mem[64]
                s = mem[_685]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_685])] = mem[_685 + floor32(mem[_685]) + -(mem[_685] % 32) + 64 len mem[_685] % 32] or Mask(8 * -(mem[_685] % 32) + 32, -(8 * -(mem[_685] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_685])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _688 + _684 + -mem[64] + 96]
                if return_data.size:
                    _992 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_992] = return_data.size
                    mem[_992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _646 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _648 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _648) + _646 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _915 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _648) + _646 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _915) + (32 * _648) + _646 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + 259] = msg.sender
        mem[(64 * ('cd', 36).length) + 291] = this.address
        mem[(64 * ('cd', 36).length) + 323] = cd[100]
        mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
        mem[64] = (64 * ('cd', 36).length) + 355
        mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
        mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 287 len (127 * ('cd', 36).length) + 100 % 32]
        call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _689 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _690 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_690 + 32] = mem[_690 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _693 = mem[_690]
                t = _690 + 32
                u = mem[64]
                s = mem[_690]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_690])] = mem[_690 + floor32(mem[_690]) + -(mem[_690] % 32) + 64 len mem[_690] % 32] or Mask(8 * -(mem[_690] % 32) + 32, -(8 * -(mem[_690] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_690])])
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _693 + _689 + -mem[64] + 96]
                if return_data.size:
                    _993 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_993] = return_data.size
                    mem[_993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _649 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _651 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _651) + _649 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _922 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _651) + _649 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _922) + (32 * _651) + _649 + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
        mem[(64 * ('cd', 36).length) + 355] = return_data.size
        mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _694 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _695 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_695 + 32] = mem[_695 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _698 = mem[_695]
            t = _695 + 32
            u = mem[64]
            s = mem[_695]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_695])] = mem[_695 + floor32(mem[_695]) + -(mem[_695] % 32) + 64 len mem[_695] % 32] or Mask(8 * -(mem[_695] % 32) + 32, -(8 * -(mem[_695] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_695])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _698 + _694 + -mem[64] + 96]
            if return_data.size:
                _994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_994] = return_data.size
                mem[_994 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _652 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _654 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _654) + _652 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _929 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _654) + _652 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _929) + (32 * _654) + _652 + -mem[64] + 128
    if msg.value < vipPrice['fee']:
        revert with 0, 'no fee'
    mem[159] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 259] = msg.sender
        mem[(64 * ('cd', 36).length) + 291] = this.address
        mem[(64 * ('cd', 36).length) + 323] = cd[100]
        mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
        mem[64] = (64 * ('cd', 36).length) + 355
        mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
        mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 287 len (127 * ('cd', 36).length) + 100 % 32]
        call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _699 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _700 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_700 + 32] = mem[_700 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _703 = mem[_700]
                t = _700 + 32
                u = _699 + 100
                s = mem[_700]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_699 + floor32(mem[_700]) + 100] = mem[_700 + -(mem[_700] % 32) + floor32(mem[_700]) + 64 len mem[_700] % 32] or Mask(8 * -(mem[_700] % 32) + 32, -(8 * -(mem[_700] % 32) + 32) + 256, mem[_699 + floor32(mem[_700]) + 100])
                call address(cd[4]).mem[_699 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_699 + 104 len _703 - 4]
                if return_data.size:
                    mem[64] = _699 + ceil32(return_data.size) + 101
                    mem[_699 + 100] = return_data.size
                    mem[_699 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _655 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _657 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _657) + _655 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _936 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _657) + _655 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _936) + (32 * _657) + _655 + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
        mem[(64 * ('cd', 36).length) + 355] = return_data.size
        mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _704 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _705 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_705 + 32] = mem[_705 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _708 = mem[_705]
            t = _705 + 32
            u = _704 + 100
            s = mem[_705]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_704 + floor32(mem[_705]) + 100] = mem[_705 + -(mem[_705] % 32) + floor32(mem[_705]) + 64 len mem[_705] % 32] or Mask(8 * -(mem[_705] % 32) + 32, -(8 * -(mem[_705] % 32) + 32) + 256, mem[_704 + floor32(mem[_705]) + 100])
            call address(cd[4]).mem[_704 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_704 + 104 len _708 - 4]
            if return_data.size:
                mem[64] = _704 + ceil32(return_data.size) + 101
                mem[_704 + 100] = return_data.size
                mem[_704 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _658 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _660 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _660) + _658 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _943 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _660) + _658 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _943) + (32 * _660) + _658 + -mem[64] + 128
    mem[191 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[23564 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + 259] = msg.sender
    mem[(64 * ('cd', 36).length) + 291] = this.address
    mem[(64 * ('cd', 36).length) + 323] = cd[100]
    mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
    mem[64] = (64 * ('cd', 36).length) + 355
    mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
    mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 287 len (127 * ('cd', 36).length) + 100 % 32]
    call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
    if not return_data.size:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _709 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _710 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_710 + 32] = mem[_710 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _713 = mem[_710]
            t = _710 + 32
            u = mem[64]
            s = mem[_710]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_710])] = mem[_710 + floor32(mem[_710]) + -(mem[_710] % 32) + 64 len mem[_710] % 32] or Mask(8 * -(mem[_710] % 32) + 32, -(8 * -(mem[_710] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_710])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _713 + _709 + -mem[64] + 96]
            if return_data.size:
                _997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_997] = return_data.size
                mem[_997 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _661 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _663 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _663) + _661 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _950 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _663) + _661 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _950) + (32 * _663) + _661 + -mem[64] + 128
    mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
    mem[(64 * ('cd', 36).length) + 355] = return_data.size
    mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        _714 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        _715 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_715 + 32] = mem[_715 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        _718 = mem[_715]
        t = _715 + 32
        u = mem[64]
        s = mem[_715]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_715])] = mem[_715 + floor32(mem[_715]) + -(mem[_715] % 32) + 64 len mem[_715] % 32] or Mask(8 * -(mem[_715] % 32) + 32, -(8 * -(mem[_715] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_715])])
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _718 + _714 + -mem[64] + 96]
        if return_data.size:
            _998 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_998] = return_data.size
            mem[_998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require idx < ('cd', 36).length
            require idx < mem[159]
            mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    _664 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[159]
    _666 = mem[159]
    mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
    mem[mem[64] + 32] = (32 * mem[159]) + 96
    mem[(32 * _666) + _664 + 96] = mem[(32 * ('cd', 36).length) + 191]
    _957 = mem[(32 * ('cd', 36).length) + 191]
    mem[(32 * _666) + _664 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
    return memory
      from mem[64]
       len (32 * _957) + (32 * _666) + _664 + -mem[64] + 128
}



}
