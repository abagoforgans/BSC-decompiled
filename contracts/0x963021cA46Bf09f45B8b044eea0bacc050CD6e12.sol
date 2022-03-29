contract main {




// =====================  Runtime code  =====================


address owner;
address chefAddress;
address oldFactoryAddress;
address factoryAddress;
uint256 notBeforeBlock;
uint256 stor5; offset 32
uint256 desiredLiquidity;

function notBeforeBlock() payable {
    return notBeforeBlock
}

function oldFactory() payable {
    return oldFactoryAddress
}

function chef() payable {
    return chefAddress
}

function desiredLiquidity() payable {
    return desiredLiquidity
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if chefAddress != msg.sender:
        revert with 0, 'not from master chef'
    if block.number < notBeforeBlock:
        revert with 0, 'too early to migrate'
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != oldFactoryAddress:
        revert with 0, 'not from old factory'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            desiredLiquidity = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 132] = arg1
            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg1)
            call arg1.burn(address rg1) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            mem[(10 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(11 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = desiredLiquidity
            mem[(12 * ceil32(return_data.size)) + 228] = 64
            mem[(12 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 128
            t = (12 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x8f2a0d8865d995364dc6843d51cf6989001f989e)
            staticcall 0x8f2a0d8865d995364dc6843d51cf6989001f989e.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args desiredLiquidity, Array(len=2, data=mem[(12 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _251 = mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _253 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192] <= test266151307()
            require (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224 <= test266151307() and (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 32 >= 0
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224
            mem[(13 * ceil32(return_data.size)) + 192] = _253
            require _251 + (32 * _253) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _251 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _253:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 0 < _253
            require 0 < _253
            if ext_call.return_data[0] > mem[(13 * ceil32(return_data.size)) + 224]:
                _419 = mem[(13 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = ext_call.return_data[0] - _419
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _419
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_427] == bool(mem[_427])
                require 1 < _253
                require 1 < _253
                if ext_call.return_data[0] > mem[(13 * ceil32(return_data.size)) + 256]:
                    _447 = mem[(13 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                    mem[mem[64] + 36] = ext_call.return_data[0] - _447
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _447
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_471] == bool(mem[_471])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_503] == mem[_503]
                    if desiredLiquidity != mem[_503]:
                        revert with 0, 'something went wrong??'
                else:
                    _445 = mem[(13 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = chefAddress
                    mem[mem[64] + 68] = ext_call.return_data[0] - _445
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), chefAddress, ext_call.return_data[0] - _445
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_480] == bool(mem[_480])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_512] == mem[_512]
                    if desiredLiquidity != mem[_512]:
                        revert with 0, 'something went wrong??'
            else:
                _417 = mem[(13 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = chefAddress
                mem[mem[64] + 68] = ext_call.return_data[0] - _417
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(this.address), chefAddress, ext_call.return_data[0] - _417
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_433] == bool(mem[_433])
                require 1 < _253
                require 1 < _253
                if ext_call.return_data[0] > mem[(13 * ceil32(return_data.size)) + 256]:
                    _463 = mem[(13 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                    mem[mem[64] + 36] = ext_call.return_data[0] - _463
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _463
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == bool(mem[_479])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_511] == mem[_511]
                    if desiredLiquidity != mem[_511]:
                        revert with 0, 'something went wrong??'
                else:
                    _461 = mem[(13 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = chefAddress
                    mem[mem[64] + 68] = ext_call.return_data[0] - _461
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), chefAddress, ext_call.return_data[0] - _461
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_491] == bool(mem[_491])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_523] == mem[_523]
                    if desiredLiquidity != mem[_523]:
                        revert with 0, 'something went wrong??'
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(factoryAddress)
        call factoryAddress.createPair(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            desiredLiquidity = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(8 * ceil32(return_data.size)) + 132] = arg1
            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg1)
            call arg1.burn(address rg1) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            mem[(11 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(13 * ceil32(return_data.size)) + 96] = 2
            mem[(13 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(13 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(13 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(13 * ceil32(return_data.size)) + 196] = desiredLiquidity
            mem[(13 * ceil32(return_data.size)) + 228] = 64
            mem[(13 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (13 * ceil32(return_data.size)) + 128
            t = (13 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x8f2a0d8865d995364dc6843d51cf6989001f989e)
            staticcall 0x8f2a0d8865d995364dc6843d51cf6989001f989e.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args desiredLiquidity, Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(13 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (14 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _252 = mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5
            require mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 <= test266151307()
            require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 223 < (13 * ceil32(return_data.size)) + return_data.size + 192
            _254 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]
            require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192] <= test266151307()
            require (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224 <= test266151307() and (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 32 >= 0
            mem[64] = (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224
            mem[(14 * ceil32(return_data.size)) + 192] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]
            require _252 + (32 * _254) + 32 <= return_data.size
            idx = 0
            s = (13 * ceil32(return_data.size)) + _252 + 224
            t = (14 * ceil32(return_data.size)) + 224
            while idx < _254:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 0 < _254
            require 0 < _254
            if ext_call.return_data[0] > mem[(14 * ceil32(return_data.size)) + 224]:
                _423 = mem[(14 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = ext_call.return_data[0] - _423
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _423
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == bool(mem[_428])
                require 1 < _254
                require 1 < _254
                if ext_call.return_data[0] > mem[(14 * ceil32(return_data.size)) + 256]:
                    _451 = mem[(14 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                    mem[mem[64] + 36] = ext_call.return_data[0] - _451
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _451
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_472] == bool(mem[_472])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_504] == mem[_504]
                    if desiredLiquidity != mem[_504]:
                        revert with 0, 'something went wrong??'
                else:
                    _449 = mem[(14 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = chefAddress
                    mem[mem[64] + 68] = ext_call.return_data[0] - _449
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), chefAddress, ext_call.return_data[0] - _449
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_482] == bool(mem[_482])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_514] == mem[_514]
                    if desiredLiquidity != mem[_514]:
                        revert with 0, 'something went wrong??'
            else:
                _421 = mem[(14 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = chefAddress
                mem[mem[64] + 68] = ext_call.return_data[0] - _421
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(this.address), chefAddress, ext_call.return_data[0] - _421
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_434] == bool(mem[_434])
                require 1 < _254
                require 1 < _254
                if ext_call.return_data[0] > mem[(14 * ceil32(return_data.size)) + 256]:
                    _467 = mem[(14 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                    mem[mem[64] + 36] = ext_call.return_data[0] - _467
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _467
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _481 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_481] == bool(mem[_481])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_513] == mem[_513]
                    if desiredLiquidity != mem[_513]:
                        revert with 0, 'something went wrong??'
                else:
                    _465 = mem[(14 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = chefAddress
                    mem[mem[64] + 68] = ext_call.return_data[0] - _465
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), chefAddress, ext_call.return_data[0] - _465
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_492] == bool(mem[_492])
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mint(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_524] == mem[_524]
                    if desiredLiquidity != mem[_524]:
                        revert with 0, 'something went wrong??'
    return address(ext_call.return_data[0])
}



}
