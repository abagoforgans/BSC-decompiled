contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint8 stor4;
mapping of address sub_ba80635e;
uint8 stor8; offset 160
uint8 stor8; offset 168
mapping of uint8 stor9;
mapping of uint8 stor10;

function paused() payable {
    return bool(stor4)
}

function hasWhiteList() payable {
    return bool(uint8(stor8.field_160))
}

function isKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function sub_73ef9f17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function owner() payable {
    return owner
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_ba80635e[arg1]
}

function sub_ba80635e(?) payable {
    require calldata.size - 4 >= 32
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    return sub_ba80635e[arg1]
}

function sub_ca12e506(?) payable {
    return bool(uint8(stor8.field_168))
}

function pendingOwner() payable {
    return pendingOwner
}

function allowedUsers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function _fallback() payable {
    revert
}

function sub_e2c25556(?) payable {
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    uint8(stor8.field_168) = 0
}

function disableWhiteList() payable {
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    uint8(stor8.field_160) = 0
}

function sub_ec5001eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    stor9[address(arg1)] = 0
}

function sub_fddf1662(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    stor10[address(arg1)] = 0
}

function addKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function addCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function setCaller(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function setKeeper(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_2a8e5f1f(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
}

function setClosed(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor4:
            revert with 0, 'Pausable: not paused'
        stor4 = 0
        emit Unpaused(msg.sender);
    else:
        if stor4:
            revert with 0, 'Pausable: paused'
        stor4 = 1
        emit Paused(msg.sender);
}

function sub_43dd7cc8(?) payable {
    require calldata.size - 4 >= 64
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x54842747 with:
            gas gas_remaining wei
           args arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_db313a01(?) payable {
    require calldata.size - 4 >= 64
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0xf80675e6 with:
            gas gas_remaining wei
           args arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0879795d(?) payable {
    require calldata.size - 4 >= 96
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].0x1bdca4cc with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ed9f4979(?) payable {
    require calldata.size - 4 >= 128
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].0xc57dcc66 with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function balanceOf(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].balanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b3dd803a(?) payable {
    require calldata.size - 4 >= 64
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].tokenStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_bdd80526(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].0x81ad43b5 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1b7c7a6f: arg1, address(arg2)
}

function pendingReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], ext_call.return_data[32]
}

function sub_a8147e7c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    uint8(stor8.field_160) = 1
}

function sub_826ff776(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    uint8(stor8.field_168) = 1
}

function sub_afe495c1(?) payable {
    require calldata.size - 4 >= 32
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x1b460f91: 1, arg1, address(ext_call.return_data[0]), 0, address(ext_call.return_data[0])
}

function invest(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].invest(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x680132a2: arg1, ext_call.return_data[32], ext_call.return_data[64], address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function sub_9694d29d(?) payable {
    require calldata.size - 4 >= 96
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].0x2c075666 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x9b4e8c65: arg1, arg2, arg3, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function sub_ed0c0fd2(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].0xf524ccd1 with:
         gas gas_remaining wei
        args arg2, address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x974337c9: arg1, arg2, ext_call.return_data[0], address(ext_call.return_data[0]), address(arg3)
    return ext_call.return_data[0]
}

function sub_552e457c(?) payable {
    require calldata.size - 4 >= 96
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].0x6a5c27b with:
         gas gas_remaining wei
        args arg2, msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x1fe20f7 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x3d41552f: ext_call.return_data[12 len 20], arg1, arg3, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], address(ext_call.return_data[0]), msg.sender
}

function harvest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x1fe20f7 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0xac3b8f11: ext_call.return_data[12 len 20], arg1, ext_call.return_data[32], address(ext_call.return_data[0]), address(ext_call.return_data[0]), msg.sender
}

function sub_eb7ee46c(?) payable {
    require calldata.size - 4 >= 32
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x1b460f91: 0, arg1, address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].withdraw(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x1fe20f7 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x3d41552f: ext_call.return_data[12 len 20], arg1, arg3, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], address(ext_call.return_data[0]), msg.sender
}

function sub_35d717d3(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[cd[4]]:
        revert with 0, 'pool not exists'
    idx = 0
    s = 228
    t = cd[68] + 36
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 228] = ('cd', 100).length
    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(sub_ba80635e[cd[4]])
    call sub_ba80635e[cd[4]].0xb61aabfc with:
         gas gas_remaining wei
        args cd[36], Array(len=('cd', 68).length, data=mem[228 len (32 * ('cd', 68).length) + 32], call.data[cd[100] + 36 len 32 * ('cd', 100).length]), (32 * ('cd', 68).length) + 128
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bef72571(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x54992be2f7321b0b98e5428a09b43e17fcc3c60a)
    delegate 0x54992be2f7321b0b98e5428a09b43e17fcc3c60a.0x1980f911 with:
         gas gas_remaining wei
        args 5
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len 7770] = code.data[15024 len 7770]
    create contract with 0 wei
                    code: code.data[15024 len 7770], 160, 1, address(arg2), 0, 0, delegate.return_data[4 len 28], arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor[sha3(0, delegate.return_data[4 len 28], 7)] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x98fe2b0c: 1, 0, delegate.return_data[4 len 28], address(arg2), 0, address(ext_call.return_data[0])
    return 0, delegate.return_data[4 len 28], address(create.new_address)
}

function sub_1b9af810(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor3[msg.sender]:
        revert with 0, 'keeper required'
    if stor4:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x54992be2f7321b0b98e5428a09b43e17fcc3c60a)
    delegate 0x54992be2f7321b0b98e5428a09b43e17fcc3c60a.0x1980f911 with:
         gas gas_remaining wei
        args 5
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len 7770] = code.data[15024 len 7770]
    create contract with 0 wei
                    code: code.data[15024 len 7770], 160, 2, address(arg2), address(arg3), 0, delegate.return_data[4 len 28], arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor[sha3(0, delegate.return_data[4 len 28], 7)] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x98fe2b0c: 0, 0, delegate.return_data[4 len 28], address(arg2), address(arg3), address(ext_call.return_data[0])
    return 0, delegate.return_data[4 len 28], address(create.new_address)
}

function deposit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor4:
        revert with 0, 'Pausable: paused'
    if not sub_ba80635e[arg1]:
        revert with 0, 'pool not exists'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0xf198fbb6 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 1:
        if uint8(stor8.field_168):
            if not stor10[msg.sender]:
                revert with 0, 'not in hedging list'
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0xf198fbb6 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 2:
        if uint8(stor8.field_160):
            if not stor9[msg.sender]:
                revert with 0, 'not in allow list'
    mem[(2 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x1fe20f7 with:
            gas gas_remaining wei
           args arg2
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg3, mem[(6 * ceil32(return_data.size)) + 228 len 28]
    call address(ext_call.return_data[0]).mem[(6 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(6 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'BoringERC20: TransferFrom failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'BoringERC20: TransferFrom failed'
    else:
        mem[(6 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'BoringERC20: TransferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 260] == bool(mem[(6 * ceil32(return_data.size)) + 260])
            if not mem[(6 * ceil32(return_data.size)) + 260]:
                revert with 0, 'BoringERC20: TransferFrom failed'
    require ext_code.size(sub_ba80635e[arg1])
    call sub_ba80635e[arg1].deposit(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x9323b254 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_ba80635e[arg1])
    staticcall sub_ba80635e[arg1].0x1fe20f7 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x32069719: ext_call.return_data[12 len 20], arg1, arg3, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], address(ext_call.return_data[0]), msg.sender
}



}
