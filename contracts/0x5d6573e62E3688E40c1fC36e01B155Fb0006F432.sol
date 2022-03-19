contract main {




// =====================  Runtime code  =====================


const EIP712_DOMAIN_TYPEHASH = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472


array of uint256 stor0;
array of uint256 version;
array of uint256 stor2;
mapping of uint256 vipPrice;
mapping of uint8 stor7;
mapping of uint256 stor6710629;
mapping of address stor478745093490;
mapping of uint256 stor27980790284306788;
mapping of address stor34784943920356371488173876594;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function getVipPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return vipPrice[0][arg1]
}

function getUnlimAccess(address arg1) {
    require calldata.size - 4 >= 32
    return vipPrice[Mask(88, 0, 'unlimAccess')][arg1]
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
    return vipPrice[Mask(88, 0, 'referralFee')]
}

function owner() {
    return stor5[('name', 'stor6F77', 478745093490)]
}

function getAllVipPrices() {
    return uint256(stor3[('name', 'stor0', 0)]), 
           stor3[('map', 0, ('name', 'version', 1))],
           uint256(stor3[('map', 0, ('name', 'stor2', 2))])
}

function fee() {
    return stor3[('name', 'stor6665', 6710629)]
}

function pendingOwner() {
    return stor5[('name', 'stor7065', 34784943920356371488173876594)]
}

function _fallback() payable {
  stop
}

function hash(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sha3(0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25, address(arg1), arg2)
}

function setVipPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    vipPrice[0][arg1] = arg2
}

function currentFee(address arg1) {
    require calldata.size - 4 >= 32
    if vipPrice[Mask(88, 0, 'unlimAccess')][arg1] < block.timestamp:
        return stor3[('name', 'stor6665', 6710629)]
    else:
        return 0
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require arg1
    stor3[('name', 'stor6665', 6710629)] = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require arg1
    stor5[('name', 'stor7065', 34784943920356371488173876594)] = arg1
}

function setReferralFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require stor3[('name', 'stor6665', 6710629)] >= arg1
    vipPrice[Mask(88, 0, 'referralFee')] = arg1
}

function getDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return (block.timestamp + (24 * 3600))
    if 1 == arg1:
        return (block.timestamp + (168 * 24 * 3600))
    if arg1 != 2:
        return 0
    return (block.timestamp + (720 * 24 * 3600))
}

function DOMAIN_SEPARATOR() {
    return sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
}

function claimOwnership() {
    require msg.sender == stor5[('name', 'stor7065', 34784943920356371488173876594)]
    emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], stor5[('name', 'stor7065', 34784943920356371488173876594)]);
    stor5[('name', 'stor6F77', 478745093490)] = stor5[('name', 'stor7065', 34784943920356371488173876594)]
    stor5[('name', 'stor7065', 34784943920356371488173876594)] = 0
}

function buyVip(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value >= vipPrice[0][arg1]
    if not arg1:
        vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg1:
            vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg1 != 2:
                vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = 0
            else:
                vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = block.timestamp + (720 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg1);
}

function setAddressToVip(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    if not arg2:
        vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg2:
            vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg2 != 2:
                vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = 0
            else:
                vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = block.timestamp + (720 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg2);
}

function sub_829fb13c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[15817 len 32 * ('cd', 4).length]
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
        require msg.sender == stor5[('name', 'stor6F77', 478745093490)]
    emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], arg1);
    stor5[('name', 'stor6F77', 478745093490)] = arg1
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require arg2
    stor3[('name', 'stor6665', 6710629)] = arg2
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    uint256(stor3[('name', 'stor0', 0)]) = arg3
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    stor3[('map', 0, ('name', 'version', 1))] = arg4
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = arg5
    stor3[('name', 'stor6368', 27980790284306788)] = arg6
    stor7['rs_multisender_initialized'] = 1
    require stor3[('name', 'stor6665', 6710629)] >= 10^16
    vipPrice[Mask(88, 0, 'referralFee')] = 10^16
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
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), 0, mem[128], mem[160]) 
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
        mem[128 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
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
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    if arg2:
        if not arg1:
            call stor5[('name', 'stor6F77', 478745093490)] with:
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
                args stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit ClaimedTokens(address(arg1), stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]);
    else:
        if not arg1:
            call stor5[('name', 'stor6F77', 478745093490)] with:
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
                args stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit ClaimedTokens(address(arg1), stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]);
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not arg1.length:
        revert with 0, 'no contributors sent'
    if arg1.length != arg2.length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    require msg.value <= eth.balance(this.address)
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
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
        require stor3[('name', 'stor6665', 6710629)] <= msg.value
        idx = 0
        s = msg.value - stor3[('name', 'stor6665', 6710629)]
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
        require stor3[('name', 'stor6665', 6710629)] >= 0
        if eth.balance(this.address) < stor3[('name', 'stor6665', 6710629)] + eth.balance(this.address) - msg.value:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    emit 0x7904afd2: s, 48879
}

function etherFindBadAddresses(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not arg1.length:
        revert with 0, 'no contributors sent'
    if arg1.length != arg2.length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    if not arg1.length:
        mem[(32 * arg1.length) + 128] = arg1.length
    else:
        mem[128 len 32 * arg1.length] = code.data[15817 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[15817 len 32 * arg1.length]
    mem[(64 * arg1.length) + 192] = 'unlimAccess' << 168
    mem[(64 * arg1.length) + 203] = address(msg.sender)
    mem[(64 * arg1.length) + 160] = (127 * arg1.length) + 31
    if vipPrice[mem[(64 * arg1.length) + 192 len (127 * arg1.length) + 31]] < block.timestamp:
        require stor3[('name', 'stor6665', 6710629)] <= msg.value
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < arg2.length
                require cd[((32 * idx) + arg2 + 36)] <= msg.value - stor3[('name', 'stor6665', 6710629)]
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
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[64] = 159
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _112 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _113 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_113 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_113 + 36 len 28]
            _116 = mem[_113]
            t = _113 + 32
            u = _112 + 132
            s = mem[_113]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_112 + floor32(mem[_113]) + 132] = mem[_113 + -(mem[_113] % 32) + floor32(mem[_113]) + 64 len mem[_113] % 32] or Mask(8 * -(mem[_113] % 32) + 32, -(8 * -(mem[_113] % 32) + 32) + 256, mem[_112 + floor32(mem[_113]) + 132])
            call address(cd[4]).mem[_112 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_112 + 136 len _116 - 4]
            if return_data.size:
                mem[64] = _112 + ceil32(return_data.size) + 133
                mem[_112 + 132] = return_data.size
                mem[_112 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[159] = 0x6665650000000000000000000000000000000000000000000000000000000000
        mem[0] = sha3(6710629)
        mem[32] = 3
        if not stor3[('name', 'stor6665', 6710629)]:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _97 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _98 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_98 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_98 + 36 len 28]
                _101 = mem[_98]
                t = _98 + 32
                u = _97 + 132
                s = mem[_98]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_97 + floor32(mem[_98]) + 132] = mem[_98 + -(mem[_98] % 32) + floor32(mem[_98]) + 64 len mem[_98] % 32] or Mask(8 * -(mem[_98] % 32) + 32, -(8 * -(mem[_98] % 32) + 32) + 256, mem[_97 + floor32(mem[_98]) + 132])
                call address(cd[4]).mem[_97 + 132 len 4] with:
                     gas gas_remaining wei
                    args mem[_97 + 136 len _101 - 4]
                if return_data.size:
                    mem[64] = _97 + ceil32(return_data.size) + 133
                    mem[_97 + 132] = return_data.size
                    mem[_97 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if msg.value < stor3[('name', 'stor6665', 6710629)]:
                revert with 0, 'no fee'
            if not address(cd[132]):
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _102 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _103 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_103 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_103 + 36 len 28]
                    _106 = mem[_103]
                    t = _103 + 32
                    u = _102 + 132
                    s = mem[_103]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_102 + floor32(mem[_103]) + 132] = mem[_103 + -(mem[_103] % 32) + floor32(mem[_103]) + 64 len mem[_103] % 32] or Mask(8 * -(mem[_103] % 32) + 32, -(8 * -(mem[_103] % 32) + 32) + 256, mem[_102 + floor32(mem[_103]) + 132])
                    call address(cd[4]).mem[_102 + 132 len 4] with:
                         gas gas_remaining wei
                        args mem[_102 + 136 len _106 - 4]
                    if return_data.size:
                        mem[64] = _102 + ceil32(return_data.size) + 133
                        mem[_102 + 132] = return_data.size
                        mem[_102 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[159] = 'referralFee' << 168
                mem[0] = sha3(Mask(88, 0, 'referralFee'))
                mem[32] = 3
                call address(cd[132]) with:
                   value vipPrice[Mask(88, 0, 'referralFee')] wei
                     gas 2300 * is_zero(value) wei
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _107 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _108 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_108 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_108 + 36 len 28]
                    _111 = mem[_108]
                    t = _108 + 32
                    u = _107 + 132
                    s = mem[_108]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_107 + floor32(mem[_108]) + 132] = mem[_108 + -(mem[_108] % 32) + floor32(mem[_108]) + 64 len mem[_108] % 32] or Mask(8 * -(mem[_108] % 32) + 32, -(8 * -(mem[_108] % 32) + 32) + 256, mem[_107 + floor32(mem[_108]) + 132])
                    call address(cd[4]).mem[_107 + 132 len 4] with:
                         gas gas_remaining wei
                        args mem[_107 + 136 len _111 - 4]
                    if return_data.size:
                        mem[64] = _107 + ceil32(return_data.size) + 133
                        mem[_107 + 132] = return_data.size
                        mem[_107 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    emit 0x7904afd2: cd[100], address(cd[4])
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
                    0x746865207369676e617475726520697320696e76616c6964206f72206861732065787069726500,
                    mem[ceil32(('cd', 164).length) + 235 len 25]
    mem[ceil32(('cd', 164).length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(('cd', 164).length) + 192] = msg.sender
    mem[ceil32(('cd', 164).length) + 224] = cd[196]
    mem[ceil32(('cd', 164).length) + 128] = 96
    _5 = sha3(mem[ceil32(('cd', 164).length) + 160 len Mask(8 * -ceil32(('cd', 164).length) + ('cd', 164).length + 32, 0, 0), mem[('cd', 164).length + 160 len -('cd', 164).length + ceil32(('cd', 164).length)]])
    mem[ceil32(('cd', 164).length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(('cd', 164).length) + 320] = sha3(93641805625544816009176434)
    mem[ceil32(('cd', 164).length) + 352] = sha3(3288624)
    mem[ceil32(('cd', 164).length) + 384] = stor3[('name', 'stor6368', 27980790284306788)]
    mem[ceil32(('cd', 164).length) + 416] = this.address
    mem[ceil32(('cd', 164).length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(('cd', 164).length) + 256] = 192
    mem[ceil32(('cd', 164).length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 164).length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(('cd', 164).length) + 546] = _5
    mem[ceil32(('cd', 164).length) + 480] = 66
    mem[ceil32(('cd', 164).length) + 674] = mem[128]
    mem[ceil32(('cd', 164).length) + 706] = mem[160]
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _5), 0, mem[128], mem[160]) 
    mem[ceil32(('cd', 164).length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[171 len 21],
                    mem[ceil32(('cd', 164).length) + 738 len 4]
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[ceil32(('cd', 164).length) + 642] = 'unlimAccess' << 168
    mem[ceil32(('cd', 164).length) + 653] = address(signer)
    mem[ceil32(('cd', 164).length) + 610] = 31
    mem[64] = ceil32(('cd', 164).length) + 673
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), address(signer))
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][address(signer)] >= block.timestamp:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _144 = mem[64]
            mem[mem[64] + 36] = address(signer)
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _145 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_145 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_145 + 36 len 28]
            _148 = mem[_145]
            t = _145 + 32
            u = _144 + 132
            s = mem[_145]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_144 + floor32(mem[_145]) + 132] = mem[_145 + -(mem[_145] % 32) + floor32(mem[_145]) + 64 len mem[_145] % 32] or Mask(8 * -(mem[_145] % 32) + 32, -(8 * -(mem[_145] % 32) + 32) + 256, mem[_144 + floor32(mem[_145]) + 132])
            call address(cd[4]).mem[_144 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_144 + 136 len _148 - 4]
            if return_data.size:
                mem[64] = _144 + ceil32(return_data.size) + 133
                mem[_144 + 132] = return_data.size
                mem[_144 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[ceil32(('cd', 164).length) + 673] = 0x6665650000000000000000000000000000000000000000000000000000000000
        mem[0] = sha3(6710629)
        mem[32] = 3
        if not stor3[('name', 'stor6665', 6710629)]:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _129 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _130 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_130 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_130 + 36 len 28]
                _133 = mem[_130]
                t = _130 + 32
                u = _129 + 132
                s = mem[_130]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_129 + floor32(mem[_130]) + 132] = mem[_130 + -(mem[_130] % 32) + floor32(mem[_130]) + 64 len mem[_130] % 32] or Mask(8 * -(mem[_130] % 32) + 32, -(8 * -(mem[_130] % 32) + 32) + 256, mem[_129 + floor32(mem[_130]) + 132])
                call address(cd[4]).mem[_129 + 132 len 4] with:
                     gas gas_remaining wei
                    args mem[_129 + 136 len _133 - 4]
                if return_data.size:
                    mem[64] = _129 + ceil32(return_data.size) + 133
                    mem[_129 + 132] = return_data.size
                    mem[_129 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if msg.value < stor3[('name', 'stor6665', 6710629)]:
                revert with 0, 'no fee'
            if not address(cd[132]):
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _134 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _135 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_135 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_135 + 36 len 28]
                    _138 = mem[_135]
                    t = _135 + 32
                    u = _134 + 132
                    s = mem[_135]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_134 + floor32(mem[_135]) + 132] = mem[_135 + -(mem[_135] % 32) + floor32(mem[_135]) + 64 len mem[_135] % 32] or Mask(8 * -(mem[_135] % 32) + 32, -(8 * -(mem[_135] % 32) + 32) + 256, mem[_134 + floor32(mem[_135]) + 132])
                    call address(cd[4]).mem[_134 + 132 len 4] with:
                         gas gas_remaining wei
                        args mem[_134 + 136 len _138 - 4]
                    if return_data.size:
                        mem[64] = _134 + ceil32(return_data.size) + 133
                        mem[_134 + 132] = return_data.size
                        mem[_134 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(('cd', 164).length) + 673] = 'referralFee' << 168
                mem[0] = sha3(Mask(88, 0, 'referralFee'))
                mem[32] = 3
                call address(cd[132]) with:
                   value vipPrice[Mask(88, 0, 'referralFee')] wei
                     gas 2300 * is_zero(value) wei
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _139 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                    _140 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_140 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_140 + 36 len 28]
                    _143 = mem[_140]
                    t = _140 + 32
                    u = _139 + 132
                    s = mem[_140]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_139 + floor32(mem[_140]) + 132] = mem[_140 + -(mem[_140] % 32) + floor32(mem[_140]) + 64 len mem[_140] % 32] or Mask(8 * -(mem[_140] % 32) + 32, -(8 * -(mem[_140] % 32) + 32) + 256, mem[_139 + floor32(mem[_140]) + 132])
                    call address(cd[4]).mem[_139 + 132 len 4] with:
                         gas gas_remaining wei
                        args mem[_139 + 136 len _143 - 4]
                    if return_data.size:
                        mem[64] = _139 + ceil32(return_data.size) + 133
                        mem[_139 + 132] = return_data.size
                        mem[_139 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    emit 0x7904afd2: cd[100], address(cd[4])
}

function sub_05dba83f(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + 223
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _199 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _200 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_200 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_200 + 36 len 28]
                _203 = mem[_200]
                t = _200 + 32
                u = _199 + 132
                s = mem[_200]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_199 + floor32(mem[_200]) + 132] = mem[_200 + -(mem[_200] % 32) + floor32(mem[_200]) + 64 len mem[_200] % 32] or Mask(8 * -(mem[_200] % 32) + 32, -(8 * -(mem[_200] % 32) + 32) + 256, mem[_199 + floor32(mem[_200]) + 132])
                call address(cd[4]).mem[_199 + 132 len 4] with:
                     gas gas_remaining wei
                    args mem[_199 + 136 len _203 - 4]
                if return_data.size:
                    mem[64] = _199 + ceil32(return_data.size) + 133
                    mem[_199 + 132] = return_data.size
                    mem[_199 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _173 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _175 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _175) + _173 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _322 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _175) + _173 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _322) + (32 * _175) + _173 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _204 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _205 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_205 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_205 + 36 len 28]
            _208 = mem[_205]
            t = _205 + 32
            u = _204 + 132
            s = mem[_205]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_204 + floor32(mem[_205]) + 132] = mem[_205 + -(mem[_205] % 32) + floor32(mem[_205]) + 64 len mem[_205] % 32] or Mask(8 * -(mem[_205] % 32) + 32, -(8 * -(mem[_205] % 32) + 32) + 256, mem[_204 + floor32(mem[_205]) + 132])
            call address(cd[4]).mem[_204 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_204 + 136 len _208 - 4]
            if return_data.size:
                mem[64] = _204 + ceil32(return_data.size) + 133
                mem[_204 + 132] = return_data.size
                mem[_204 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _176 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _178 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _178) + _176 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _329 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _178) + _176 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _329) + (32 * _178) + _176 + -mem[64] + 128
    mem[0] = sha3(6710629)
    mem[32] = 3
    if not stor3[('name', 'stor6665', 6710629)]:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + 223
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _179 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
                _180 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_180 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_180 + 36 len 28]
                _183 = mem[_180]
                t = _180 + 32
                u = _179 + 132
                s = mem[_180]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_179 + floor32(mem[_180]) + 132] = mem[_180 + -(mem[_180] % 32) + floor32(mem[_180]) + 64 len mem[_180] % 32] or Mask(8 * -(mem[_180] % 32) + 32, -(8 * -(mem[_180] % 32) + 32) + 256, mem[_179 + floor32(mem[_180]) + 132])
                call address(cd[4]).mem[_179 + 132 len 4] with:
                     gas gas_remaining wei
                    args mem[_179 + 136 len _183 - 4]
                if return_data.size:
                    mem[64] = _179 + ceil32(return_data.size) + 133
                    mem[_179 + 132] = return_data.size
                    mem[_179 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _161 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _163 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _163) + _161 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _294 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _163) + _161 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _294) + (32 * _163) + _161 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _184 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _185 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_185 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_185 + 36 len 28]
            _188 = mem[_185]
            t = _185 + 32
            u = _184 + 132
            s = mem[_185]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_184 + floor32(mem[_185]) + 132] = mem[_185 + -(mem[_185] % 32) + floor32(mem[_185]) + 64 len mem[_185] % 32] or Mask(8 * -(mem[_185] % 32) + 32, -(8 * -(mem[_185] % 32) + 32) + 256, mem[_184 + floor32(mem[_185]) + 132])
            call address(cd[4]).mem[_184 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_184 + 136 len _188 - 4]
            if return_data.size:
                mem[64] = _184 + ceil32(return_data.size) + 133
                mem[_184 + 132] = return_data.size
                mem[_184 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _164 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _166 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _166) + _164 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _301 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _166) + _164 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _301) + (32 * _166) + _164 + -mem[64] + 128
    if msg.value < stor3[('name', 'stor6665', 6710629)]:
        revert with 0, 'no fee'
    mem[159] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _189 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _190 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_190 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_190 + 36 len 28]
            _193 = mem[_190]
            t = _190 + 32
            u = _189 + 132
            s = mem[_190]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_189 + floor32(mem[_190]) + 132] = mem[_190 + -(mem[_190] % 32) + floor32(mem[_190]) + 64 len mem[_190] % 32] or Mask(8 * -(mem[_190] % 32) + 32, -(8 * -(mem[_190] % 32) + 32) + 256, mem[_189 + floor32(mem[_190]) + 132])
            call address(cd[4]).mem[_189 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_189 + 136 len _193 - 4]
            if return_data.size:
                mem[64] = _189 + ceil32(return_data.size) + 133
                mem[_189 + 132] = return_data.size
                mem[_189 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _167 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _169 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _169) + _167 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _308 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _169) + _167 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _308) + (32 * _169) + _167 + -mem[64] + 128
    mem[191 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 223
    mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        _194 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
        _195 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_195 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_195 + 36 len 28]
        _198 = mem[_195]
        t = _195 + 32
        u = _194 + 132
        s = mem[_195]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_194 + floor32(mem[_195]) + 132] = mem[_195 + -(mem[_195] % 32) + floor32(mem[_195]) + 64 len mem[_195] % 32] or Mask(8 * -(mem[_195] % 32) + 32, -(8 * -(mem[_195] % 32) + 32) + 256, mem[_194 + floor32(mem[_195]) + 132])
        call address(cd[4]).mem[_194 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_194 + 136 len _198 - 4]
        if return_data.size:
            mem[64] = _194 + ceil32(return_data.size) + 133
            mem[_194 + 132] = return_data.size
            mem[_194 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require idx < ('cd', 36).length
            require idx < mem[159]
            mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    _170 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[159]
    _172 = mem[159]
    mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
    mem[mem[64] + 32] = (32 * mem[159]) + 96
    mem[(32 * _172) + _170 + 96] = mem[(32 * ('cd', 36).length) + 191]
    _315 = mem[(32 * ('cd', 36).length) + 191]
    mem[(32 * _172) + _170 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
    return memory
      from mem[64]
       len (32 * _315) + (32 * _172) + _170 + -mem[64] + 128
}

function sub_4ad6b31c(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        mem[195] = msg.sender
        mem[227] = this.address
        mem[259] = cd[100]
        mem[159] = 100
        mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, Mask(224, 32, cd[100]) >> 32
        mem[415 len 4] = uint32(cd[100])
        call address(cd[4]) with:
           funct uint32(this.address)
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
        if not return_data.size:
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _811 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _812 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_812 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_812 + 36 len 28]
                _815 = mem[_812]
                u = _812 + 32
                v = _811 + 100
                t = mem[_812]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_811 + floor32(mem[_812]) + 100] = mem[_812 + -(mem[_812] % 32) + floor32(mem[_812]) + 64 len mem[_812] % 32] or Mask(8 * -(mem[_812] % 32) + 32, -(8 * -(mem[_812] % 32) + 32) + 256, mem[_811 + floor32(mem[_812]) + 100])
                call address(cd[4]).mem[_811 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_811 + 104 len _815 - 4]
                if return_data.size:
                    mem[64] = _811 + ceil32(return_data.size) + 101
                    mem[_811 + 100] = return_data.size
                    mem[_811 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                _816 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _817 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_817 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_817 + 36 len 28]
                _820 = mem[_817]
                u = _817 + 32
                v = _816 + 100
                t = mem[_817]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_816 + floor32(mem[_817]) + 100] = mem[_817 + -(mem[_817] % 32) + floor32(mem[_817]) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[_816 + floor32(mem[_817]) + 100])
                call address(cd[4]).mem[_816 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_816 + 104 len _820 - 4]
                if return_data.size:
                    mem[64] = _816 + ceil32(return_data.size) + 101
                    mem[_816 + 100] = return_data.size
                    mem[_816 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
        mem[0] = sha3(6710629)
        mem[32] = 3
        if not stor3[('name', 'stor6665', 6710629)]:
            mem[195] = msg.sender
            mem[227] = this.address
            mem[259] = cd[100]
            mem[159] = 100
            mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
            mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, Mask(224, 32, cd[100]) >> 32
            mem[415 len 4] = uint32(cd[100])
            call address(cd[4]) with:
               funct uint32(this.address)
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
            if not return_data.size:
                idx = 0
                s = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _751 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _752 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_752 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_752 + 36 len 28]
                    _755 = mem[_752]
                    u = _752 + 32
                    v = _751 + 100
                    t = mem[_752]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_751 + floor32(mem[_752]) + 100] = mem[_752 + -(mem[_752] % 32) + floor32(mem[_752]) + 64 len mem[_752] % 32] or Mask(8 * -(mem[_752] % 32) + 32, -(8 * -(mem[_752] % 32) + 32) + 256, mem[_751 + floor32(mem[_752]) + 100])
                    call address(cd[4]).mem[_751 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_751 + 104 len _755 - 4]
                    if return_data.size:
                        mem[64] = _751 + ceil32(return_data.size) + 101
                        mem[_751 + 100] = return_data.size
                        mem[_751 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                    _756 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _757 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_757 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_757 + 36 len 28]
                    _760 = mem[_757]
                    u = _757 + 32
                    v = _756 + 100
                    t = mem[_757]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_756 + floor32(mem[_757]) + 100] = mem[_757 + -(mem[_757] % 32) + floor32(mem[_757]) + 64 len mem[_757] % 32] or Mask(8 * -(mem[_757] % 32) + 32, -(8 * -(mem[_757] % 32) + 32) + 256, mem[_756 + floor32(mem[_757]) + 100])
                    call address(cd[4]).mem[_756 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_756 + 104 len _760 - 4]
                    if return_data.size:
                        mem[64] = _756 + ceil32(return_data.size) + 101
                        mem[_756 + 100] = return_data.size
                        mem[_756 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
            if msg.value < stor3[('name', 'stor6665', 6710629)]:
                revert with 0, 'no fee'
            if not address(cd[132]):
                mem[195] = msg.sender
                mem[227] = this.address
                mem[259] = cd[100]
                mem[159] = 100
                mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, Mask(224, 32, cd[100]) >> 32
                mem[415 len 4] = uint32(cd[100])
                call address(cd[4]) with:
                   funct uint32(this.address)
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
                if not return_data.size:
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        _771 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _772 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_772 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_772 + 36 len 28]
                        _775 = mem[_772]
                        u = _772 + 32
                        v = _771 + 100
                        t = mem[_772]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_771 + floor32(mem[_772]) + 100] = mem[_772 + -(mem[_772] % 32) + floor32(mem[_772]) + 64 len mem[_772] % 32] or Mask(8 * -(mem[_772] % 32) + 32, -(8 * -(mem[_772] % 32) + 32) + 256, mem[_771 + floor32(mem[_772]) + 100])
                        call address(cd[4]).mem[_771 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_771 + 104 len _775 - 4]
                        if return_data.size:
                            mem[64] = _771 + ceil32(return_data.size) + 101
                            mem[_771 + 100] = return_data.size
                            mem[_771 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                        _776 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _777 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_777 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_777 + 36 len 28]
                        _780 = mem[_777]
                        u = _777 + 32
                        v = _776 + 100
                        t = mem[_777]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_776 + floor32(mem[_777]) + 100] = mem[_777 + -(mem[_777] % 32) + floor32(mem[_777]) + 64 len mem[_777] % 32] or Mask(8 * -(mem[_777] % 32) + 32, -(8 * -(mem[_777] % 32) + 32) + 256, mem[_776 + floor32(mem[_777]) + 100])
                        call address(cd[4]).mem[_776 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_776 + 104 len _780 - 4]
                        if return_data.size:
                            mem[64] = _776 + ceil32(return_data.size) + 101
                            mem[_776 + 100] = return_data.size
                            mem[_776 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                mem[0] = sha3(Mask(88, 0, 'referralFee'))
                mem[32] = 3
                call address(cd[132]) with:
                   value vipPrice[Mask(88, 0, 'referralFee')] wei
                     gas 2300 * is_zero(value) wei
                mem[195] = msg.sender
                mem[227] = this.address
                mem[259] = cd[100]
                mem[159] = 100
                mem[195 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[191 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                mem[291 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, Mask(224, 32, cd[100]) >> 32
                mem[415 len 4] = uint32(cd[100])
                call address(cd[4]) with:
                   funct uint32(this.address)
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
                if not return_data.size:
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require idx < ('cd', 68).length
                        _791 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _792 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_792 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_792 + 36 len 28]
                        _795 = mem[_792]
                        u = _792 + 32
                        v = _791 + 100
                        t = mem[_792]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_791 + floor32(mem[_792]) + 100] = mem[_792 + -(mem[_792] % 32) + floor32(mem[_792]) + 64 len mem[_792] % 32] or Mask(8 * -(mem[_792] % 32) + 32, -(8 * -(mem[_792] % 32) + 32) + 256, mem[_791 + floor32(mem[_792]) + 100])
                        call address(cd[4]).mem[_791 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_791 + 104 len _795 - 4]
                        if return_data.size:
                            mem[64] = _791 + ceil32(return_data.size) + 101
                            mem[_791 + 100] = return_data.size
                            mem[_791 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                        _796 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        _797 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_797 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_797 + 36 len 28]
                        _800 = mem[_797]
                        u = _797 + 32
                        v = _796 + 100
                        t = mem[_797]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_796 + floor32(mem[_797]) + 100] = mem[_797 + -(mem[_797] % 32) + floor32(mem[_797]) + 64 len mem[_797] % 32] or Mask(8 * -(mem[_797] % 32) + 32, -(8 * -(mem[_797] % 32) + 32) + 256, mem[_796 + floor32(mem[_797]) + 100])
                        call address(cd[4]).mem[_796 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_796 + 104 len _800 - 4]
                        if return_data.size:
                            mem[64] = _796 + ceil32(return_data.size) + 101
                            mem[_796 + 100] = return_data.size
                            mem[_796 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
    emit 0x7904afd2: cd[100], address(cd[4])
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
                    0x746865207369676e617475726520697320696e76616c6964206f72206861732065787069726500,
                    mem[ceil32(arg6.length) + 235 len 25]
    mem[ceil32(arg6.length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(arg6.length) + 192] = msg.sender
    mem[ceil32(arg6.length) + 224] = arg7
    mem[ceil32(arg6.length) + 128] = 96
    _5 = sha3(mem[ceil32(arg6.length) + 160 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]])
    mem[ceil32(arg6.length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(arg6.length) + 320] = sha3(93641805625544816009176434)
    mem[ceil32(arg6.length) + 352] = sha3(3288624)
    mem[ceil32(arg6.length) + 384] = stor3[('name', 'stor6368', 27980790284306788)]
    mem[ceil32(arg6.length) + 416] = this.address
    mem[ceil32(arg6.length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(arg6.length) + 256] = 192
    mem[ceil32(arg6.length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg6.length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(arg6.length) + 546] = _5
    mem[ceil32(arg6.length) + 480] = 66
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _5), 0, mem[128], mem[160]) 
    mem[ceil32(arg6.length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[171 len 21],
                    mem[ceil32(arg6.length) + 738 len 4]
    if not arg2.length:
        revert with 0, 'no contributors sent'
    if arg3.length != arg2.length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[ceil32(arg6.length) + 642] = 'unlimAccess' << 168
    mem[ceil32(arg6.length) + 653] = address(signer)
    mem[ceil32(arg6.length) + 610] = 31
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), address(signer))
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][address(signer)] >= block.timestamp:
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
                _475 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                _476 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_476 + 32] = mem[_476 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _479 = mem[_476]
                u = _476 + 32
                v = _475 + 100
                t = mem[_476]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_475 + floor32(mem[_476]) + 100] = mem[_476 + -(mem[_476] % 32) + floor32(mem[_476]) + 64 len mem[_476] % 32] or Mask(8 * -(mem[_476] % 32) + 32, -(8 * -(mem[_476] % 32) + 32) + 256, mem[_475 + floor32(mem[_476]) + 100])
                call arg1.mem[_475 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_475 + 104 len _479 - 4]
                if return_data.size:
                    mem[64] = _475 + ceil32(return_data.size) + 101
                    mem[_475 + 100] = return_data.size
                    mem[_475 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                _431 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = s
                _432 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_432 + 32 len 4] = transfer(address rg1, uint256 rg2)
                _435 = mem[_432]
                mem[_431 + 100 len floor32(mem[_432])] = mem[_432 + 32 len floor32(mem[_432])]
                mem[_431 + floor32(mem[_432]) + -(mem[_432] % 32) + 132 len mem[_432] % 32] = mem[_432 + -(mem[_432] % 32) + floor32(mem[_432]) + 64 len mem[_432] % 32]
                call arg1.mem[_431 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_431 + 104 len _435 - 4]
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
                _480 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                _481 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_481 + 32] = mem[_481 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _484 = mem[_481]
                u = _481 + 32
                v = _480 + 100
                t = mem[_481]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_480 + floor32(mem[_481]) + 100] = mem[_481 + -(mem[_481] % 32) + floor32(mem[_481]) + 64 len mem[_481] % 32] or Mask(8 * -(mem[_481] % 32) + 32, -(8 * -(mem[_481] % 32) + 32) + 256, mem[_480 + floor32(mem[_481]) + 100])
                call arg1.mem[_480 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_480 + 104 len _484 - 4]
                if return_data.size:
                    mem[64] = _480 + ceil32(return_data.size) + 101
                    mem[_480 + 100] = return_data.size
                    mem[_480 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                _440 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = s
                _441 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_441 + 32 len 4] = transfer(address rg1, uint256 rg2)
                _444 = mem[_441]
                mem[_440 + 100 len floor32(mem[_441])] = mem[_441 + 32 len floor32(mem[_441])]
                mem[_440 + floor32(mem[_441]) + -(mem[_441] % 32) + 132 len mem[_441] % 32] = mem[_441 + -(mem[_441] % 32) + floor32(mem[_441]) + 64 len mem[_441] % 32]
                call arg1.mem[_440 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_440 + 104 len _444 - 4]
    else:
        mem[0] = sha3(6710629)
        mem[32] = 3
        if not stor3[('name', 'stor6665', 6710629)]:
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
                    _445 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                    _446 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_446 + 32] = mem[_446 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _449 = mem[_446]
                    u = _446 + 32
                    v = _445 + 100
                    t = mem[_446]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_445 + floor32(mem[_446]) + 100] = mem[_446 + -(mem[_446] % 32) + floor32(mem[_446]) + 64 len mem[_446] % 32] or Mask(8 * -(mem[_446] % 32) + 32, -(8 * -(mem[_446] % 32) + 32) + 256, mem[_445 + floor32(mem[_446]) + 100])
                    call arg1.mem[_445 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_445 + 104 len _449 - 4]
                    if return_data.size:
                        mem[64] = _445 + ceil32(return_data.size) + 101
                        mem[_445 + 100] = return_data.size
                        mem[_445 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                    _377 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = s
                    _378 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_378 + 32 len 4] = transfer(address rg1, uint256 rg2)
                    _381 = mem[_378]
                    mem[_377 + 100 len floor32(mem[_378])] = mem[_378 + 32 len floor32(mem[_378])]
                    mem[_377 + floor32(mem[_378]) + -(mem[_378] % 32) + 132 len mem[_378] % 32] = mem[_378 + -(mem[_378] % 32) + floor32(mem[_378]) + 64 len mem[_378] % 32]
                    call arg1.mem[_377 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_377 + 104 len _381 - 4]
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
                    _450 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                    _451 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_451 + 32] = mem[_451 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _454 = mem[_451]
                    u = _451 + 32
                    v = _450 + 100
                    t = mem[_451]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_450 + floor32(mem[_451]) + 100] = mem[_451 + -(mem[_451] % 32) + floor32(mem[_451]) + 64 len mem[_451] % 32] or Mask(8 * -(mem[_451] % 32) + 32, -(8 * -(mem[_451] % 32) + 32) + 256, mem[_450 + floor32(mem[_451]) + 100])
                    call arg1.mem[_450 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_450 + 104 len _454 - 4]
                    if return_data.size:
                        mem[64] = _450 + ceil32(return_data.size) + 101
                        mem[_450 + 100] = return_data.size
                        mem[_450 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                    _386 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = s
                    _387 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_387 + 32 len 4] = transfer(address rg1, uint256 rg2)
                    _390 = mem[_387]
                    mem[_386 + 100 len floor32(mem[_387])] = mem[_387 + 32 len floor32(mem[_387])]
                    mem[_386 + floor32(mem[_387]) + -(mem[_387] % 32) + 132 len mem[_387] % 32] = mem[_387 + -(mem[_387] % 32) + floor32(mem[_387]) + 64 len mem[_387] % 32]
                    call arg1.mem[_386 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_386 + 104 len _390 - 4]
        else:
            if msg.value < stor3[('name', 'stor6665', 6710629)]:
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
                        _455 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _456 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_456 + 32] = mem[_456 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _459 = mem[_456]
                        u = _456 + 32
                        v = _455 + 100
                        t = mem[_456]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_455 + floor32(mem[_456]) + 100] = mem[_456 + -(mem[_456] % 32) + floor32(mem[_456]) + 64 len mem[_456] % 32] or Mask(8 * -(mem[_456] % 32) + 32, -(8 * -(mem[_456] % 32) + 32) + 256, mem[_455 + floor32(mem[_456]) + 100])
                        call arg1.mem[_455 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_455 + 104 len _459 - 4]
                        if return_data.size:
                            mem[64] = _455 + ceil32(return_data.size) + 101
                            mem[_455 + 100] = return_data.size
                            mem[_455 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                        _395 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _396 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_396 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _399 = mem[_396]
                        mem[_395 + 100 len floor32(mem[_396])] = mem[_396 + 32 len floor32(mem[_396])]
                        mem[_395 + floor32(mem[_396]) + -(mem[_396] % 32) + 132 len mem[_396] % 32] = mem[_396 + -(mem[_396] % 32) + floor32(mem[_396]) + 64 len mem[_396] % 32]
                        call arg1.mem[_395 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_395 + 104 len _399 - 4]
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
                        _460 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _461 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_461 + 32] = mem[_461 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _464 = mem[_461]
                        u = _461 + 32
                        v = _460 + 100
                        t = mem[_461]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_460 + floor32(mem[_461]) + 100] = mem[_461 + -(mem[_461] % 32) + floor32(mem[_461]) + 64 len mem[_461] % 32] or Mask(8 * -(mem[_461] % 32) + 32, -(8 * -(mem[_461] % 32) + 32) + 256, mem[_460 + floor32(mem[_461]) + 100])
                        call arg1.mem[_460 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_460 + 104 len _464 - 4]
                        if return_data.size:
                            mem[64] = _460 + ceil32(return_data.size) + 101
                            mem[_460 + 100] = return_data.size
                            mem[_460 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                        _404 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _405 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_405 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _408 = mem[_405]
                        mem[_404 + 100 len floor32(mem[_405])] = mem[_405 + 32 len floor32(mem[_405])]
                        mem[_404 + floor32(mem[_405]) + -(mem[_405] % 32) + 132 len mem[_405] % 32] = mem[_405 + -(mem[_405] % 32) + floor32(mem[_405]) + 64 len mem[_405] % 32]
                        call arg1.mem[_404 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_404 + 104 len _408 - 4]
            else:
                mem[0] = sha3(Mask(88, 0, 'referralFee'))
                mem[32] = 3
                call arg5 with:
                   value vipPrice[Mask(88, 0, 'referralFee')] wei
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
                        _465 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _466 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_466 + 32] = mem[_466 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _469 = mem[_466]
                        u = _466 + 32
                        v = _465 + 100
                        t = mem[_466]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_465 + floor32(mem[_466]) + 100] = mem[_466 + -(mem[_466] % 32) + floor32(mem[_466]) + 64 len mem[_466] % 32] or Mask(8 * -(mem[_466] % 32) + 32, -(8 * -(mem[_466] % 32) + 32) + 256, mem[_465 + floor32(mem[_466]) + 100])
                        call arg1.mem[_465 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_465 + 104 len _469 - 4]
                        if return_data.size:
                            mem[64] = _465 + ceil32(return_data.size) + 101
                            mem[_465 + 100] = return_data.size
                            mem[_465 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                        _413 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _414 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_414 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _417 = mem[_414]
                        mem[_413 + 100 len floor32(mem[_414])] = mem[_414 + 32 len floor32(mem[_414])]
                        mem[_413 + floor32(mem[_414]) + -(mem[_414] % 32) + 132 len mem[_414] % 32] = mem[_414 + -(mem[_414] % 32) + floor32(mem[_414]) + 64 len mem[_414] % 32]
                        call arg1.mem[_413 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_413 + 104 len _417 - 4]
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
                        _470 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                        _471 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_471 + 32] = mem[_471 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        _474 = mem[_471]
                        u = _471 + 32
                        v = _470 + 100
                        t = mem[_471]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_470 + floor32(mem[_471]) + 100] = mem[_471 + -(mem[_471] % 32) + floor32(mem[_471]) + 64 len mem[_471] % 32] or Mask(8 * -(mem[_471] % 32) + 32, -(8 * -(mem[_471] % 32) + 32) + 256, mem[_470 + floor32(mem[_471]) + 100])
                        call arg1.mem[_470 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_470 + 104 len _474 - 4]
                        if return_data.size:
                            mem[64] = _470 + ceil32(return_data.size) + 101
                            mem[_470 + 100] = return_data.size
                            mem[_470 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                        _422 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _423 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_423 + 32 len 4] = transfer(address rg1, uint256 rg2)
                        _426 = mem[_423]
                        mem[_422 + 100 len floor32(mem[_423])] = mem[_423 + 32 len floor32(mem[_423])]
                        mem[_422 + floor32(mem[_423]) + -(mem[_423] % 32) + 132 len mem[_423] % 32] = mem[_423 + -(mem[_423] % 32) + floor32(mem[_423]) + 64 len mem[_423] % 32]
                        call arg1.mem[_422 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_422 + 104 len _426 - 4]
    emit 0x7904afd2: arg4, arg1
}

function sub_b0ab5f36(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
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
            mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
            mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + -((127 * ('cd', 36).length) + 100 % 32) + floor32((127 * ('cd', 36).length) + 100) + 287 len (127 * ('cd', 36).length) + 100 % 32]
            call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
            if not return_data.size:
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _723 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _724 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_724 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_724 + 36 len 28]
                    _727 = mem[_724]
                    t = _724 + 32
                    u = _723 + 100
                    s = mem[_724]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_723 + floor32(mem[_724]) + 100] = mem[_724 + -(mem[_724] % 32) + floor32(mem[_724]) + 64 len mem[_724] % 32] or Mask(8 * -(mem[_724] % 32) + 32, -(8 * -(mem[_724] % 32) + 32) + 256, mem[_723 + floor32(mem[_724]) + 100])
                    call address(cd[4]).mem[_723 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_723 + 104 len _727 - 4]
                    if return_data.size:
                        mem[64] = _723 + ceil32(return_data.size) + 101
                        mem[_723 + 100] = return_data.size
                        mem[_723 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require idx < mem[159]
                        mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                        require idx < ('cd', 68).length
                        require idx < mem[(32 * ('cd', 36).length) + 191]
                        mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                    idx = idx + 1
                    continue 
                _671 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[159]
                _673 = mem[159]
                mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
                mem[mem[64] + 32] = (32 * mem[159]) + 96
                mem[(32 * _673) + _671 + 96] = mem[(32 * ('cd', 36).length) + 191]
                _968 = mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * _673) + _671 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
                return memory
                  from mem[64]
                   len (32 * _968) + (32 * _673) + _671 + -mem[64] + 128
            mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
            mem[(64 * ('cd', 36).length) + 355] = return_data.size
            mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _728 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _729 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_729 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_729 + 36 len 28]
                _732 = mem[_729]
                t = _729 + 32
                u = _728 + 100
                s = mem[_729]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_728 + floor32(mem[_729]) + 100] = mem[_729 + -(mem[_729] % 32) + floor32(mem[_729]) + 64 len mem[_729] % 32] or Mask(8 * -(mem[_729] % 32) + 32, -(8 * -(mem[_729] % 32) + 32) + 256, mem[_728 + floor32(mem[_729]) + 100])
                call address(cd[4]).mem[_728 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_728 + 104 len _732 - 4]
                if return_data.size:
                    mem[64] = _728 + ceil32(return_data.size) + 101
                    mem[_728 + 100] = return_data.size
                    mem[_728 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _674 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _676 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _676) + _674 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _975 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _676) + _674 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _975) + (32 * _676) + _674 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + 259] = msg.sender
        mem[(64 * ('cd', 36).length) + 291] = this.address
        mem[(64 * ('cd', 36).length) + 323] = cd[100]
        mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
        mem[64] = (64 * ('cd', 36).length) + 355
        mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
        mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + -((127 * ('cd', 36).length) + 100 % 32) + floor32((127 * ('cd', 36).length) + 100) + 287 len (127 * ('cd', 36).length) + 100 % 32]
        call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _733 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _734 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_734 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_734 + 36 len 28]
                _737 = mem[_734]
                t = _734 + 32
                u = _733 + 100
                s = mem[_734]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_733 + floor32(mem[_734]) + 100] = mem[_734 + -(mem[_734] % 32) + floor32(mem[_734]) + 64 len mem[_734] % 32] or Mask(8 * -(mem[_734] % 32) + 32, -(8 * -(mem[_734] % 32) + 32) + 256, mem[_733 + floor32(mem[_734]) + 100])
                call address(cd[4]).mem[_733 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_733 + 104 len _737 - 4]
                if return_data.size:
                    mem[64] = _733 + ceil32(return_data.size) + 101
                    mem[_733 + 100] = return_data.size
                    mem[_733 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _677 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _679 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _679) + _677 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _982 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _679) + _677 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _982) + (32 * _679) + _677 + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
        mem[(64 * ('cd', 36).length) + 355] = return_data.size
        mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _738 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _739 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_739 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_739 + 36 len 28]
            _742 = mem[_739]
            t = _739 + 32
            u = _738 + 100
            s = mem[_739]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_738 + floor32(mem[_739]) + 100] = mem[_739 + -(mem[_739] % 32) + floor32(mem[_739]) + 64 len mem[_739] % 32] or Mask(8 * -(mem[_739] % 32) + 32, -(8 * -(mem[_739] % 32) + 32) + 256, mem[_738 + floor32(mem[_739]) + 100])
            call address(cd[4]).mem[_738 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_738 + 104 len _742 - 4]
            if return_data.size:
                mem[64] = _738 + ceil32(return_data.size) + 101
                mem[_738 + 100] = return_data.size
                mem[_738 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _680 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _682 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _682) + _680 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _989 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _682) + _680 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _989) + (32 * _682) + _680 + -mem[64] + 128
    mem[0] = sha3(6710629)
    mem[32] = 3
    if not stor3[('name', 'stor6665', 6710629)]:
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
            mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
            mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + -((127 * ('cd', 36).length) + 100 % 32) + floor32((127 * ('cd', 36).length) + 100) + 287 len (127 * ('cd', 36).length) + 100 % 32]
            call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
            if not return_data.size:
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < ('cd', 68).length
                    _683 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _684 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_684 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_684 + 36 len 28]
                    _687 = mem[_684]
                    t = _684 + 32
                    u = _683 + 100
                    s = mem[_684]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_683 + floor32(mem[_684]) + 100] = mem[_684 + -(mem[_684] % 32) + floor32(mem[_684]) + 64 len mem[_684] % 32] or Mask(8 * -(mem[_684] % 32) + 32, -(8 * -(mem[_684] % 32) + 32) + 256, mem[_683 + floor32(mem[_684]) + 100])
                    call address(cd[4]).mem[_683 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_683 + 104 len _687 - 4]
                    if return_data.size:
                        mem[64] = _683 + ceil32(return_data.size) + 101
                        mem[_683 + 100] = return_data.size
                        mem[_683 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require idx < mem[159]
                        mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                        require idx < ('cd', 68).length
                        require idx < mem[(32 * ('cd', 36).length) + 191]
                        mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                    idx = idx + 1
                    continue 
                _647 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[159]
                _649 = mem[159]
                mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
                mem[mem[64] + 32] = (32 * mem[159]) + 96
                mem[(32 * _649) + _647 + 96] = mem[(32 * ('cd', 36).length) + 191]
                _912 = mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * _649) + _647 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
                return memory
                  from mem[64]
                   len (32 * _912) + (32 * _649) + _647 + -mem[64] + 128
            mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
            mem[(64 * ('cd', 36).length) + 355] = return_data.size
            mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _688 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _689 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_689 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_689 + 36 len 28]
                _692 = mem[_689]
                t = _689 + 32
                u = _688 + 100
                s = mem[_689]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_688 + floor32(mem[_689]) + 100] = mem[_689 + -(mem[_689] % 32) + floor32(mem[_689]) + 64 len mem[_689] % 32] or Mask(8 * -(mem[_689] % 32) + 32, -(8 * -(mem[_689] % 32) + 32) + 256, mem[_688 + floor32(mem[_689]) + 100])
                call address(cd[4]).mem[_688 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_688 + 104 len _692 - 4]
                if return_data.size:
                    mem[64] = _688 + ceil32(return_data.size) + 101
                    mem[_688 + 100] = return_data.size
                    mem[_688 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _650 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _652 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _652) + _650 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _919 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _652) + _650 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _919) + (32 * _652) + _650 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + 259] = msg.sender
        mem[(64 * ('cd', 36).length) + 291] = this.address
        mem[(64 * ('cd', 36).length) + 323] = cd[100]
        mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
        mem[64] = (64 * ('cd', 36).length) + 355
        mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
        mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + -((127 * ('cd', 36).length) + 100 % 32) + floor32((127 * ('cd', 36).length) + 100) + 287 len (127 * ('cd', 36).length) + 100 % 32]
        call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _693 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _694 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_694 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_694 + 36 len 28]
                _697 = mem[_694]
                t = _694 + 32
                u = _693 + 100
                s = mem[_694]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_693 + floor32(mem[_694]) + 100] = mem[_694 + -(mem[_694] % 32) + floor32(mem[_694]) + 64 len mem[_694] % 32] or Mask(8 * -(mem[_694] % 32) + 32, -(8 * -(mem[_694] % 32) + 32) + 256, mem[_693 + floor32(mem[_694]) + 100])
                call address(cd[4]).mem[_693 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_693 + 104 len _697 - 4]
                if return_data.size:
                    mem[64] = _693 + ceil32(return_data.size) + 101
                    mem[_693 + 100] = return_data.size
                    mem[_693 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _653 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _655 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _655) + _653 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _926 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _655) + _653 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _926) + (32 * _655) + _653 + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
        mem[(64 * ('cd', 36).length) + 355] = return_data.size
        mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _698 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _699 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_699 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_699 + 36 len 28]
            _702 = mem[_699]
            t = _699 + 32
            u = _698 + 100
            s = mem[_699]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_698 + floor32(mem[_699]) + 100] = mem[_699 + -(mem[_699] % 32) + floor32(mem[_699]) + 64 len mem[_699] % 32] or Mask(8 * -(mem[_699] % 32) + 32, -(8 * -(mem[_699] % 32) + 32) + 256, mem[_698 + floor32(mem[_699]) + 100])
            call address(cd[4]).mem[_698 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_698 + 104 len _702 - 4]
            if return_data.size:
                mem[64] = _698 + ceil32(return_data.size) + 101
                mem[_698 + 100] = return_data.size
                mem[_698 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _656 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _658 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _658) + _656 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _933 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _658) + _656 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _933) + (32 * _658) + _656 + -mem[64] + 128
    if msg.value < stor3[('name', 'stor6665', 6710629)]:
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
        mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
        mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + -((127 * ('cd', 36).length) + 100 % 32) + floor32((127 * ('cd', 36).length) + 100) + 287 len (127 * ('cd', 36).length) + 100 % 32]
        call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _703 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _704 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_704 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_704 + 36 len 28]
                _707 = mem[_704]
                t = _704 + 32
                u = _703 + 100
                s = mem[_704]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_703 + floor32(mem[_704]) + 100] = mem[_704 + -(mem[_704] % 32) + floor32(mem[_704]) + 64 len mem[_704] % 32] or Mask(8 * -(mem[_704] % 32) + 32, -(8 * -(mem[_704] % 32) + 32) + 256, mem[_703 + floor32(mem[_704]) + 100])
                call address(cd[4]).mem[_703 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_703 + 104 len _707 - 4]
                if return_data.size:
                    mem[64] = _703 + ceil32(return_data.size) + 101
                    mem[_703 + 100] = return_data.size
                    mem[_703 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _659 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _661 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _661) + _659 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _940 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _661) + _659 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _940) + (32 * _661) + _659 + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
        mem[(64 * ('cd', 36).length) + 355] = return_data.size
        mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _708 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _709 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_709 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_709 + 36 len 28]
            _712 = mem[_709]
            t = _709 + 32
            u = _708 + 100
            s = mem[_709]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_708 + floor32(mem[_709]) + 100] = mem[_709 + -(mem[_709] % 32) + floor32(mem[_709]) + 64 len mem[_709] % 32] or Mask(8 * -(mem[_709] % 32) + 32, -(8 * -(mem[_709] % 32) + 32) + 256, mem[_708 + floor32(mem[_709]) + 100])
            call address(cd[4]).mem[_708 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_708 + 104 len _712 - 4]
            if return_data.size:
                mem[64] = _708 + ceil32(return_data.size) + 101
                mem[_708 + 100] = return_data.size
                mem[_708 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _662 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _664 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _664) + _662 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _947 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _664) + _662 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _947) + (32 * _664) + _662 + -mem[64] + 128
    mem[191 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[15817 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + 259] = msg.sender
    mem[(64 * ('cd', 36).length) + 291] = this.address
    mem[(64 * ('cd', 36).length) + 323] = cd[100]
    mem[(64 * ('cd', 36).length) + 223] = (127 * ('cd', 36).length) + 100
    mem[64] = (64 * ('cd', 36).length) + 355
    mem[(64 * ('cd', 36).length) + 259 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(64 * ('cd', 36).length) + 255 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[(64 * ('cd', 36).length) + 355 len floor32((127 * ('cd', 36).length) + 100)] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, this.address, mem[(64 * ('cd', 36).length) + 323 len floor32((127 * ('cd', 36).length) + 100) - 68]
    mem[(64 * ('cd', 36).length) + floor32((127 * ('cd', 36).length) + 100) + -((127 * ('cd', 36).length) + 100 % 32) + 387 len (127 * ('cd', 36).length) + 100 % 32] = mem[(64 * ('cd', 36).length) + -((127 * ('cd', 36).length) + 100 % 32) + floor32((127 * ('cd', 36).length) + 100) + 287 len (127 * ('cd', 36).length) + 100 % 32]
    call address(cd[4]).mem[(64 * ('cd', 36).length) + 355 len 4] with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 36).length) + 359 len (127 * ('cd', 36).length) + 96]
    if not return_data.size:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _713 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _714 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_714 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_714 + 36 len 28]
            _717 = mem[_714]
            t = _714 + 32
            u = _713 + 100
            s = mem[_714]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_713 + floor32(mem[_714]) + 100] = mem[_714 + -(mem[_714] % 32) + floor32(mem[_714]) + 64 len mem[_714] % 32] or Mask(8 * -(mem[_714] % 32) + 32, -(8 * -(mem[_714] % 32) + 32) + 256, mem[_713 + floor32(mem[_714]) + 100])
            call address(cd[4]).mem[_713 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_713 + 104 len _717 - 4]
            if return_data.size:
                mem[64] = _713 + ceil32(return_data.size) + 101
                mem[_713 + 100] = return_data.size
                mem[_713 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _665 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _667 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _667) + _665 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _954 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _667) + _665 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _954) + (32 * _667) + _665 + -mem[64] + 128
    mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 356
    mem[(64 * ('cd', 36).length) + 355] = return_data.size
    mem[(64 * ('cd', 36).length) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        _718 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        _719 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_719 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_719 + 36 len 28]
        _722 = mem[_719]
        t = _719 + 32
        u = _718 + 100
        s = mem[_719]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_718 + floor32(mem[_719]) + 100] = mem[_719 + -(mem[_719] % 32) + floor32(mem[_719]) + 64 len mem[_719] % 32] or Mask(8 * -(mem[_719] % 32) + 32, -(8 * -(mem[_719] % 32) + 32) + 256, mem[_718 + floor32(mem[_719]) + 100])
        call address(cd[4]).mem[_718 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_718 + 104 len _722 - 4]
        if return_data.size:
            mem[64] = _718 + ceil32(return_data.size) + 101
            mem[_718 + 100] = return_data.size
            mem[_718 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require idx < ('cd', 36).length
            require idx < mem[159]
            mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    _668 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[159]
    _670 = mem[159]
    mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
    mem[mem[64] + 32] = (32 * mem[159]) + 96
    mem[(32 * _670) + _668 + 96] = mem[(32 * ('cd', 36).length) + 191]
    _961 = mem[(32 * ('cd', 36).length) + 191]
    mem[(32 * _670) + _668 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
    return memory
      from mem[64]
       len (32 * _961) + (32 * _670) + _668 + -mem[64] + 128
}



}
