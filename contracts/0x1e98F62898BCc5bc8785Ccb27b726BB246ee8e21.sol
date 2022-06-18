contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_cb9db06fAddress;
array of uint16 stor19;
uint256 geUnlockTime;
array of uint16 stor22;
address randomAddress;
uint256 sub_8c1ba6b8;
uint256 sub_38a370b0;
uint256 sub_e06cd42a;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 stor5;
address stor6;
address stor8;

function remainder(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 3
    require arg2 < 4
    return remainder[uint8(arg2)]
}

function sub_38a370b0(?) {
    return sub_38a370b0
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor4[address(arg1)])
}

function looterMaxAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 3
    require arg2 < 4
    return looterMaxAmount[uint8(arg2)]
}

function random() {
    return randomAddress
}

function minerMaxAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 3
    require arg2 < 4
    return minerMaxAmount[uint8(arg2)]
}

function sub_8c1ba6b8(?) {
    return sub_8c1ba6b8
}

function owner() {
    return owner
}

function geUnlockTime() {
    return geUnlockTime
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor3[address(arg1)])
}

function sub_cb9db06f(?) {
    return sub_cb9db06fAddress
}

function sub_e06cd42a(?) {
    return sub_e06cd42a
}

function base(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 3
    require arg2 < 4
    return base[uint8(arg2)]
}

function _fallback() payable {
  stop
}

function getSalt() {
    return sha3(stor5, block.number)
}

function sub_6acdda36(?) {
    emit 0x87c76683: 0x6acdda3600000000000000000000000000000000000000000000000000000000
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0ae191fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_38a370b0 = arg1
}

function sub_33e982ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e06cd42a = arg1
}

function sub_37548050(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cb9db06fAddress = address(arg1)
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceWhitelisted() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor4[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor3[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function sub_3a73b8d3(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'insufficient bnb balance'
    create2 contract with ('param', 'arg1') wei
                    salt: arg2
                    code: code.data[19097 len 3627]
    if not address(create2.new_address):
        revert with 0, 'failed on deploy'
    return address(create2.new_address)
}

function sub_f0e22070(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistedRole: caller does not have the Whitelisted role'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor4[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor3[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor3[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor4[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f904c5cb(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if arg5 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 + arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg5 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 + arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg5 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 + arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    return sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)
}

function sub_e64c3da7(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'insufficient token balance'
    require ext_code.size(this.address)
    call this.address.0xe6fb328f with:
         gas gas_remaining wei
        args sub_cb9db06fAddress, sub_38a370b0, sub_e06cd42a
    if not ext_call.success:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, this.address, sha3(stor5, block.number), sha3(code.data[19097 len 3627]))), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if eth.balance(this.address) < 0:
            revert with 0, 'insufficient bnb balance'
        create2 contract with 0 wei
                        salt: sha3(stor5, block.number)
                        code: code.data[19097 len 3627]
        if not address(create2.new_address):
            revert with 0, 'failed on deploy'
        if address(sha3(0, this.address, sha3(stor5, block.number), sha3(code.data[19097 len 3627]))) != address(create2.new_address):
            revert with 0, 'mint address not eq'
        if stor5 == -1:
            revert with 'NH{q', 17
        stor5++
}

function sub_b253f214(?) {
    require ext_code.size(stor8)
    call stor8.minted() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_code.size(randomAddress)
    staticcall randomAddress.nonce() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 248] = uint16(ext_call.return_data[0])
    require ext_code.size(randomAddress)
    staticcall randomAddress.getRandom(uint256 arg1) with:
            gas gas_remaining wei
           args uint16(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 244] = sha3(tx.origin, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0], block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0], block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 276] = ext_call.return_data[0]
    emit 0xb8a99e9d: mem[(4 * ceil32(return_data.size)) + 244 len (5 * ceil32(return_data.size)) + 64]
}

function sub_ffb50d8f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    mem[160] = 0
    mem[192] = 0
    mem[96] = uint8(arg2)
    if not uint16(arg1) % 10:
        mem[128] = 1
        mem[64] = 320
        s = 224
        idx = 0
        while idx < 3:
            _7 = mem[64]
            mem[64] = mem[64] + 128
            mem[_7] = stor11[idx].field_0
            t = _7
            u = 0
            while _7 + 128 > t + 32:
                mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _7
            s = s + 32
            idx = idx + 1
            continue 
        _6 = mem[64]
        mem[64] = mem[64] + 96
        s = _6
        idx = 0
        while idx < 3:
            _12 = mem[64]
            mem[64] = mem[64] + 128
            mem[_12] = stor14[idx].field_0
            t = _12
            u = 0
            while _12 + 128 > t + 32:
                mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _12
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(uint16(arg1) % 1000) < mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + _6] + 30 len 2]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = uint8(arg2)
            mem[mem[64] + 36] = uint8(idx)
            require ext_code.size(stor8)
            if mem[159 len 1]:
                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2 << 248, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_350] == mem[_350 + 30 len 2]
                if mem[_350 + 30 len 2] >= stor((Mask(4, 4, idx) >> 4) + uint8(arg2) + 20)[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            else:
                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2 << 248, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_351] == mem[_351 + 30 len 2]
                if mem[_351 + 30 len 2] >= stor((Mask(4, 4, idx) >> 4) + uint8(arg2) + 17)[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(uint16(arg1) % 1000) < mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + _6] + 30 len 2]:
                revert with 'NH{q', 17
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if not mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + 224] + 30 len 2]:
                revert with 'NH{q', 18
            if uint16(uint16(uint16(uint16(arg1) % 1000) - mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + _6] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + 224] + 30 len 2]):
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if 5 < uint8(idx):
                revert with 'NH{q', 17
            mem[192] = uint8(-uint8(idx) + 5)
            if not uint8(-uint8(idx) + 5):
                mem[192] = 1
                mem[160] = 0
                mem[mem[64]] = mem[127 len 1]
                mem[mem[64] + 32] = mem[159 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 1
                return mem[mem[64] len 64], 0, 1
            if uint8(-uint8(idx) + 5) >= 4:
                if not mem[159 len 1]:
                    if not uint16(arg1) % 5:
                        mem[160] = 1
                        mem[mem[64]] = mem[127 len 1]
                        mem[mem[64] + 32] = mem[159 len 1]
                        mem[mem[64] + 64] = 1
                        mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
                        return mem[mem[64] len 64], 1, uint8(-uint8(idx) + 5)
            mem[160] = 0
            mem[mem[64]] = mem[127 len 1]
            mem[mem[64] + 32] = mem[159 len 1]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
            return mem[mem[64] len 64], 0, uint8(-uint8(idx) + 5)
    else:
        mem[128] = 0
        mem[64] = 320
        s = 224
        idx = 0
        while idx < 3:
            _9 = mem[64]
            mem[64] = mem[64] + 128
            mem[_9] = stor11[idx].field_0
            t = _9
            u = 0
            while _9 + 128 > t + 32:
                mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _9
            s = s + 32
            idx = idx + 1
            continue 
        _8 = mem[64]
        mem[64] = mem[64] + 96
        s = _8
        idx = 0
        while idx < 3:
            _13 = mem[64]
            mem[64] = mem[64] + 128
            mem[_13] = stor14[idx].field_0
            t = _13
            u = 0
            while _13 + 128 > t + 32:
                mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _13
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(uint16(arg1) % 1000) < mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + _8] + 30 len 2]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = uint8(arg2)
            mem[mem[64] + 36] = uint8(idx)
            require ext_code.size(stor8)
            if mem[159 len 1]:
                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2 << 248, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_354] == mem[_354 + 30 len 2]
                if mem[_354 + 30 len 2] >= stor((Mask(4, 4, idx) >> 4) + uint8(arg2) + 20)[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            else:
                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2 << 248, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_355] == mem[_355 + 30 len 2]
                if mem[_355 + 30 len 2] >= stor((Mask(4, 4, idx) >> 4) + uint8(arg2) + 17)[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(uint16(arg1) % 1000) < mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + _8] + 30 len 2]:
                revert with 'NH{q', 17
            if uint8(arg2) >= 3:
                revert with 'NH{q', 50
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if not mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + 224] + 30 len 2]:
                revert with 'NH{q', 18
            if uint16(uint16(uint16(uint16(arg1) % 1000) - mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + _8] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(32 * uint8(arg2)) + 224] + 30 len 2]):
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if 5 < uint8(idx):
                revert with 'NH{q', 17
            mem[192] = uint8(-uint8(idx) + 5)
            if not uint8(-uint8(idx) + 5):
                mem[192] = 1
                mem[160] = 0
                mem[mem[64]] = mem[127 len 1]
                mem[mem[64] + 32] = mem[159 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 1
                return mem[mem[64] len 64], 0, 1
            if uint8(-uint8(idx) + 5) >= 4:
                if not mem[159 len 1]:
                    if not uint16(arg1) % 5:
                        mem[160] = 1
                        mem[mem[64]] = mem[127 len 1]
                        mem[mem[64] + 32] = mem[159 len 1]
                        mem[mem[64] + 64] = 1
                        mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
                        return mem[mem[64] len 64], 1, uint8(-uint8(idx) + 5)
            mem[160] = 0
            mem[mem[64]] = mem[127 len 1]
            mem[mem[64] + 32] = mem[159 len 1]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
            return mem[mem[64] len 64], 0, uint8(-uint8(idx) + 5)
    if not mem[223 len 1]:
        mem[192] = 1
        mem[160] = 0
        mem[mem[64]] = mem[127 len 1]
        mem[mem[64] + 32] = mem[159 len 1]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 1
        return mem[mem[64] len 64], 0, 1
    if mem[223 len 1] >= 4:
        if not mem[159 len 1]:
            if not uint16(arg1) % 5:
                mem[160] = 1
                mem[mem[64]] = mem[127 len 1]
                mem[mem[64] + 32] = mem[159 len 1]
                mem[mem[64] + 64] = 1
                mem[mem[64] + 96] = mem[223 len 1]
                return mem[mem[64] len 64], 1, mem[mem[64] + 96]
    mem[160] = 0
    mem[mem[64]] = mem[127 len 1]
    mem[mem[64] + 32] = mem[159 len 1]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = mem[223 len 1]
    return mem[mem[64] len 64], 0, mem[mem[64] + 96]
}

function sub_7818a47c(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    if arg5 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 + arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg5 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 + arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg5 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg5 + arg4 + arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    mem[256] = address(arg3)
    mem[276] = arg5 + arg4 + arg1 + arg2
    mem[308] = arg5 + arg4 + arg1 + arg2
    mem[340] = arg5 + arg4 + arg1 + arg2
    mem[224] = 116
    emit 0x2a88a78c: sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)
    mem[436] = 0
    mem[468] = 0
    mem[372] = 2
    if not uint16(sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) % 10:
        mem[404] = 1
        mem[64] = 596
        s = 500
        idx = 0
        while idx < 3:
            _14 = mem[64]
            mem[64] = mem[64] + 128
            mem[_14] = stor11[idx].field_0
            t = _14
            u = 0
            while _14 + 128 > t + 32:
                mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _14
            s = s + 32
            idx = idx + 1
            continue 
        _13 = mem[64]
        mem[64] = mem[64] + 96
        s = _13
        idx = 0
        while idx < 3:
            _19 = mem[64]
            mem[64] = mem[64] + 128
            mem[_19] = stor14[idx].field_0
            t = _19
            u = 0
            while _19 + 128 > t + 32:
                mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _19
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(Mask(16, 16, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_13 + 64] + 30 len 2]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = 2
            mem[mem[64] + 36] = uint8(idx)
            require ext_code.size(stor8)
            if mem[435 len 1]:
                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_352] == mem[_352 + 30 len 2]
                if mem[_352 + 30 len 2] >= stor22[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            else:
                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_353] == mem[_353 + 30 len 2]
                if mem[_353 + 30 len 2] >= stor19[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(Mask(16, 16, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_13 + 64] + 30 len 2]:
                revert with 'NH{q', 17
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if not mem[(32 * uint8(idx)) + mem[564] + 30 len 2]:
                revert with 'NH{q', 18
            if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_13 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[564] + 30 len 2]):
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if 5 < uint8(idx):
                revert with 'NH{q', 17
            mem[468] = uint8(-uint8(idx) + 5)
            if not uint8(-uint8(idx) + 5):
                mem[468] = 1
                mem[436] = 0
                mem[mem[64]] = mem[403 len 1]
                mem[mem[64] + 32] = mem[435 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 1
                return mem[mem[64] len 64], 0, 1
            if uint8(-uint8(idx) + 5) >= 4:
                if not mem[435 len 1]:
                    if not Mask(16, 32, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 32 % 5:
                        mem[436] = 1
                        mem[mem[64]] = mem[403 len 1]
                        mem[mem[64] + 32] = mem[435 len 1]
                        mem[mem[64] + 64] = 1
                        mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
                        return mem[mem[64] len 64], 1, uint8(-uint8(idx) + 5)
            mem[436] = 0
            mem[mem[64]] = mem[403 len 1]
            mem[mem[64] + 32] = mem[435 len 1]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
            return mem[mem[64] len 64], 0, uint8(-uint8(idx) + 5)
    else:
        mem[404] = 0
        mem[64] = 596
        s = 500
        idx = 0
        while idx < 3:
            _16 = mem[64]
            mem[64] = mem[64] + 128
            mem[_16] = stor11[idx].field_0
            t = _16
            u = 0
            while _16 + 128 > t + 32:
                mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _16
            s = s + 32
            idx = idx + 1
            continue 
        _15 = mem[64]
        mem[64] = mem[64] + 96
        s = _15
        idx = 0
        while idx < 3:
            _20 = mem[64]
            mem[64] = mem[64] + 128
            mem[_20] = stor14[idx].field_0
            t = _20
            u = 0
            while _20 + 128 > t + 32:
                mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _20
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(Mask(16, 16, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_15 + 64] + 30 len 2]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = 2
            mem[mem[64] + 36] = uint8(idx)
            require ext_code.size(stor8)
            if mem[435 len 1]:
                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _357 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_357] == mem[_357 + 30 len 2]
                if mem[_357 + 30 len 2] >= stor22[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            else:
                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_358] == mem[_358 + 30 len 2]
                if mem[_358 + 30 len 2] >= stor19[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(Mask(16, 16, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_15 + 64] + 30 len 2]:
                revert with 'NH{q', 17
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if not mem[(32 * uint8(idx)) + mem[564] + 30 len 2]:
                revert with 'NH{q', 18
            if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_15 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[564] + 30 len 2]):
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if 5 < uint8(idx):
                revert with 'NH{q', 17
            mem[468] = uint8(-uint8(idx) + 5)
            if not uint8(-uint8(idx) + 5):
                mem[468] = 1
                mem[436] = 0
                mem[mem[64]] = mem[403 len 1]
                mem[mem[64] + 32] = mem[435 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 1
                return mem[mem[64] len 64], 0, 1
            if uint8(-uint8(idx) + 5) >= 4:
                if not mem[435 len 1]:
                    if not Mask(16, 32, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 32 % 5:
                        mem[436] = 1
                        mem[mem[64]] = mem[403 len 1]
                        mem[mem[64] + 32] = mem[435 len 1]
                        mem[mem[64] + 64] = 1
                        mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
                        return mem[mem[64] len 64], 1, uint8(-uint8(idx) + 5)
            mem[436] = 0
            mem[mem[64]] = mem[403 len 1]
            mem[mem[64] + 32] = mem[435 len 1]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = uint8(-uint8(idx) + 5)
            return mem[mem[64] len 64], 0, uint8(-uint8(idx) + 5)
    if not mem[499 len 1]:
        mem[468] = 1
        mem[436] = 0
        mem[mem[64]] = mem[403 len 1]
        mem[mem[64] + 32] = mem[435 len 1]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 1
        return mem[mem[64] len 64], 0, 1
    if mem[499 len 1] >= 4:
        if not mem[435 len 1]:
            if not Mask(16, 32, sha3(address(arg3), arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2, arg5 + arg4 + arg1 + arg2)) >> 32 % 5:
                mem[436] = 1
                mem[mem[64]] = mem[403 len 1]
                mem[mem[64] + 32] = mem[435 len 1]
                mem[mem[64] + 64] = 1
                mem[mem[64] + 96] = mem[499 len 1]
                return mem[mem[64] len 64], 1, mem[mem[64] + 96]
    mem[436] = 0
    mem[mem[64]] = mem[403 len 1]
    mem[mem[64] + 32] = mem[435 len 1]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = mem[499 len 1]
    return mem[mem[64] len 64], 0, mem[mem[64] + 96]
}

function sub_5f1b7ce5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistedRole: caller does not have the Whitelisted role'
    require ext_code.size(stor8)
    call stor8.minted() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == -1:
        revert with 'NH{q', 17
    require ext_code.size(randomAddress)
    staticcall randomAddress.nonce() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 2:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) + 1 > -ext_call.return_data[0] - 2:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 2:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) + 1 > -ext_call.return_data[0] - 2:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 2:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) + 1 > -ext_call.return_data[0] - 2:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 148] = block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2
    mem[(2 * ceil32(return_data.size)) + 180] = block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2
    mem[(2 * ceil32(return_data.size)) + 212] = block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2
    mem[(2 * ceil32(return_data.size)) + 96] = 116
    emit 0x2a88a78c: sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)
    if not sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2) % 10:
        sub_8c1ba6b8 = 0
    else:
        mem[(2 * ceil32(return_data.size)) + 308] = 0
        mem[(2 * ceil32(return_data.size)) + 340] = 0
        mem[(2 * ceil32(return_data.size)) + 244] = 2
        if not uint16(sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) % 10:
            mem[(2 * ceil32(return_data.size)) + 276] = 1
            mem[64] = (2 * ceil32(return_data.size)) + 468
            s = (2 * ceil32(return_data.size)) + 372
            idx = 0
            while idx < 3:
                _26 = mem[64]
                mem[64] = mem[64] + 128
                mem[_26] = stor11[idx].field_0
                t = _26
                u = 0
                while _26 + 128 > t + 32:
                    mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    t = t + 32
                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    continue 
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            _25 = mem[64]
            mem[64] = mem[64] + 96
            s = _25
            idx = 0
            while idx < 3:
                _31 = mem[64]
                mem[64] = mem[64] + 128
                mem[_31] = stor14[idx].field_0
                t = _31
                u = 0
                while _31 + 128 > t + 32:
                    mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    t = t + 32
                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    continue 
                mem[s] = _31
                s = s + 32
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 4:
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                else:
                    if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_25 + 64] + 30 len 2]:
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        else:
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if uint8(idx) >= 4:
                                revert with 'NH{q', 50
                            else:
                                mem[mem[64] + 4] = 2
                                mem[mem[64] + 36] = uint8(idx)
                                require ext_code.size(stor8)
                                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 2, uint8(idx)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _811 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_811] == mem[_811 + 30 len 2]
                                    if mem[_811 + 30 len 2] < stor22[uint8(idx)]:
                                        if uint8(idx) >= 4:
                                            revert with 'NH{q', 50
                                        else:
                                            if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_25 + 64] + 30 len 2]:
                                                revert with 'NH{q', 17
                                            else:
                                                if uint8(idx) >= 4:
                                                    revert with 'NH{q', 50
                                                else:
                                                    if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                                                        revert with 'NH{q', 18
                                                    else:
                                                        if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_25 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                                                            if uint8(idx) == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                        else:
                                                            if 5 < uint8(idx):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if uint8(-uint8(idx) + 5):
                                                                    if uint8(-uint8(idx) + 5) < 4:
                                                                        mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                        emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if uint8(-uint8(idx) + 5) >= arg2:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                            emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg2:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                else:
                                                                    mem[mem[64]] = 1
                                                                    emit 0x2d04237f: 1
                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                            call address(arg1) with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                sub_8c1ba6b8 = 1
                                                                        else:
                                                                            if 1 >= arg3:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if 1 >= arg2:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if 1 >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            sub_8c1ba6b8 = 0
                                    else:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = uint8(idx) + 1
                                            continue 
                        else:
                            if uint8(idx) >= 4:
                                revert with 'NH{q', 50
                            else:
                                mem[mem[64] + 4] = 2
                                mem[mem[64] + 36] = uint8(idx)
                                require ext_code.size(stor8)
                                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 2, uint8(idx)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _812 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_812] == mem[_812 + 30 len 2]
                                    if mem[_812 + 30 len 2] < stor19[uint8(idx)]:
                                        if uint8(idx) >= 4:
                                            revert with 'NH{q', 50
                                        else:
                                            if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_25 + 64] + 30 len 2]:
                                                revert with 'NH{q', 17
                                            else:
                                                if uint8(idx) >= 4:
                                                    revert with 'NH{q', 50
                                                else:
                                                    if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                                                        revert with 'NH{q', 18
                                                    else:
                                                        if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_25 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                                                            if uint8(idx) == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                        else:
                                                            if 5 < uint8(idx):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if uint8(-uint8(idx) + 5):
                                                                    if uint8(-uint8(idx) + 5) < 4:
                                                                        mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                        emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if uint8(-uint8(idx) + 5) >= arg2:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                            emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg2:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                else:
                                                                    mem[mem[64]] = 1
                                                                    emit 0x2d04237f: 1
                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                            call address(arg1) with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                sub_8c1ba6b8 = 1
                                                                        else:
                                                                            if 1 >= arg3:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if 1 >= arg2:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if 1 >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            sub_8c1ba6b8 = 0
                                    else:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = uint8(idx) + 1
                                            continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 276] = 0
            mem[64] = (2 * ceil32(return_data.size)) + 468
            s = (2 * ceil32(return_data.size)) + 372
            idx = 0
            while idx < 3:
                _28 = mem[64]
                mem[64] = mem[64] + 128
                mem[_28] = stor11[idx].field_0
                t = _28
                u = 0
                while _28 + 128 > t + 32:
                    mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    t = t + 32
                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    continue 
                mem[s] = _28
                s = s + 32
                idx = idx + 1
                continue 
            _27 = mem[64]
            mem[64] = mem[64] + 96
            s = _27
            idx = 0
            while idx < 3:
                _32 = mem[64]
                mem[64] = mem[64] + 128
                mem[_32] = stor14[idx].field_0
                t = _32
                u = 0
                while _32 + 128 > t + 32:
                    mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    t = t + 32
                    u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                    continue 
                mem[s] = _32
                s = s + 32
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < 4:
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                else:
                    if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_27 + 64] + 30 len 2]:
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        else:
                            idx = uint8(idx) + 1
                            continue 
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if uint8(idx) >= 4:
                                revert with 'NH{q', 50
                            else:
                                mem[mem[64] + 4] = 2
                                mem[mem[64] + 36] = uint8(idx)
                                require ext_code.size(stor8)
                                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 2, uint8(idx)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _813 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_813] == mem[_813 + 30 len 2]
                                    if mem[_813 + 30 len 2] < stor22[uint8(idx)]:
                                        if uint8(idx) >= 4:
                                            revert with 'NH{q', 50
                                        else:
                                            if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_27 + 64] + 30 len 2]:
                                                revert with 'NH{q', 17
                                            else:
                                                if uint8(idx) >= 4:
                                                    revert with 'NH{q', 50
                                                else:
                                                    if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                                                        revert with 'NH{q', 18
                                                    else:
                                                        if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_27 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                                                            if uint8(idx) == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                        else:
                                                            if 5 < uint8(idx):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if uint8(-uint8(idx) + 5):
                                                                    if uint8(-uint8(idx) + 5) < 4:
                                                                        mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                        emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if uint8(-uint8(idx) + 5) >= arg2:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                            emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg2:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                else:
                                                                    mem[mem[64]] = 1
                                                                    emit 0x2d04237f: 1
                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                            call address(arg1) with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                sub_8c1ba6b8 = 1
                                                                        else:
                                                                            if 1 >= arg3:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if 1 >= arg2:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if 1 >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            sub_8c1ba6b8 = 0
                                    else:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = uint8(idx) + 1
                                            continue 
                        else:
                            if uint8(idx) >= 4:
                                revert with 'NH{q', 50
                            else:
                                mem[mem[64] + 4] = 2
                                mem[mem[64] + 36] = uint8(idx)
                                require ext_code.size(stor8)
                                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 2, uint8(idx)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _814 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_814] == mem[_814 + 30 len 2]
                                    if mem[_814 + 30 len 2] < stor19[uint8(idx)]:
                                        if uint8(idx) >= 4:
                                            revert with 'NH{q', 50
                                        else:
                                            if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_27 + 64] + 30 len 2]:
                                                revert with 'NH{q', 17
                                            else:
                                                if uint8(idx) >= 4:
                                                    revert with 'NH{q', 50
                                                else:
                                                    if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                                                        revert with 'NH{q', 18
                                                    else:
                                                        if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_27 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                                                            if uint8(idx) == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                        else:
                                                            if 5 < uint8(idx):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if uint8(-uint8(idx) + 5):
                                                                    if uint8(-uint8(idx) + 5) < 4:
                                                                        mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                        emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if uint8(-uint8(idx) + 5) >= arg2:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                            mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                            emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg3:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                if uint8(-uint8(idx) + 5) >= arg2:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                            else:
                                                                                mem[mem[64]] = uint8(-uint8(idx) + 5)
                                                                                emit 0x2d04237f: uint8(-uint8(idx) + 5)
                                                                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                        call address(arg1) with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 1
                                                                                    else:
                                                                                        if uint8(-uint8(idx) + 5) >= arg3:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            sub_8c1ba6b8 = 0
                                                                                else:
                                                                                    if uint8(-uint8(idx) + 5) >= arg2:
                                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                            call address(arg1) with:
                                                                                               value msg.value wei
                                                                                                 gas 2300 * is_zero(value) wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 1
                                                                                        else:
                                                                                            if uint8(-uint8(idx) + 5) >= arg3:
                                                                                                call address(arg1) with:
                                                                                                   value msg.value wei
                                                                                                     gas 2300 * is_zero(value) wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    sub_8c1ba6b8 = 1
                                                                                            else:
                                                                                                sub_8c1ba6b8 = 0
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 0
                                                                else:
                                                                    mem[mem[64]] = 1
                                                                    emit 0x2d04237f: 1
                                                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                                                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                            call address(arg1) with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                sub_8c1ba6b8 = 1
                                                                        else:
                                                                            if 1 >= arg3:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                sub_8c1ba6b8 = 0
                                                                    else:
                                                                        if 1 >= arg2:
                                                                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                                                                call address(arg1) with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    sub_8c1ba6b8 = 1
                                                                            else:
                                                                                if 1 >= arg3:
                                                                                    call address(arg1) with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        sub_8c1ba6b8 = 1
                                                                                else:
                                                                                    sub_8c1ba6b8 = 0
                                                                        else:
                                                                            sub_8c1ba6b8 = 0
                                    else:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = uint8(idx) + 1
                                            continue 
        if not mem[(2 * ceil32(return_data.size)) + 371 len 1]:
            mem[mem[64]] = 1
            emit 0x2d04237f: 1
            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                    call address(arg1) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8c1ba6b8 = 1
                else:
                    if 1 < arg3:
                        sub_8c1ba6b8 = 0
                    else:
                        call address(arg1) with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8c1ba6b8 = 1
            else:
                if 1 < arg2:
                    sub_8c1ba6b8 = 0
                else:
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                        call address(arg1) with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8c1ba6b8 = 1
                    else:
                        if 1 < arg3:
                            sub_8c1ba6b8 = 0
                        else:
                            call address(arg1) with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_8c1ba6b8 = 1
        else:
            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < 4:
                mem[(2 * ceil32(return_data.size)) + 308] = 0
            else:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                else:
                    if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                        mem[(2 * ceil32(return_data.size)) + 308] = 1
                    else:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
            mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 371 len 1]
            emit 0x2d04237f: mem[mem[64]]
            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                    call address(arg1) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8c1ba6b8 = 1
                else:
                    if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                        sub_8c1ba6b8 = 0
                    else:
                        call address(arg1) with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8c1ba6b8 = 1
            else:
                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                    sub_8c1ba6b8 = 0
                else:
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                        call address(arg1) with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8c1ba6b8 = 1
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                            sub_8c1ba6b8 = 0
                        else:
                            call address(arg1) with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_8c1ba6b8 = 1
}

function sub_e6fb328f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor8)
    call stor8.minted() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == -1:
        revert with 'NH{q', 17
    require ext_code.size(randomAddress)
    staticcall randomAddress.nonce() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == -1:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 2:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) + 1 > -ext_call.return_data[0] - 2:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 2:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) + 1 > -ext_call.return_data[0] - 2:
        revert with 'NH{q', 17
    if block.timestamp > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.number > -uint16(ext_call.return_data[0]) - 2:
        revert with 'NH{q', 17
    if block.timestamp + block.number + uint16(ext_call.return_data[0]) + 1 > -ext_call.return_data[0] - 2:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 148] = block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2
    mem[(2 * ceil32(return_data.size)) + 180] = block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2
    mem[(2 * ceil32(return_data.size)) + 212] = block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2
    mem[(2 * ceil32(return_data.size)) + 96] = 116
    emit 0x2a88a78c: sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)
    if not sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2) % 10:
        revert with 0, 'will destroy'
    mem[(2 * ceil32(return_data.size)) + 308] = 0
    mem[(2 * ceil32(return_data.size)) + 340] = 0
    mem[(2 * ceil32(return_data.size)) + 244] = 2
    if not uint16(sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) % 10:
        mem[(2 * ceil32(return_data.size)) + 276] = 1
        mem[64] = (2 * ceil32(return_data.size)) + 468
        s = (2 * ceil32(return_data.size)) + 372
        idx = 0
        while idx < 3:
            _25 = mem[64]
            mem[64] = mem[64] + 128
            mem[_25] = stor11[idx].field_0
            t = _25
            u = 0
            while _25 + 128 > t + 32:
                mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _25
            s = s + 32
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[64] = mem[64] + 96
        s = _24
        idx = 0
        while idx < 3:
            _30 = mem[64]
            mem[64] = mem[64] + 128
            mem[_30] = stor14[idx].field_0
            t = _30
            u = 0
            while _30 + 128 > t + 32:
                mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _30
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_24 + 64] + 30 len 2]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = 2
            mem[mem[64] + 36] = uint8(idx)
            require ext_code.size(stor8)
            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1821] == mem[_1821 + 30 len 2]
                if mem[_1821 + 30 len 2] >= stor22[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_24 + 64] + 30 len 2]:
                    revert with 'NH{q', 17
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                    revert with 'NH{q', 18
                if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_24 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if 5 < uint8(idx):
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 340] = uint8(-uint8(idx) + 5)
                if not uint8(-uint8(idx) + 5):
                    mem[(2 * ceil32(return_data.size)) + 340] = 1
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2629 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2818 = mem[_2629]
                            require mem[_2629] == mem[_2629]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2818
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2818
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3317] == bool(mem[_3317])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2760 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2886 = mem[_2760]
                            require mem[_2760] == mem[_2760]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2886
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2886
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3374] == bool(mem[_3374])
                    else:
                        if 1 < arg2:
                            revert with 0, 'too low'
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2761 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2887 = mem[_2761]
                            require mem[_2761] == mem[_2761]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2887
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2887
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3375] == bool(mem[_3375])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2941 = mem[_2857]
                            require mem[_2857] == mem[_2857]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2941
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2941
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3425 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3425] == bool(mem[_3425])
                else:
                    if uint8(-uint8(idx) + 5) < 4:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2558 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2754 = mem[_2558]
                                require mem[_2558] == mem[_2558]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2754
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2754
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3290 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3290] == bool(mem[_3290])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2690 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2854 = mem[_2690]
                                require mem[_2690] == mem[_2690]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2854
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2854
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3346] == bool(mem[_3346])
                        else:
                            if uint8(-uint8(idx) + 5) < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2691 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2855 = mem[_2691]
                                require mem[_2691] == mem[_2691]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2855
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2855
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3347] == bool(mem[_3347])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2814 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2910 = mem[_2814]
                                require mem[_2814] == mem[_2814]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2910
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2910
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3398 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3398] == bool(mem[_3398])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            mem[(2 * ceil32(return_data.size)) + 308] = 0
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2622 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2815 = mem[_2622]
                                    require mem[_2622] == mem[_2622]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2815
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2815
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3314 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3314] == bool(mem[_3314])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2755 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2882 = mem[_2755]
                                    require mem[_2755] == mem[_2755]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2882
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2882
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3371] == bool(mem[_3371])
                            else:
                                if uint8(-uint8(idx) + 5) < arg2:
                                    revert with 0, 'too low'
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2756 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2883 = mem[_2756]
                                    require mem[_2756] == mem[_2756]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2883
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2883
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3372 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3372] == bool(mem[_3372])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2856 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2938 = mem[_2856]
                                    require mem[_2856] == mem[_2856]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2938
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2938
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3424 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3424] == bool(mem[_3424])
                        else:
                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                mem[(2 * ceil32(return_data.size)) + 308] = 1
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2983 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3088 = mem[_2983]
                                        require mem[_2983] == mem[_2983]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3088
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3088
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3502 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3502] == bool(mem[_3502])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3052 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3163 = mem[_3052]
                                        require mem[_3052] == mem[_3052]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3163
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3163
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3550 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3550] == bool(mem[_3550])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3053 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3164 = mem[_3053]
                                        require mem[_3053] == mem[_3053]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3164
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3164
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3551 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3551] == bool(mem[_3551])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3135 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3214 = mem[_3135]
                                        require mem[_3135] == mem[_3135]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3214
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3214
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3606 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3606] == bool(mem[_3606])
                            else:
                                mem[(2 * ceil32(return_data.size)) + 308] = 0
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2986 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3089 = mem[_2986]
                                        require mem[_2986] == mem[_2986]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3089
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3089
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3505 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3505] == bool(mem[_3505])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3055 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3165 = mem[_3055]
                                        require mem[_3055] == mem[_3055]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3165
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3165
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3553 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3553] == bool(mem[_3553])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3056 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3166 = mem[_3056]
                                        require mem[_3056] == mem[_3056]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3166
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3166
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3554 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3554] == bool(mem[_3554])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3136 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3215 = mem[_3136]
                                        require mem[_3136] == mem[_3136]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3215
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3215
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3607 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3607] == bool(mem[_3607])
            else:
                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1822] == mem[_1822 + 30 len 2]
                if mem[_1822 + 30 len 2] >= stor19[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_24 + 64] + 30 len 2]:
                    revert with 'NH{q', 17
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                    revert with 'NH{q', 18
                if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_24 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if 5 < uint8(idx):
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 340] = uint8(-uint8(idx) + 5)
                if not uint8(-uint8(idx) + 5):
                    mem[(2 * ceil32(return_data.size)) + 340] = 1
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2646 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2828 = mem[_2646]
                            require mem[_2646] == mem[_2646]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2828
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2828
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3325] == bool(mem[_3325])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2893 = mem[_2775]
                            require mem[_2775] == mem[_2775]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2893
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2893
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3381 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3381] == bool(mem[_3381])
                    else:
                        if 1 < arg2:
                            revert with 0, 'too low'
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2776 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2894 = mem[_2776]
                            require mem[_2776] == mem[_2776]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2894
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2894
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3382] == bool(mem[_3382])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2864 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2947 = mem[_2864]
                            require mem[_2864] == mem[_2864]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3430 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3430] == bool(mem[_3430])
                else:
                    if uint8(-uint8(idx) + 5) < 4:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2574 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2769 = mem[_2574]
                                require mem[_2574] == mem[_2574]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2769
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2769
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3296 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3296] == bool(mem[_3296])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2706 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2861 = mem[_2706]
                                require mem[_2706] == mem[_2706]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2861
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2861
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3352 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3352] == bool(mem[_3352])
                        else:
                            if uint8(-uint8(idx) + 5) < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2707 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2862 = mem[_2707]
                                require mem[_2707] == mem[_2707]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2862
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2862
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3353 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3353] == bool(mem[_3353])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2824 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2917 = mem[_2824]
                                require mem[_2824] == mem[_2824]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2917
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2917
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3404 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3404] == bool(mem[_3404])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            mem[(2 * ceil32(return_data.size)) + 308] = 0
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2639 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2825 = mem[_2639]
                                    require mem[_2639] == mem[_2639]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2825
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2825
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3322 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3322] == bool(mem[_3322])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2770 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2889 = mem[_2770]
                                    require mem[_2770] == mem[_2770]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2889
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2889
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3378 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3378] == bool(mem[_3378])
                            else:
                                if uint8(-uint8(idx) + 5) < arg2:
                                    revert with 0, 'too low'
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2771 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2890 = mem[_2771]
                                    require mem[_2771] == mem[_2771]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2890
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2890
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3379 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3379] == bool(mem[_3379])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2863 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2944 = mem[_2863]
                                    require mem[_2863] == mem[_2863]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2944
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2944
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3429 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3429] == bool(mem[_3429])
                        else:
                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                mem[(2 * ceil32(return_data.size)) + 308] = 1
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2992 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3100 = mem[_2992]
                                        require mem[_2992] == mem[_2992]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3100
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3100
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3508 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3508] == bool(mem[_3508])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3061 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3171 = mem[_3061]
                                        require mem[_3061] == mem[_3061]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3171
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3171
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3556 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3556] == bool(mem[_3556])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3062 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3172 = mem[_3062]
                                        require mem[_3062] == mem[_3062]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3172
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3172
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3557 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3557] == bool(mem[_3557])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3142 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3216 = mem[_3142]
                                        require mem[_3142] == mem[_3142]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3216
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3216
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3610 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3610] == bool(mem[_3610])
                            else:
                                mem[(2 * ceil32(return_data.size)) + 308] = 0
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2995 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3101 = mem[_2995]
                                        require mem[_2995] == mem[_2995]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3101
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3101
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3511 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3511] == bool(mem[_3511])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3064 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3173 = mem[_3064]
                                        require mem[_3064] == mem[_3064]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3173
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3173
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3559 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3559] == bool(mem[_3559])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3174 = mem[_3065]
                                        require mem[_3065] == mem[_3065]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3174
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3174
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3560 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3560] == bool(mem[_3560])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3143 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3217 = mem[_3143]
                                        require mem[_3143] == mem[_3143]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3217
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3217
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3611 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3611] == bool(mem[_3611])
        if not mem[(2 * ceil32(return_data.size)) + 371 len 1]:
            mem[(2 * ceil32(return_data.size)) + 340] = 1
            mem[(2 * ceil32(return_data.size)) + 308] = 0
            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1798 = mem[_1701]
                    require mem[_1701] == mem[_1701]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1798
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1798
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2063] == bool(mem[_2063])
                else:
                    if 1 < arg3:
                        revert with 0, 'too low'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1836 = mem[_1766]
                    require mem[_1766] == mem[_1766]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1836
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1836
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2092 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2092] == bool(mem[_2092])
            else:
                if 1 < arg2:
                    revert with 0, 'too low'
                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1837 = mem[_1767]
                    require mem[_1767] == mem[_1767]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1837
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1837
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2093 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2093] == bool(mem[_2093])
                else:
                    if 1 < arg3:
                        revert with 0, 'too low'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1863 = mem[_1817]
                    require mem[_1817] == mem[_1817]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1863
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1863
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2125 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2125] == bool(mem[_2125])
        else:
            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < 4:
                mem[(2 * ceil32(return_data.size)) + 308] = 0
                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1760 = mem[_1662]
                        require mem[_1662] == mem[_1662]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1760
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1760
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2048] == bool(mem[_2048])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                            revert with 0, 'too low'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1728 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1814 = mem[_1728]
                        require mem[_1728] == mem[_1728]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1814
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1814
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2076 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2076] == bool(mem[_2076])
                else:
                    if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                        revert with 0, 'too low'
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1815 = mem[_1729]
                        require mem[_1729] == mem[_1729]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1815
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1815
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2077 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2077] == bool(mem[_2077])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                            revert with 0, 'too low'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1846 = mem[_1794]
                        require mem[_1794] == mem[_1794]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1846
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1846
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2106] == bool(mem[_2106])
            else:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1694 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1795 = mem[_1694]
                            require mem[_1694] == mem[_1694]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1795
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1795
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2060] == bool(mem[_2060])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1761 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1832 = mem[_1761]
                            require mem[_1761] == mem[_1761]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1832
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1832
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2089 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2089] == bool(mem[_2089])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                            revert with 0, 'too low'
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1833 = mem[_1762]
                            require mem[_1762] == mem[_1762]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1833
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1833
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2090 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2090] == bool(mem[_2090])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1860 = mem[_1816]
                            require mem[_1816] == mem[_1816]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1860
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1860
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2124] == bool(mem[_2124])
                else:
                    if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                        mem[(2 * ceil32(return_data.size)) + 308] = 1
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1887 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1940 = mem[_1887]
                                require mem[_1887] == mem[_1887]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1940
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1940
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2162 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2162] == bool(mem[_2162])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1922 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1977 = mem[_1922]
                                require mem[_1922] == mem[_1922]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1977
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1977
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2186 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2186] == bool(mem[_2186])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1923 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1978 = mem[_1923]
                                require mem[_1923] == mem[_1923]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1978
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1978
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2187 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2187] == bool(mem[_2187])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1963 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2002 = mem[_1963]
                                require mem[_1963] == mem[_1963]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2002
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2002
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2214 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2214] == bool(mem[_2214])
                    else:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1890 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1941 = mem[_1890]
                                require mem[_1890] == mem[_1890]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1941
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1941
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2165 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2165] == bool(mem[_2165])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1925 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1979 = mem[_1925]
                                require mem[_1925] == mem[_1925]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1979
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1979
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2189 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2189] == bool(mem[_2189])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1926 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1980 = mem[_1926]
                                require mem[_1926] == mem[_1926]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1980
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1980
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2190 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2190] == bool(mem[_2190])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1964 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2003 = mem[_1964]
                                require mem[_1964] == mem[_1964]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2003
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2003
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2215 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2215] == bool(mem[_2215])
    else:
        mem[(2 * ceil32(return_data.size)) + 276] = 0
        mem[64] = (2 * ceil32(return_data.size)) + 468
        s = (2 * ceil32(return_data.size)) + 372
        idx = 0
        while idx < 3:
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = stor11[idx].field_0
            t = _27
            u = 0
            while _27 + 128 > t + 32:
                mem[t + 32] = stor11[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _27
            s = s + 32
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[64] = mem[64] + 96
        s = _26
        idx = 0
        while idx < 3:
            _31 = mem[64]
            mem[64] = mem[64] + 128
            mem[_31] = stor14[idx].field_0
            t = _31
            u = 0
            while _31 + 128 > t + 32:
                mem[t + 32] = stor14[idx].field_8 * (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                t = t + 32
                u = (2 * -(u + 3 / 32) + 1) + u - (u + 3 / 32 * u)
                continue 
            mem[s] = _31
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_26 + 64] + 30 len 2]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(idx) >= 4:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = 2
            mem[mem[64] + 36] = uint8(idx)
            require ext_code.size(stor8)
            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                call stor8.looterMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1830] == mem[_1830 + 30 len 2]
                if mem[_1830 + 30 len 2] >= stor22[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_26 + 64] + 30 len 2]:
                    revert with 'NH{q', 17
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                    revert with 'NH{q', 18
                if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_26 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if 5 < uint8(idx):
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 340] = uint8(-uint8(idx) + 5)
                if not uint8(-uint8(idx) + 5):
                    mem[(2 * ceil32(return_data.size)) + 340] = 1
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2838 = mem[_2663]
                            require mem[_2663] == mem[_2663]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2838
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2838
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3333] == bool(mem[_3333])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2900 = mem[_2790]
                            require mem[_2790] == mem[_2790]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2900
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2900
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3388] == bool(mem[_3388])
                    else:
                        if 1 < arg2:
                            revert with 0, 'too low'
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2791 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2901 = mem[_2791]
                            require mem[_2791] == mem[_2791]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2901
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2901
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3389] == bool(mem[_3389])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2953 = mem[_2871]
                            require mem[_2871] == mem[_2871]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2953
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2953
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3435 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3435] == bool(mem[_3435])
                else:
                    if uint8(-uint8(idx) + 5) < 4:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2590 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2784 = mem[_2590]
                                require mem[_2590] == mem[_2590]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2784
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2784
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3302 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3302] == bool(mem[_3302])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2722 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2868 = mem[_2722]
                                require mem[_2722] == mem[_2722]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2868
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2868
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3358] == bool(mem[_3358])
                        else:
                            if uint8(-uint8(idx) + 5) < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2723 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2869 = mem[_2723]
                                require mem[_2723] == mem[_2723]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2869
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2869
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3359 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3359] == bool(mem[_3359])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2834 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2924 = mem[_2834]
                                require mem[_2834] == mem[_2834]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2924
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2924
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3410 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3410] == bool(mem[_3410])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            mem[(2 * ceil32(return_data.size)) + 308] = 0
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2656 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2835 = mem[_2656]
                                    require mem[_2656] == mem[_2656]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2835
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2835
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3330 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3330] == bool(mem[_3330])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2785 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2896 = mem[_2785]
                                    require mem[_2785] == mem[_2785]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2896
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2896
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3385] == bool(mem[_3385])
                            else:
                                if uint8(-uint8(idx) + 5) < arg2:
                                    revert with 0, 'too low'
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2786 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2897 = mem[_2786]
                                    require mem[_2786] == mem[_2786]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2897
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2897
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3386 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3386] == bool(mem[_3386])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2870 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2950 = mem[_2870]
                                    require mem[_2870] == mem[_2870]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2950
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2950
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3434 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3434] == bool(mem[_3434])
                        else:
                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                mem[(2 * ceil32(return_data.size)) + 308] = 1
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3001 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3112 = mem[_3001]
                                        require mem[_3001] == mem[_3001]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3112
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3112
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3514 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3514] == bool(mem[_3514])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3070 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3179 = mem[_3070]
                                        require mem[_3070] == mem[_3070]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3179
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3179
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3562 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3562] == bool(mem[_3562])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3071 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3180 = mem[_3071]
                                        require mem[_3071] == mem[_3071]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3180
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3180
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3563 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3563] == bool(mem[_3563])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3149 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3218 = mem[_3149]
                                        require mem[_3149] == mem[_3149]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3218
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3218
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3614 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3614] == bool(mem[_3614])
                            else:
                                mem[(2 * ceil32(return_data.size)) + 308] = 0
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3004 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3113 = mem[_3004]
                                        require mem[_3004] == mem[_3004]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3113
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3113
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3517 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3517] == bool(mem[_3517])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3073 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3181 = mem[_3073]
                                        require mem[_3073] == mem[_3073]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3181
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3181
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3565 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3565] == bool(mem[_3565])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3074 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3182 = mem[_3074]
                                        require mem[_3074] == mem[_3074]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3182
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3182
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3566 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3566] == bool(mem[_3566])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3150 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3219 = mem[_3150]
                                        require mem[_3150] == mem[_3150]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3219
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3219
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3615 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3615] == bool(mem[_3615])
            else:
                call stor8.minerMintAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 2, uint8(idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1831] == mem[_1831 + 30 len 2]
                if mem[_1831 + 30 len 2] >= stor19[uint8(idx)]:
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) < mem[(32 * uint8(idx)) + mem[_26 + 64] + 30 len 2]:
                    revert with 'NH{q', 17
                if uint8(idx) >= 4:
                    revert with 'NH{q', 50
                if not mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]:
                    revert with 'NH{q', 18
                if uint16(uint16(uint16(Mask(16, 16, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 16 % 1000) - mem[(32 * uint8(idx)) + mem[_26 + 64] + 30 len 2]) % mem[(32 * uint8(idx)) + mem[(2 * ceil32(return_data.size)) + 436] + 30 len 2]):
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                if 5 < uint8(idx):
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 340] = uint8(-uint8(idx) + 5)
                if not uint8(-uint8(idx) + 5):
                    mem[(2 * ceil32(return_data.size)) + 340] = 1
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2680 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2848 = mem[_2680]
                            require mem[_2680] == mem[_2680]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2848
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2848
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3341] == bool(mem[_3341])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2805 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2907 = mem[_2805]
                            require mem[_2805] == mem[_2805]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2907
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2907
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3395 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3395] == bool(mem[_3395])
                    else:
                        if 1 < arg2:
                            revert with 0, 'too low'
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2908 = mem[_2806]
                            require mem[_2806] == mem[_2806]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2908
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2908
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3396 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3396] == bool(mem[_3396])
                        else:
                            if 1 < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2878 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2959 = mem[_2878]
                            require mem[_2878] == mem[_2878]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _2959
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _2959
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3440] == bool(mem[_3440])
                else:
                    if uint8(-uint8(idx) + 5) < 4:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2606 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2799 = mem[_2606]
                                require mem[_2606] == mem[_2606]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2799
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2799
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3308] == bool(mem[_3308])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2738 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2875 = mem[_2738]
                                require mem[_2738] == mem[_2738]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2875
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2875
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3364] == bool(mem[_3364])
                        else:
                            if uint8(-uint8(idx) + 5) < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2739 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2876 = mem[_2739]
                                require mem[_2739] == mem[_2739]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2876
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2876
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3365 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3365] == bool(mem[_3365])
                            else:
                                if uint8(-uint8(idx) + 5) < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2844 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2931 = mem[_2844]
                                require mem[_2844] == mem[_2844]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2931
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2931
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3416] == bool(mem[_3416])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            mem[(2 * ceil32(return_data.size)) + 308] = 0
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2845 = mem[_2673]
                                    require mem[_2673] == mem[_2673]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2845
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2845
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3338 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3338] == bool(mem[_3338])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2800 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2903 = mem[_2800]
                                    require mem[_2800] == mem[_2800]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2903
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2903
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3392 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3392] == bool(mem[_3392])
                            else:
                                if uint8(-uint8(idx) + 5) < arg2:
                                    revert with 0, 'too low'
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2904 = mem[_2801]
                                    require mem[_2801] == mem[_2801]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2904
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2904
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3393] == bool(mem[_3393])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg3:
                                        revert with 0, 'too low'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor6)
                                    staticcall stor6.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2956 = mem[_2877]
                                    require mem[_2877] == mem[_2877]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _2956
                                    require ext_code.size(stor6)
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), _2956
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3439 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3439] == bool(mem[_3439])
                        else:
                            if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                                mem[(2 * ceil32(return_data.size)) + 308] = 1
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3010 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3124 = mem[_3010]
                                        require mem[_3010] == mem[_3010]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3124
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3124
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3520 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3520] == bool(mem[_3520])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3079 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3187 = mem[_3079]
                                        require mem[_3079] == mem[_3079]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3187
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3187
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3568 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3568] == bool(mem[_3568])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3080 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3188 = mem[_3080]
                                        require mem[_3080] == mem[_3080]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3188
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3188
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3569 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3569] == bool(mem[_3569])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3156 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3220 = mem[_3156]
                                        require mem[_3156] == mem[_3156]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3220
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3220
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3618 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3618] == bool(mem[_3618])
                            else:
                                mem[(2 * ceil32(return_data.size)) + 308] = 0
                                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3013 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3125 = mem[_3013]
                                        require mem[_3013] == mem[_3013]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3125
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3125
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3523 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3523] == bool(mem[_3523])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3082 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3189 = mem[_3082]
                                        require mem[_3082] == mem[_3082]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3189
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3189
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3571 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3571] == bool(mem[_3571])
                                else:
                                    if uint8(-uint8(idx) + 5) < arg2:
                                        revert with 0, 'too low'
                                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3083 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3190 = mem[_3083]
                                        require mem[_3083] == mem[_3083]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3190
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3190
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3572 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3572] == bool(mem[_3572])
                                    else:
                                        if uint8(-uint8(idx) + 5) < arg3:
                                            revert with 0, 'too low'
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor6)
                                        staticcall stor6.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3157 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3221 = mem[_3157]
                                        require mem[_3157] == mem[_3157]
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = _3221
                                        require ext_code.size(stor6)
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), _3221
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3619 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3619] == bool(mem[_3619])
        if not mem[(2 * ceil32(return_data.size)) + 371 len 1]:
            mem[(2 * ceil32(return_data.size)) + 340] = 1
            mem[(2 * ceil32(return_data.size)) + 308] = 0
            if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1808 = mem[_1718]
                    require mem[_1718] == mem[_1718]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1808
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1808
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2071] == bool(mem[_2071])
                else:
                    if 1 < arg3:
                        revert with 0, 'too low'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1843 = mem[_1783]
                    require mem[_1783] == mem[_1783]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1843
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1843
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2101] == bool(mem[_2101])
            else:
                if 1 < arg2:
                    revert with 0, 'too low'
                if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1844 = mem[_1784]
                    require mem[_1784] == mem[_1784]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1844
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1844
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2102] == bool(mem[_2102])
                else:
                    if 1 < arg3:
                        revert with 0, 'too low'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1871 = mem[_1826]
                    require mem[_1826] == mem[_1826]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1871
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1871
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2130] == bool(mem[_2130])
        else:
            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < 4:
                mem[(2 * ceil32(return_data.size)) + 308] = 0
                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1777 = mem[_1678]
                        require mem[_1678] == mem[_1678]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1777
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1777
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2054 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2054] == bool(mem[_2054])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                            revert with 0, 'too low'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1823 = mem[_1744]
                        require mem[_1744] == mem[_1744]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1823
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1823
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2082] == bool(mem[_2082])
                else:
                    if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                        revert with 0, 'too low'
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1745 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1824 = mem[_1745]
                        require mem[_1745] == mem[_1745]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1824
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1824
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2083] == bool(mem[_2083])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                            revert with 0, 'too low'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1804 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1853 = mem[_1804]
                        require mem[_1804] == mem[_1804]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1853
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1853
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2114] == bool(mem[_2114])
            else:
                if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                    mem[(2 * ceil32(return_data.size)) + 308] = 0
                    if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1711 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1805 = mem[_1711]
                            require mem[_1711] == mem[_1711]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1805
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1805
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2068] == bool(mem[_2068])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1839 = mem[_1778]
                            require mem[_1778] == mem[_1778]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1839
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1839
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2098] == bool(mem[_2098])
                    else:
                        if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                            revert with 0, 'too low'
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1779 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1840 = mem[_1779]
                            require mem[_1779] == mem[_1779]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1840
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1840
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2099 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2099] == bool(mem[_2099])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                revert with 0, 'too low'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1825 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1868 = mem[_1825]
                            require mem[_1825] == mem[_1825]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1868
                            require ext_code.size(stor6)
                            call stor6.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1868
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2129] == bool(mem[_2129])
                else:
                    if not Mask(16, 32, sha3(address(arg1), block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2, block.timestamp + block.number + uint16(ext_call.return_data[0]) + ext_call.return_data[0] + 2)) >> 32 % 5:
                        mem[(2 * ceil32(return_data.size)) + 308] = 1
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1896 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1952 = mem[_1896]
                                require mem[_1896] == mem[_1896]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1952
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1952
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2168 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2168] == bool(mem[_2168])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1931 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1985 = mem[_1931]
                                require mem[_1931] == mem[_1931]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1985
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1985
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2192 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2192] == bool(mem[_2192])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1932 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1986 = mem[_1932]
                                require mem[_1932] == mem[_1932]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1986
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1986
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2193 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2193] == bool(mem[_2193])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1970 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2004 = mem[_1970]
                                require mem[_1970] == mem[_1970]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2004
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2004
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2218 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2218] == bool(mem[_2218])
                    else:
                        mem[(2 * ceil32(return_data.size)) + 308] = 0
                        if mem[(2 * ceil32(return_data.size)) + 307 len 1]:
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1899 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1953 = mem[_1899]
                                require mem[_1899] == mem[_1899]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1953
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1953
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2171 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2171] == bool(mem[_2171])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1934 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1987 = mem[_1934]
                                require mem[_1934] == mem[_1934]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1987
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1987
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2195 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2195] == bool(mem[_2195])
                        else:
                            if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg2:
                                revert with 0, 'too low'
                            if mem[(2 * ceil32(return_data.size)) + 307 len 1] != 1:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1935 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1988 = mem[_1935]
                                require mem[_1935] == mem[_1935]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1988
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _1988
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2196 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2196] == bool(mem[_2196])
                            else:
                                if mem[(2 * ceil32(return_data.size)) + 371 len 1] < arg3:
                                    revert with 0, 'too low'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1971 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2005 = mem[_1971]
                                require mem[_1971] == mem[_1971]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _2005
                                require ext_code.size(stor6)
                                call stor6.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), _2005
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2219 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2219] == bool(mem[_2219])
}



}
