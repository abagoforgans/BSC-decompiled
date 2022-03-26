contract main {




// =====================  Runtime code  =====================


address configAddress;
address owner;

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setupConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWNER FORBIDDEN'
    configAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
}

function switchStrategy(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEVELOPER FORBIDDEN'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).switchStrategy(address rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePoolParameter(address arg1, address arg2, bytes32 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEVELOPER FORBIDDEN'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(configAddress)
    call configAddress.setPoolValue(address rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.getValue(bytes32 rg1) with:
            gas gas_remaining wei
           args ('DEPOSIT_ENABLE' << 144)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT ENABLE NOW'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 0:
        require ext_code.size(configAddress)
        call configAddress.isMintToken(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9fab3e6e with:
                 gas gas_remaining wei
                args msg.sender, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.getValue(bytes32 rg1) with:
            gas gas_remaining wei
           args ('WITHDRAW_ENABLE' << 136)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT ENABLE NOW'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 0:
        require ext_code.size(configAddress)
        call configAddress.isMintToken(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xe34da7ed with:
                 gas gas_remaining wei
                args msg.sender, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function borrow(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.getValue(bytes32 rg1) with:
            gas gas_remaining wei
           args ('BORROW_ENABLE' << 152)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT ENABLE NOW'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).borrow(uint256 rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 > 0:
        require ext_code.size(configAddress)
        call configAddress.isMintToken(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x8626cdb3 with:
                 gas gas_remaining wei
                args msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function reinvest(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.getValue(bytes32 rg1) with:
            gas gas_remaining wei
           args ('REINVEST_ENABLE' << 136)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT ENABLE NOW'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).reinvest(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(configAddress)
        call configAddress.isMintToken(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9fab3e6e with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function repay(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(configAddress)
    staticcall configAddress.getValue(bytes32 rg1) with:
            gas gas_remaining wei
           args ('REPAY_ENABLE' << 160)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT ENABLE NOW'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).repay(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > 0:
        require ext_code.size(configAddress)
        call configAddress.isMintToken(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x2bed3643 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function liquidation(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(configAddress)
    staticcall configAddress.getValue(bytes32 rg1) with:
            gas gas_remaining wei
           args ('LIQUIDATION_ENABLE' << 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT ENABLE NOW'
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'POOL NOT EXIST'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).liquidation(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg3), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(configAddress)
        call configAddress.isMintToken(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x2bed3643 with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1d30ffe9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEVELOPER FORBIDDEN'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(configAddress)
        staticcall configAddress.factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _88 = mem[_87]
        require mem[_87] == mem[_87 + 12 len 20]
        mem[mem[64]] = 0xc5c63e6500000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_88))
        call address(_88).allPools() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_91]
        require mem[_91] <= test266151307()
        require _91 + mem[_91] + 31 < _91 + return_data.size
        _93 = mem[_91 + mem[_91]]
        require mem[_91 + mem[_91]] <= test266151307()
        require (32 * mem[_91 + mem[_91]]) + 32 >= 0 and _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32 <= test266151307()
        mem[64] = _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32
        mem[_91 + ceil32(return_data.size)] = _93
        require return_data.size >= _92 + (32 * _93) + 32
        t = _91 + _92 + 32
        u = _91 + ceil32(return_data.size) + 32
        s = 0
        while s < _93:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require ext_code.size(configAddress)
        staticcall configAddress.mint() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_166] == mem[_166 + 12 len 20]
        require ext_code.size(mem[_166 + 12 len 20])
        staticcall mem[_166 + 12 len 20].getLenderProductivity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _170 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _171 = mem[_170]
        require ext_code.size(configAddress)
        staticcall configAddress.mint() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_175] == mem[_175 + 12 len 20]
        require ext_code.size(mem[_175 + 12 len 20])
        staticcall mem[_175 + 12 len 20].getBorrowerProductivity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _180 = mem[_179]
        s = 0
        t = 0
        u = 0
        while s < _93:
            require idx < mem[_91 + ceil32(return_data.size)]
            require ext_code.size(mem[(32 * idx) + _91 + ceil32(return_data.size) + 44 len 20])
            staticcall mem[(32 * idx) + _91 + ceil32(return_data.size) + 44 len 20].supplys(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _252 = mem[_248]
            require idx < mem[_91 + ceil32(return_data.size)]
            require ext_code.size(mem[(32 * idx) + _91 + ceil32(return_data.size) + 44 len 20])
            staticcall mem[(32 * idx) + _91 + ceil32(return_data.size) + 44 len 20].borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _276 = mem[_268 + 96]
            if _252 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_268 + 96] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            t = mem[_268 + 96] + t
            u = _252 + u
            continue 
        if not _171:
            if not _180:
                if not _252 * _93:
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _257 = mem[_249]
                        require mem[_249] == mem[_249 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_257))
                        call address(_257).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_280] == bool(mem[_280])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _246 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _251 = mem[_246]
                    require mem[_246] == mem[_246 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _252 * _93
                    require ext_code.size(address(_251))
                    call address(_251).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _252 * _93
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_278] == bool(mem[_278])
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _309 = mem[_303]
                        require mem[_303] == mem[_303 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_309))
                        call address(_309).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_327] == bool(mem[_327])
            else:
                require ext_code.size(configAddress)
                staticcall configAddress.mint() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _250 = mem[_245]
                require mem[_245] == mem[_245 + 12 len 20]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = _180
                require ext_code.size(address(_250))
                call address(_250).0x2bed3643 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), _180
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _272 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_272] == bool(mem[_272])
                if not _252 * _93:
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _310 = mem[_304]
                        require mem[_304] == mem[_304 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_310))
                        call address(_310).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _328 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_328] == bool(mem[_328])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _307 = mem[_300]
                    require mem[_300] == mem[_300 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _252 * _93
                    require ext_code.size(address(_307))
                    call address(_307).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _252 * _93
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _325 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_325] == bool(mem[_325])
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _349 = mem[_345]
                        require mem[_345] == mem[_345 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_349))
                        call address(_349).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_361] == bool(mem[_361])
        else:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _247 = mem[_241]
            require mem[_241] == mem[_241 + 12 len 20]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = _171
            require ext_code.size(address(_247))
            call address(_247).0xe34da7ed with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), _171
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_270] == bool(mem[_270])
            if not _180:
                if not _252 * _93:
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _311 = mem[_305]
                        require mem[_305] == mem[_305 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_311))
                        call address(_311).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_329] == bool(mem[_329])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _308 = mem[_301]
                    require mem[_301] == mem[_301 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _252 * _93
                    require ext_code.size(address(_308))
                    call address(_308).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _252 * _93
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _326 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_326] == bool(mem[_326])
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _346 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _350 = mem[_346]
                        require mem[_346] == mem[_346 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_350))
                        call address(_350).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_362] == bool(mem[_362])
            else:
                require ext_code.size(configAddress)
                staticcall configAddress.mint() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _299 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _306 = mem[_299]
                require mem[_299] == mem[_299 + 12 len 20]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = _180
                require ext_code.size(address(_306))
                call address(_306).0x2bed3643 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), _180
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _324 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_324] == bool(mem[_324])
                if not _252 * _93:
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _351 = mem[_347]
                        require mem[_347] == mem[_347 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_351))
                        call address(_351).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_363] == bool(mem[_363])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _344 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _348 = mem[_344]
                    require mem[_344] == mem[_344 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _252 * _93
                    require ext_code.size(address(_348))
                    call address(_348).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _252 * _93
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _360 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_360] == bool(mem[_360])
                    if _276 * _93:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _371 = mem[_370]
                        require mem[_370] == mem[_370 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _276 * _93
                        require ext_code.size(address(_371))
                        call address(_371).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _276 * _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_374] == bool(mem[_374])
        idx = idx + 1
        continue 
}



}
