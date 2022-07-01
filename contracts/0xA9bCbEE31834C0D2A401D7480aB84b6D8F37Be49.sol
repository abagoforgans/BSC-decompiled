contract main {




// =====================  Runtime code  =====================


#
#  - sell(address arg1)
#  - buy(address arg1, uint256 arg2, uint256 arg3)
#  - pickup_tok_18796546(address arg1, address arg2, uint256 arg3)
#
address deployerAddress;

function deployer() {
    return deployerAddress
}

function sub_756f597c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if deployerAddress != msg.sender:
        if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
            revert with 0, 'OOD'
    selfdestruct(address(arg1))
}

function _fallback() payable {
    revert
}

function sub_4f413f51(?) {
    if deployerAddress:
        if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
            revert with 0, 'OOD'
    deployerAddress = msg.sender
}

function pickup_eth_76550374(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
        revert with 0, 'OOW'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function do_direct_call(uint256 arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
        if 0xc3b61a78849e71c563edf7747602f27b96b40fdd != msg.sender:
            if 0xb65df5c45bc3c9ad3a937820a0f98341d42e7308 != msg.sender:
                revert with 0, 'OWR_'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
    call arg2 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg1 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    require ext_call.success
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 32]
}

function charge_addresses(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
        revert with 0, 'OOW'
    idx = 0
    s = msg.value
    while idx < arg2.length:
        if not s:
            if s > 0:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        if eth.balance(mem[(32 * idx) + 128]) >= arg1:
            idx = idx + 1
            s = s
            continue 
        if arg1 - eth.balance(mem[(32 * idx) + 128]) <= s:
            call mem[(32 * idx) + 140 len 20] with:
               value arg1 - eth.balance(mem[(32 * idx) + 128]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s - arg1 + eth.balance(mem[(32 * idx) + 128])
            continue 
        call mem[(32 * idx) + 140 len 20] with:
           value s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 0
        continue 
    if s > 0:
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function charge_addresses_weth(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
        revert with 0, 'OOW'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        if eth.balance(mem[(32 * idx) + 128]) >= arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < arg2.length
        idx = idx + 1
        s = s + arg1 - eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[(32 * arg2.length) + 132] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < s:
        revert with 0, 'low weth balance'
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + ceil32(return_data.size) + 132] = s
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if eth.balance(mem[(32 * idx) + 128]) < arg1:
            call mem[(32 * idx) + 140 len 20] with:
               value arg1 - eth.balance(mem[(32 * idx) + 128]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_2a533182(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0x8b8a08d5f5825e7eb1bdf89c29449e99b34b743d != msg.sender:
        revert with 0, 'OOW'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _96 = mem[(32 * idx) + 128]
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 25
        mem[_97 + 32] = 'transfer(address,uint256)'
        _100 = mem[64]
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = 1
        _101 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_101 + 32] = mem[_101 + 36 len 28] or Mask(32, 224, sha3('transfer(address,uint256)'))
        _104 = mem[_101]
        s = 0
        while s < _104:
            mem[_100 + s + 100] = mem[_101 + s + 32]
            s = s + 32
            continue 
        if ceil32(_104) <= _104:
            call address(_96).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _100 + _104 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TRANSFER_FAILED'
            else:
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_140] = return_data.size
                mem[_140 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_140 + 32] == bool(mem[_140 + 32])
                    if not mem[_140 + 32]:
                        revert with 0, 'TRANSFER_FAILED'
        else:
            mem[_100 + _104 + 100] = 0
            call address(_96).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _100 + _104 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TRANSFER_FAILED'
            else:
                _142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_142] = return_data.size
                mem[_142 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_142 + 32] == bool(mem[_142 + 32])
                    if not mem[_142 + 32]:
                        revert with 0, 'TRANSFER_FAILED'
        idx = idx + 1
        continue 
}



}
