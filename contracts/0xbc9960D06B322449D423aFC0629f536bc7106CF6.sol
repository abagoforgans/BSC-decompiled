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
    call arg1.0x23b872dd with:
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
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'lp is not zero'
        desiredLiquidity = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(7 * ceil32(return_data.size)) + 132] = arg1
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
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
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
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
        _334 = mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _336 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192] <= test266151307()
        require (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224 <= test266151307() and (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 32 >= 0
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224
        mem[(13 * ceil32(return_data.size)) + 192] = _336
        require _334 + (32 * _336) + 32 <= return_data.size
        idx = 0
        s = (12 * ceil32(return_data.size)) + _334 + 224
        t = (13 * ceil32(return_data.size)) + 224
        while idx < _336:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 0 < _336
        require 0 < _336
        if ext_call.return_data[0] > mem[(13 * ceil32(return_data.size)) + 224]:
            _630 = mem[(13 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
            mem[mem[64] + 36] = ext_call.return_data[0] - _630
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _630
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_638] == bool(mem[_638])
            require 1 < _336
            require 1 < _336
            if ext_call.return_data[0] > mem[(13 * ceil32(return_data.size)) + 256]:
                _658 = mem[(13 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = ext_call.return_data[0] - _658
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _658
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_682] == bool(mem[_682])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _716 = mem[_712]
                require mem[_712] == mem[_712]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _744 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_744] == mem[_744]
                require 0 < _336
                if _716 < mem[(13 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _336
                if mem[_744] < mem[(13 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_838] == mem[_838]
                if desiredLiquidity != mem[_838]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
            else:
                _656 = mem[(13 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = chefAddress
                mem[mem[64] + 68] = _656 - ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, chefAddress, _656 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_691] == bool(mem[_691])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _727 = mem[_723]
                require mem[_723] == mem[_723]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_755] == mem[_755]
                require 0 < _336
                if _727 < mem[(13 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _336
                if mem[_755] < mem[(13 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _851 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_851] == mem[_851]
                if desiredLiquidity != mem[_851]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
        else:
            _628 = mem[(13 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
            mem[mem[64] + 36] = chefAddress
            mem[mem[64] + 68] = _628 - ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args 0x10f09b9942707cea0e18948f9e12e5160d008500, chefAddress, _628 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _644 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_644] == bool(mem[_644])
            require 1 < _336
            require 1 < _336
            if ext_call.return_data[0] > mem[(13 * ceil32(return_data.size)) + 256]:
                _674 = mem[(13 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = ext_call.return_data[0] - _674
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _674
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_690] == bool(mem[_690])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _726 = mem[_722]
                require mem[_722] == mem[_722]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _754 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_754] == mem[_754]
                require 0 < _336
                if _726 < mem[(13 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _336
                if mem[_754] < mem[(13 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _850 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_850] == mem[_850]
                if desiredLiquidity != mem[_850]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
            else:
                _672 = mem[(13 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = chefAddress
                mem[mem[64] + 68] = _672 - ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, chefAddress, _672 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _702 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_702] == bool(mem[_702])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _736 = mem[_734]
                require mem[_734] == mem[_734]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _768 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_768] == mem[_768]
                require 0 < _336
                if _736 < mem[(13 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _336
                if mem[_768] < mem[(13 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _862 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_862] == mem[_862]
                if desiredLiquidity != mem[_862]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
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
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'lp is not zero'
        desiredLiquidity = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 132] = arg1
        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
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
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(12 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
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
        _335 = mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5
        require mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 <= test266151307()
        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 223 < (13 * ceil32(return_data.size)) + return_data.size + 192
        _337 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]
        require mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192] <= test266151307()
        require (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224 <= test266151307() and (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 32 >= 0
        mem[64] = (14 * ceil32(return_data.size)) + (32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 192 len 4], stor5 + 192]) + 224
        mem[(14 * ceil32(return_data.size)) + 192] = _337
        require _335 + (32 * _337) + 32 <= return_data.size
        idx = 0
        s = (13 * ceil32(return_data.size)) + _335 + 224
        t = (14 * ceil32(return_data.size)) + 224
        while idx < _337:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 0 < _337
        require 0 < _337
        if ext_call.return_data[0] > mem[(14 * ceil32(return_data.size)) + 224]:
            _634 = mem[(14 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
            mem[mem[64] + 36] = ext_call.return_data[0] - _634
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _634
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_639] == bool(mem[_639])
            require 1 < _337
            require 1 < _337
            if ext_call.return_data[0] > mem[(14 * ceil32(return_data.size)) + 256]:
                _662 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = ext_call.return_data[0] - _662
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _662
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _683 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_683] == bool(mem[_683])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _717 = mem[_713]
                require mem[_713] == mem[_713]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_745] == mem[_745]
                require 0 < _337
                if _717 < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _337
                if mem[_745] < mem[(14 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _839 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_839] == mem[_839]
                if desiredLiquidity != mem[_839]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
            else:
                _660 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = chefAddress
                mem[mem[64] + 68] = _660 - ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, chefAddress, _660 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_693] == bool(mem[_693])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _729 = mem[_725]
                require mem[_725] == mem[_725]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _757 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_757] == mem[_757]
                require 0 < _337
                if _729 < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _337
                if mem[_757] < mem[(14 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _853 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_853] == mem[_853]
                if desiredLiquidity != mem[_853]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
        else:
            _632 = mem[(14 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
            mem[mem[64] + 36] = chefAddress
            mem[mem[64] + 68] = _632 - ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args 0x10f09b9942707cea0e18948f9e12e5160d008500, chefAddress, _632 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _645 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_645] == bool(mem[_645])
            require 1 < _337
            require 1 < _337
            if ext_call.return_data[0] > mem[(14 * ceil32(return_data.size)) + 256]:
                _678 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = ext_call.return_data[0] - _678
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, ext_call.return_data[0] - _678
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_692] == bool(mem[_692])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _728 = mem[_724]
                require mem[_724] == mem[_724]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _756 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_756] == mem[_756]
                require 0 < _337
                if _728 < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _337
                if mem[_756] < mem[(14 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _852 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_852] == mem[_852]
                if desiredLiquidity != mem[_852]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
            else:
                _676 = mem[(14 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = 0x10f09b9942707cea0e18948f9e12e5160d008500
                mem[mem[64] + 36] = chefAddress
                mem[mem[64] + 68] = _676 - ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args 0x10f09b9942707cea0e18948f9e12e5160d008500, chefAddress, _676 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_703] == bool(mem[_703])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _737 = mem[_735]
                require mem[_735] == mem[_735]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _771 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_771] == mem[_771]
                require 0 < _337
                if _737 < mem[(14 * ceil32(return_data.size)) + 224]:
                    revert with 0, 'too little token 0'
                require 1 < _337
                if mem[_771] < mem[(14 * ceil32(return_data.size)) + 256]:
                    revert with 0, 'too little amount token 1'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_864] == mem[_864]
                if desiredLiquidity != mem[_864]:
                    revert with 0, 'desiredLiquidity is not receivedLiquidity'
    return address(ext_call.return_data[0])
}



}
