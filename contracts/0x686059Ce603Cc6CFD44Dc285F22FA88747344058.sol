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
        require mem[_87] == mem[_87 + 12 len 20]
        require ext_code.size(mem[_87 + 12 len 20])
        staticcall mem[_87 + 12 len 20].countPools() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_91]
        require ext_code.size(configAddress)
        staticcall configAddress.mint() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_95] == mem[_95 + 12 len 20]
        require ext_code.size(mem[_95 + 12 len 20])
        staticcall mem[_95 + 12 len 20].getLenderProductivity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _100 = mem[_99]
        require ext_code.size(configAddress)
        staticcall configAddress.mint() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_104] == mem[_104 + 12 len 20]
        require ext_code.size(mem[_104 + 12 len 20])
        staticcall mem[_104 + 12 len 20].getBorrowerProductivity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _109 = mem[_108]
        s = 0
        t = 0
        u = 0
        while s < _92:
            require ext_code.size(configAddress)
            staticcall configAddress.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _176 = mem[_169]
            require mem[_169] == mem[_169 + 12 len 20]
            mem[mem[64] + 4] = s
            require ext_code.size(address(_176))
            staticcall address(_176).allPools(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _191 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _196 = mem[_191]
            require mem[_191] == mem[_191 + 12 len 20]
            require ext_code.size(mem[_191 + 12 len 20])
            staticcall mem[_191 + 12 len 20].supplys(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _227 = mem[_220]
            require ext_code.size(address(_196))
            staticcall address(_196).borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            if _227 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            if mem[_244 + 96] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            t = mem[_244 + 96] + t
            u = _227 + u
            continue 
        if not _100:
            if not _109:
                if not _227 * _92:
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _182 = mem[_179]
                        require mem[_179] == mem[_179 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_182))
                        call address(_182).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_199] == bool(mem[_199])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _181 = mem[_177]
                    require mem[_177] == mem[_177 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _227 * _92
                    require ext_code.size(address(_181))
                    call address(_181).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _227 * _92
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_197] == bool(mem[_197])
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _232 = mem[_221]
                        require mem[_221] == mem[_221 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_232))
                        call address(_232).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _258 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_258] == bool(mem[_258])
            else:
                require ext_code.size(configAddress)
                staticcall configAddress.mint() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _180 = mem[_175]
                require mem[_175] == mem[_175 + 12 len 20]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = _109
                require ext_code.size(address(_180))
                call address(_180).0x2bed3643 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), _109
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_195] == bool(mem[_195])
                if not _227 * _92:
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _233 = mem[_222]
                        require mem[_222] == mem[_222 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_233))
                        call address(_233).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_259] == bool(mem[_259])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _225 = mem[_218]
                    require mem[_218] == mem[_218 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _227 * _92
                    require ext_code.size(address(_225))
                    call address(_225).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _227 * _92
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_256] == bool(mem[_256])
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _284 = mem[_280]
                        require mem[_280] == mem[_280 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_284))
                        call address(_284).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_296] == bool(mem[_296])
        else:
            require ext_code.size(configAddress)
            staticcall configAddress.mint() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _178 = mem[_172]
            require mem[_172] == mem[_172 + 12 len 20]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = _100
            require ext_code.size(address(_178))
            call address(_178).0xe34da7ed with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), _100
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_193] == bool(mem[_193])
            if not _109:
                if not _227 * _92:
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _223 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _234 = mem[_223]
                        require mem[_223] == mem[_223 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_234))
                        call address(_234).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_260] == bool(mem[_260])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _226 = mem[_219]
                    require mem[_219] == mem[_219 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _227 * _92
                    require ext_code.size(address(_226))
                    call address(_226).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _227 * _92
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_257] == bool(mem[_257])
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _281 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _285 = mem[_281]
                        require mem[_281] == mem[_281 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_285))
                        call address(_285).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_297] == bool(mem[_297])
            else:
                require ext_code.size(configAddress)
                staticcall configAddress.mint() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_217]
                require mem[_217] == mem[_217 + 12 len 20]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = _109
                require ext_code.size(address(_224))
                call address(_224).0x2bed3643 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), _109
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_250] == bool(mem[_250])
                if not _227 * _92:
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _286 = mem[_282]
                        require mem[_282] == mem[_282 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_286))
                        call address(_286).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_298] == bool(mem[_298])
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.mint() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _283 = mem[_278]
                    require mem[_278] == mem[_278 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = _227 * _92
                    require ext_code.size(address(_283))
                    call address(_283).0x9fab3e6e with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), _227 * _92
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_295] == bool(mem[_295])
                    if _254 * _92:
                        require ext_code.size(configAddress)
                        staticcall configAddress.mint() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _306 = mem[_305]
                        require mem[_305] == mem[_305 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = _254 * _92
                        require ext_code.size(address(_306))
                        call address(_306).0x8626cdb3 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[4] + 36)]), _254 * _92
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_309] == bool(mem[_309])
        idx = idx + 1
        continue 
}



}
