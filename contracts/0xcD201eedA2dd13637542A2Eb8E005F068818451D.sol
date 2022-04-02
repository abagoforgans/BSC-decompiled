contract main {




// =====================  Runtime code  =====================


array of address contracts;
address stor1;

function contracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < contracts.length
    return contracts[arg1]
}

function _fallback() payable {
    revert
}

function create(int256 arg1) {
    require calldata.size - 4 >= 32
    require tx.origin == stor1
    idx = 0
    s = 0
    while idx < arg1:
        mem[96 len 1094] = code.data[2390 len 1094]
        create contract with 0 wei
                        code: code.data[2390 len 1094]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        contracts.length++
        mem[0] = 0
        contracts[contracts.length] = address(create.new_address)
        idx = idx + 1
        s = create.new_address
        continue 
}

function spell(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    if not arg1:
        revert with 0, 'target-invalid'
    require tx.origin == stor1
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
}

function exec(address arg1, bytes arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require tx.origin == stor1
    s = 0
    idx = arg3
    while idx < arg4:
        require idx < contracts.length
        mem[0] = 0
        _9 = mem[64]
        mem[mem[64]] = 0xc7acb01f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        _10 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        while s < _10:
            mem[s + mem[64] + 100] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_10) > _10:
            mem[_9 + _10 + 100] = 0
        require ext_code.size(contracts[idx])
        call contracts[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_10) + _9 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = contracts[idx]
        idx = idx + 1
        continue 
}

function cast(address[] arg1, bytes[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require tx.origin == stor1
    if arg2.length != arg1.length:
        revert with 0, 'array-length-invalid'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
        mem[_7] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[_7 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[_7 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'target-invalid'
        require tx.origin == stor1
        delegate cd[((32 * idx) + arg1 + 36)] with:
             gas gas_remaining wei
            args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_71a2c610(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require tx.origin == stor1
    s = 0
    idx = cd[68]
    while idx < cd[100]:
        require idx < contracts.length
        mem[0] = 0
        _5 = mem[64]
        mem[mem[64]] = 0xe9049abd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = ('cd', 4).length
        s = 0
        t = mem[64] + 100
        u = cd[4] + 36
        while s < ('cd', 4).length:
            require cd[u] == address(cd[u])
            mem[t] = address(cd[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_5 + 36] = (32 * ('cd', 4).length) + 96
        mem[_5 + (32 * ('cd', 4).length) + 100] = ('cd', 36).length
        s = 0
        t = cd[36] + 36
        u = _5 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 132
        v = _5 + (32 * ('cd', 4).length) + 132
        while s < ('cd', 36).length:
            mem[v] = u + -_5 + -(32 * ('cd', 4).length) - 132
            require cd[t] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[t] + 36)] <= test266151307()
            require cd[36] + 36 <= calldata.size - cd[(cd[36] + cd[t] + 36)]
            mem[u] = cd[(cd[36] + cd[t] + 36)]
            mem[u + 32 len cd[(cd[36] + cd[t] + 36)]] = call.data[cd[36] + cd[t] + 68 len cd[(cd[36] + cd[t] + 36)]]
            mem[u + cd[(cd[36] + cd[t] + 36)] + 32] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(cd[(cd[36] + cd[t] + 36)]) + 32
            v = v + 32
            continue 
        require ext_code.size(contracts[idx])
        call contracts[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5 + (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = contracts[idx]
        idx = idx + 1
        continue 
}



}
