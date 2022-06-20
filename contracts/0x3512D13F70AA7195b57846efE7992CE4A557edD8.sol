contract main {




// =====================  Runtime code  =====================


#
#  - sub_44a82e0e(?)
#
address owner;
array of uint256 stor1;
uint256 geUnlockTime;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 stor5;
address stor8;
address stor9;
address stor10;
address stor11;
address stor13;
address sub_4c72918eAddress;
uint256 capacity;
uint256 sub_befe4cf1;
uint256 sub_8c1ba6b8;
array of uint256 prizes;
array of uint256 probability;
array of struct stor20;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor4[address(arg1)])
}

function sub_4c72918e(?) {
    return sub_4c72918eAddress
}

function probability(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < probability.length
    return probability[arg1]
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

function sub_befe4cf1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_befe4cf1
}

function getCapacity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return capacity
}

function prizes(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < prizes.length
    return prizes[arg1]
}

function _fallback() payable {
  stop
}

function getSalt() {
    return sha3(stor5, block.number)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_dfe24d60(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_befe4cf1 = arg1
}

function setCapacity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    capacity = arg1
}

function sub_6e7b0681(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4c72918eAddress = address(arg1)
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() {
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, address(stor1.length));
    owner = address(stor1.length)
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

function sub_b9ed7f3e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'insufficient bnb balance'
    create2 contract with ('param', 'arg1') wei
                    salt: arg2
                    code: code.data[15413 len 2541]
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

function sub_ba1b7d0f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistedRole: caller does not have the Whitelisted role'
    require ext_code.size(this.address)
    call this.address.0x71c93461 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        call address(arg1) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert with ext_call.return_data[0 len return_data.size]
    sub_8c1ba6b8 = 0
}

function sub_5218f4c4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistedRole: caller does not have the Whitelisted role'
    require ext_code.size(this.address)
    call this.address.0x44a82e0e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        call address(arg1) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert with ext_call.return_data[0 len return_data.size]
    sub_8c1ba6b8 = 0
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b3389fc9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistedRole: caller does not have the Whitelisted role'
    require ext_code.size(this.address)
    call this.address.0xebd83b12 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        call address(arg1) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert with ext_call.return_data[0 len return_data.size]
    sub_8c1ba6b8 = 0
}

function sub_ebd83b12(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor11)
    call stor11.0x251849c4 with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor13)
    call stor13.0x69393a77 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor13)
    staticcall stor13.getRandomSeed(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] % 100 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] % 100) + ext_call.return_data[0] < ext_call.return_data[0] % 100:
        revert with 0, 'SafeMath: addition overflow'
    if (ext_call.return_data[0] % 100) + ext_call.return_data[0] > 100:
        revert with 0, 'rollback'
}

function sub_71c93461(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 4
    mem[128 len 4] = 1765358199
    mem[132] = 0, mem[132 len 28]
    mem[136] = 0
    call stor10.mem[132 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        require ext_code.size(stor11)
        staticcall stor11.0x77548382 with:
                gas gas_remaining wei
        mem[132] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 132
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < stor20.length:
            mem[0] = 20
            _393 = mem[64]
            mem[64] = mem[64] + 96
            mem[_393] = stor20[idx].field_0
            mem[_393 + 32] = stor20[idx].field_256
            _394 = mem[64]
            mem[64] = mem[64] + (32 * stor20[idx].field_512) + 32
            mem[_394] = stor20[idx].field_512
            if not stor20[idx].field_512:
                mem[_393 + 64] = _394
                if ext_call.return_data[0] < stor20[idx].field_0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] >= stor20[idx].field_256:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if stor20[idx].field_512 <= 0:
                    revert with 0, 'Not match qualityRatioArray'
                mem[mem[64] + 4] = stor9
                require ext_code.size(stor13)
                staticcall stor13.getRandomSeed(address arg1) with:
                        gas gas_remaining wei
                       args stor9
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _458 = mem[_454]
                require mem[_454] == mem[_454]
                _466 = mem[64]
                mem[64] = mem[64] + 64
                mem[_466] = 24
                mem[_466 + 32] = 'SafeMath: modulo by zero'
                if _458 % 10000 > -2:
                    revert with 'NH{q', 17
                s = 0
                t = 0
                while s < stor20[idx].field_512:
                    if s >= stor20[idx].field_512:
                        revert with 'NH{q', 50
                    if t > -mem[(32 * s) + _394 + 32] - 1:
                        revert with 'NH{q', 17
                    if t + mem[(32 * s) + _394 + 32] < t:
                        revert with 0, 'SafeMath: addition overflow'
                    if (_458 % 10000) + 1 > t + mem[(32 * s) + _394 + 32]:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + mem[(32 * s) + _394 + 32]
                        continue 
                    if ext_call.success:
                        if s >= arg1:
                            revert with 0, 'rollback'
            else:
                mem[0] = (3 * idx) + sha3(20) + 2
                mem[_394 + 32] = stor[sha3((3 * idx) + ('name', 'stor20', 20) + 2)].field_0
                s = _394 + 32
                t = sha3(mem[0])
                while _394 + (32 * stor20[idx].field_512) > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_393 + 64] = _394
                if ext_call.return_data[0] < mem[_393]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] >= mem[_393 + 32]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_394] <= 0:
                    revert with 0, 'Not match qualityRatioArray'
                mem[mem[64] + 4] = stor9
                require ext_code.size(stor13)
                staticcall stor13.getRandomSeed(address arg1) with:
                        gas gas_remaining wei
                       args stor9
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _650 = mem[_646]
                require mem[_646] == mem[_646]
                _654 = mem[64]
                mem[64] = mem[64] + 64
                mem[_654] = 24
                mem[_654 + 32] = 'SafeMath: modulo by zero'
                if _650 % 10000 > -2:
                    revert with 'NH{q', 17
                idx = 0
                s = 0
                while idx < mem[_394]:
                    if idx >= mem[_394]:
                        revert with 'NH{q', 50
                    if s > -mem[(32 * idx) + _394 + 32] - 1:
                        revert with 'NH{q', 17
                    if s + mem[(32 * idx) + _394 + 32] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if (_650 % 10000) + 1 > s + mem[(32 * idx) + _394 + 32]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _394 + 32]
                        continue 
                    if ext_call.success:
                        if idx >= arg1:
                            revert with 0, 'rollback'
            if ext_call.success:
                if 0 >= arg1:
                    revert with 0, 'rollback'
        if mem[96] <= 0:
            revert with 0, 'Not match qualityRatioArray'
        mem[mem[64] + 4] = stor9
        require ext_code.size(stor13)
        staticcall stor13.getRandomSeed(address arg1) with:
                gas gas_remaining wei
               args stor9
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _438 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _446 = mem[_438]
        require mem[_438] == mem[_438]
        mem[mem[64]] = 24
        mem[mem[64] + 32] = 'SafeMath: modulo by zero'
        if _446 % 10000 > -2:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            if s + mem[(32 * idx) + 128] < s:
                revert with 0, 'SafeMath: addition overflow'
            if (_446 % 10000) + 1 > s + mem[(32 * idx) + 128]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + 128]
                continue 
            if ext_call.success:
                if idx >= arg1:
                    revert with 0, 'rollback'
    else:
        mem[132] = return_data.size
        mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor11)
        staticcall stor11.0x77548382 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 133] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 133
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < stor20.length:
            mem[0] = 20
            _398 = mem[64]
            mem[64] = mem[64] + 96
            mem[_398] = stor20[idx].field_0
            mem[_398 + 32] = stor20[idx].field_256
            _399 = mem[64]
            mem[64] = mem[64] + (32 * stor20[idx].field_512) + 32
            mem[_399] = stor20[idx].field_512
            if not stor20[idx].field_512:
                mem[_398 + 64] = _399
                if ext_call.return_data[0] < stor20[idx].field_0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] >= stor20[idx].field_256:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if stor20[idx].field_512 <= 0:
                    revert with 0, 'Not match qualityRatioArray'
                mem[mem[64] + 4] = stor9
                require ext_code.size(stor13)
                staticcall stor13.getRandomSeed(address arg1) with:
                        gas gas_remaining wei
                       args stor9
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _459 = mem[_455]
                require mem[_455] == mem[_455]
                _467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_467] = 24
                mem[_467 + 32] = 'SafeMath: modulo by zero'
                if _459 % 10000 > -2:
                    revert with 'NH{q', 17
                s = 0
                t = 0
                while s < stor20[idx].field_512:
                    if s >= stor20[idx].field_512:
                        revert with 'NH{q', 50
                    if t > -mem[(32 * s) + _399 + 32] - 1:
                        revert with 'NH{q', 17
                    if t + mem[(32 * s) + _399 + 32] < t:
                        revert with 0, 'SafeMath: addition overflow'
                    if (_459 % 10000) + 1 > t + mem[(32 * s) + _399 + 32]:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + mem[(32 * s) + _399 + 32]
                        continue 
                    if ext_call.success:
                        if s >= arg1:
                            revert with 0, 'rollback'
            else:
                mem[0] = (3 * idx) + sha3(20) + 2
                mem[_399 + 32] = stor[sha3((3 * idx) + ('name', 'stor20', 20) + 2)].field_0
                s = _399 + 32
                t = sha3(mem[0])
                while _399 + (32 * stor20[idx].field_512) > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_398 + 64] = _399
                if ext_call.return_data[0] < mem[_398]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] >= mem[_398 + 32]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[_399] <= 0:
                    revert with 0, 'Not match qualityRatioArray'
                mem[mem[64] + 4] = stor9
                require ext_code.size(stor13)
                staticcall stor13.getRandomSeed(address arg1) with:
                        gas gas_remaining wei
                       args stor9
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _651 = mem[_647]
                require mem[_647] == mem[_647]
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 24
                mem[_655 + 32] = 'SafeMath: modulo by zero'
                if _651 % 10000 > -2:
                    revert with 'NH{q', 17
                idx = 0
                s = 0
                while idx < mem[_399]:
                    if idx >= mem[_399]:
                        revert with 'NH{q', 50
                    if s > -mem[(32 * idx) + _399 + 32] - 1:
                        revert with 'NH{q', 17
                    if s + mem[(32 * idx) + _399 + 32] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if (_651 % 10000) + 1 > s + mem[(32 * idx) + _399 + 32]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _399 + 32]
                        continue 
                    if ext_call.success:
                        if idx >= arg1:
                            revert with 0, 'rollback'
            if ext_call.success:
                if 0 >= arg1:
                    revert with 0, 'rollback'
        if mem[96] <= 0:
            revert with 0, 'Not match qualityRatioArray'
        mem[mem[64] + 4] = stor9
        require ext_code.size(stor13)
        staticcall stor13.getRandomSeed(address arg1) with:
                gas gas_remaining wei
               args stor9
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _447 = mem[_439]
        require mem[_439] == mem[_439]
        mem[mem[64]] = 24
        mem[mem[64] + 32] = 'SafeMath: modulo by zero'
        if _447 % 10000 > -2:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            if s + mem[(32 * idx) + 128] < s:
                revert with 0, 'SafeMath: addition overflow'
            if (_447 % 10000) + 1 > s + mem[(32 * idx) + 128]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + 128]
                continue 
            if ext_call.success:
                if idx >= arg1:
                    revert with 0, 'rollback'
    if ext_call.success:
        if 0 >= arg1:
            revert with 0, 'rollback'
}



}
