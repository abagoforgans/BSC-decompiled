contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
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

function batchSwapExactIn(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256[] arg6, address arg7, address arg8, uint256 arg9, uint256 arg10) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (192 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 192
        _218 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_218] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_218 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_218 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_218 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_218 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_218 + 160] = cd[(s + 160)]
        mem[t] = _218
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[96]
        idx = 0
        s = 0
        while idx < _439:
            _443 = mem[64]
            mem[64] = mem[64] + 192
            mem[_443] = 0
            mem[_443 + 32] = 0
            mem[_443 + 64] = 0
            mem[_443 + 96] = 0
            mem[_443 + 128] = 0
            mem[_443 + 160] = 0
            require idx < mem[96]
            _451 = mem[(32 * idx) + 128]
            _452 = mem[mem[(32 * idx) + 128] + 32]
            _453 = mem[mem[(32 * idx) + 128]]
            _454 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_454)
            require ext_code.size(address(_452))
            staticcall address(_452).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_454)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_491] == mem[_491]
            if mem[_491] <= 0:
                _520 = mem[_451 + 96]
                mem[mem[64] + 4] = mem[_451 + 12 len 20]
                mem[mem[64] + 36] = _520
                require ext_code.size(address(_452))
                call address(_452).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _520
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_584] == bool(mem[_584])
                _631 = mem[_451 + 96]
                _632 = mem[_451 + 64]
                _633 = mem[_451 + 128]
                _634 = mem[_451 + 160]
                mem[mem[64] + 4] = mem[_451 + 44 len 20]
                mem[mem[64] + 36] = _631
                mem[mem[64] + 68] = address(_632)
                mem[mem[64] + 100] = _633
                mem[mem[64] + 132] = _634
                require ext_code.size(address(_453))
                call address(_453).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _631, address(_632), _633, _634
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_871] == mem[_871]
                require mem[_871 + 32] == mem[_871 + 32]
                if mem[_871] + s < mem[_871]:
                    revert with 0, 'SafeMath: addition overflow'
                _439 = mem[96]
                idx = idx + 1
                s = mem[_871] + s
                continue 
            mem[mem[64] + 4] = mem[_451 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_452))
            call address(_452).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _587 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_587] == bool(mem[_587])
            _680 = mem[_451 + 96]
            mem[mem[64] + 4] = mem[_451 + 12 len 20]
            mem[mem[64] + 36] = _680
            require ext_code.size(address(_452))
            call address(_452).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _680
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_757] == bool(mem[_757])
            _865 = mem[_451 + 96]
            _866 = mem[_451 + 64]
            _867 = mem[_451 + 128]
            _868 = mem[_451 + 160]
            mem[mem[64] + 4] = mem[_451 + 44 len 20]
            mem[mem[64] + 36] = _865
            mem[mem[64] + 68] = address(_866)
            mem[mem[64] + 100] = _867
            mem[mem[64] + 132] = _868
            require ext_code.size(address(_453))
            call address(_453).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _865, address(_866), _867, _868
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _999 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_999] == mem[_999]
            require mem[_999 + 32] == mem[_999 + 32]
            if mem[_999] + s < mem[_999]:
                revert with 0, 'SafeMath: addition overflow'
            _439 = mem[96]
            idx = idx + 1
            s = mem[_999] + s
            continue 
        if s < arg5:
            revert with 0, 'ERR_LIMIT_OUT'
        if not s:
            mem[mem[64] + 4] = this.address
            if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _497 = mem[_489]
                require mem[_489] == mem[_489]
                if mem[_489]:
                    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_489]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_489] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _497
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _497
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_628] == bool(mem[_628])
                        if not mem[_628]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _498 = mem[_490]
                require mem[_490] == mem[_490]
                if mem[_490]:
                    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_490]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_490] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _498
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _498
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _629 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_629] == bool(mem[_629])
                        if not mem[_629]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _574 = mem[_556]
                        require mem[_556] == mem[_556]
                        if mem[_556]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_556]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_556] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _574
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _574
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _806 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_806] == bool(mem[_806])
                                if not mem[_806]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _575 = mem[_557]
                        require mem[_557] == mem[_557]
                        if mem[_557]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_557]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_557] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _575
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _575
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _807 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_807] == bool(mem[_807])
                                if not mem[_807]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    _476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_476] = return_data.size
                    mem[_476 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _576 = mem[_558]
                        require mem[_558] == mem[_558]
                        if mem[_558]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_558]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_558] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _576
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _576
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _808 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_808] == bool(mem[_808])
                                if not mem[_808]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _577 = mem[_559]
                        require mem[_559] == mem[_559]
                        if mem[_559]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_559]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_559] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _577
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _577
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _809 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_809] == bool(mem[_809])
                                if not mem[_809]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(arg3)
                call arg3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _493 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_493] == bool(mem[_493])
                if not mem[_493]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
                mem[mem[64] + 4] = this.address
                if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _608 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _638 = mem[_608]
                    require mem[_608] == mem[_608]
                    if mem[_608]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_608]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_608] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _638
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _638
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _920 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_920] == bool(mem[_920])
                            if not mem[_920]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _609 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _639 = mem[_609]
                    require mem[_609] == mem[_609]
                    if mem[_609]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_609]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_609] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _639
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _639
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_921] == bool(mem[_921])
                            if not mem[_921]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg4
        require ext_code.size(arg2)
        call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_238] == bool(mem[_238])
        if not mem[_238]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _438 = mem[96]
        idx = 0
        s = 0
        while idx < _438:
            _441 = mem[64]
            mem[64] = mem[64] + 192
            mem[_441] = 0
            mem[_441 + 32] = 0
            mem[_441 + 64] = 0
            mem[_441 + 96] = 0
            mem[_441 + 128] = 0
            mem[_441 + 160] = 0
            require idx < mem[96]
            _446 = mem[(32 * idx) + 128]
            _447 = mem[mem[(32 * idx) + 128] + 32]
            _448 = mem[mem[(32 * idx) + 128]]
            _449 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_449)
            require ext_code.size(address(_447))
            staticcall address(_447).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_449)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_486] == mem[_486]
            if mem[_486] <= 0:
                _515 = mem[_446 + 96]
                mem[mem[64] + 4] = mem[_446 + 12 len 20]
                mem[mem[64] + 36] = _515
                require ext_code.size(address(_447))
                call address(_447).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _515
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_580] == bool(mem[_580])
                _623 = mem[_446 + 96]
                _624 = mem[_446 + 64]
                _625 = mem[_446 + 128]
                _626 = mem[_446 + 160]
                mem[mem[64] + 4] = mem[_446 + 44 len 20]
                mem[mem[64] + 36] = _623
                mem[mem[64] + 68] = address(_624)
                mem[mem[64] + 100] = _625
                mem[mem[64] + 132] = _626
                require ext_code.size(address(_448))
                call address(_448).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _623, address(_624), _625, _626
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _870 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_870] == mem[_870]
                require mem[_870 + 32] == mem[_870 + 32]
                if mem[_870] + s < mem[_870]:
                    revert with 0, 'SafeMath: addition overflow'
                _438 = mem[96]
                idx = idx + 1
                s = mem[_870] + s
                continue 
            mem[mem[64] + 4] = mem[_446 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_447))
            call address(_447).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _586 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_586] == bool(mem[_586])
            _659 = mem[_446 + 96]
            mem[mem[64] + 4] = mem[_446 + 12 len 20]
            mem[mem[64] + 36] = _659
            require ext_code.size(address(_447))
            call address(_447).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _659
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _750 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_750] == bool(mem[_750])
            _859 = mem[_446 + 96]
            _860 = mem[_446 + 64]
            _861 = mem[_446 + 128]
            _862 = mem[_446 + 160]
            mem[mem[64] + 4] = mem[_446 + 44 len 20]
            mem[mem[64] + 36] = _859
            mem[mem[64] + 68] = address(_860)
            mem[mem[64] + 100] = _861
            mem[mem[64] + 132] = _862
            require ext_code.size(address(_448))
            call address(_448).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _859, address(_860), _861, _862
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _998 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_998] == mem[_998]
            require mem[_998 + 32] == mem[_998 + 32]
            if mem[_998] + s < mem[_998]:
                revert with 0, 'SafeMath: addition overflow'
            _438 = mem[96]
            idx = idx + 1
            s = mem[_998] + s
            continue 
        if s < arg5:
            revert with 0, 'ERR_LIMIT_OUT'
        if not s:
            mem[mem[64] + 4] = this.address
            if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _494 = mem[_484]
                require mem[_484] == mem[_484]
                if mem[_484]:
                    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_484]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_484] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _494
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _494
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_620] == bool(mem[_620])
                        if not mem[_620]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _495 = mem[_485]
                require mem[_485] == mem[_485]
                if mem[_485]:
                    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(stor1)
                        call stor1.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_485]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value mem[_485] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _495
                        require ext_code.size(arg2)
                        call arg2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, _495
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_621] == bool(mem[_621])
                        if not mem[_621]:
                            revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _570 = mem[_552]
                        require mem[_552] == mem[_552]
                        if mem[_552]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_552]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_552] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _570
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _570
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_796] == bool(mem[_796])
                                if not mem[_796]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _571 = mem[_553]
                        require mem[_553] == mem[_553]
                        if mem[_553]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_553]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_553] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _571
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _571
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_797] == bool(mem[_797])
                                if not mem[_797]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    _472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_472] = return_data.size
                    mem[_472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _572 = mem[_554]
                        require mem[_554] == mem[_554]
                        if mem[_554]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_554]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_554] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _572
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _572
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_798] == bool(mem[_798])
                                if not mem[_798]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _573 = mem[_555]
                        require mem[_555] == mem[_555]
                        if mem[_555]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_555]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_555] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _573
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _573
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_799] == bool(mem[_799])
                                if not mem[_799]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(arg3)
                call arg3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_492] == bool(mem[_492])
                if not mem[_492]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
                mem[mem[64] + 4] = this.address
                if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _636 = mem[_604]
                    require mem[_604] == mem[_604]
                    if mem[_604]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_604]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_604] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _636
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _636
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_918] == bool(mem[_918])
                            if not mem[_918]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _605 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _637 = mem[_605]
                    require mem[_605] == mem[_605]
                    if mem[_605]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_605]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_605] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _637
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _637
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_919] == bool(mem[_919])
                            if not mem[_919]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
    return s
}

function batchSwapExactOut(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256[] arg6, address arg7, address arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (192 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 192
        _848 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_848] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_848 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_848 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_848 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_848 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_848 + 160] = cd[(s + 160)]
        mem[t] = _848
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1815 = mem[96]
        idx = 0
        s = 0
        while idx < _1815:
            _1819 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1819] = 0
            mem[_1819 + 32] = 0
            mem[_1819 + 64] = 0
            mem[_1819 + 96] = 0
            mem[_1819 + 128] = 0
            mem[_1819 + 160] = 0
            require idx < mem[96]
            _1827 = mem[(32 * idx) + 128]
            _1828 = mem[mem[(32 * idx) + 128] + 32]
            _1829 = mem[mem[(32 * idx) + 128]]
            _1830 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1830)
            require ext_code.size(address(_1828))
            staticcall address(_1828).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_1830)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1853 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1853] == mem[_1853]
            if mem[_1853] <= 0:
                _1862 = mem[_1827 + 128]
                mem[mem[64] + 4] = mem[_1827 + 12 len 20]
                mem[mem[64] + 36] = _1862
                require ext_code.size(address(_1828))
                call address(_1828).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1862
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1894 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1894] == bool(mem[_1894])
                _1961 = mem[_1827 + 128]
                _1962 = mem[_1827 + 64]
                _1963 = mem[_1827 + 96]
                _1964 = mem[_1827 + 160]
                mem[mem[64] + 4] = mem[_1827 + 44 len 20]
                mem[mem[64] + 36] = _1961
                mem[mem[64] + 68] = address(_1962)
                mem[mem[64] + 100] = _1963
                mem[mem[64] + 132] = _1964
                require ext_code.size(address(_1829))
                call address(_1829).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1961, address(_1962), _1963, _1964
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2169] == mem[_2169]
                require mem[_2169 + 32] == mem[_2169 + 32]
                if mem[_2169] + s < mem[_2169]:
                    revert with 0, 'SafeMath: addition overflow'
                _1815 = mem[96]
                idx = idx + 1
                s = mem[_2169] + s
                continue 
            mem[mem[64] + 4] = mem[_1827 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_1828))
            call address(_1828).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1901 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1901] == bool(mem[_1901])
            _1994 = mem[_1827 + 128]
            mem[mem[64] + 4] = mem[_1827 + 12 len 20]
            mem[mem[64] + 36] = _1994
            require ext_code.size(address(_1828))
            call address(_1828).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1994
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2071 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2071] == bool(mem[_2071])
            _2147 = mem[_1827 + 128]
            _2148 = mem[_1827 + 64]
            _2149 = mem[_1827 + 96]
            _2150 = mem[_1827 + 160]
            mem[mem[64] + 4] = mem[_1827 + 44 len 20]
            mem[mem[64] + 36] = _2147
            mem[mem[64] + 68] = address(_2148)
            mem[mem[64] + 100] = _2149
            mem[mem[64] + 132] = _2150
            require ext_code.size(address(_1829))
            call address(_1829).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _2147, address(_2148), _2149, _2150
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2589 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2589] == mem[_2589]
            require mem[_2589 + 32] == mem[_2589 + 32]
            if mem[_2589] + s < mem[_2589]:
                revert with 0, 'SafeMath: addition overflow'
            _1815 = mem[96]
            idx = idx + 1
            s = mem[_2589] + s
            continue 
        if s > arg4:
            revert with 0, 'ERR_LIMIT_IN'
        mem[mem[64] + 4] = this.address
        if arg3 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            require ext_code.size(arg3)
            staticcall arg3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1844 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1850 = mem[_1844]
            require mem[_1844] == mem[_1844]
            if not mem[_1844]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1946 = mem[_1931]
                    require mem[_1931] == mem[_1931]
                    if mem[_1931]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1931]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1931] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1946
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2190 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2190] == bool(mem[_2190])
                            if not mem[_2190]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1947 = mem[_1932]
                    require mem[_1932] == mem[_1932]
                    if mem[_1932]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1932]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1932] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1947
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2191] == bool(mem[_2191])
                            if not mem[_2191]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1844]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1844] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2062 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2096 = mem[_2062]
                            require mem[_2062] == mem[_2062]
                            if mem[_2062]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2062]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2062] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2096
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2096
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2512 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2512] == bool(mem[_2512])
                                    if not mem[_2512]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2063 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2097 = mem[_2063]
                            require mem[_2063] == mem[_2063]
                            if mem[_2063]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2063]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2063] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2097
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2097
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2513] == bool(mem[_2513])
                                    if not mem[_2513]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1909] = return_data.size
                        mem[_1909 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2064 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2098 = mem[_2064]
                            require mem[_2064] == mem[_2064]
                            if mem[_2064]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2064]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2064] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2098
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2098
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2514 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2514] == bool(mem[_2514])
                                    if not mem[_2514]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2065 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2099 = mem[_2065]
                            require mem[_2065] == mem[_2065]
                            if mem[_2065]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2065]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2065] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2099
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2099
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2515 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2515] == bool(mem[_2515])
                                    if not mem[_2515]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1850
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1850
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1940] == bool(mem[_1940])
                    if not mem[_1940]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2199 = mem[_2161]
                        require mem[_2161] == mem[_2161]
                        if mem[_2161]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2161]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2161] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2199
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2199
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2716 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2716] == bool(mem[_2716])
                                if not mem[_2716]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2200 = mem[_2162]
                        require mem[_2162] == mem[_2162]
                        if mem[_2162]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2162]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2162] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2200
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2200
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2717 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2717] == bool(mem[_2717])
                                if not mem[_2717]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1845 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1851 = mem[_1845]
            require mem[_1845] == mem[_1845]
            if not mem[_1845]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1935 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1948 = mem[_1935]
                    require mem[_1935] == mem[_1935]
                    if mem[_1935]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1935]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1935] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1948
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2192 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2192] == bool(mem[_2192])
                            if not mem[_2192]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1949 = mem[_1936]
                    require mem[_1936] == mem[_1936]
                    if mem[_1936]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1936]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1936] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1949
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1949
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2193 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2193] == bool(mem[_2193])
                            if not mem[_2193]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1845]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1845] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2100 = mem[_2066]
                            require mem[_2066] == mem[_2066]
                            if mem[_2066]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2066]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2066] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2100
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2522 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2522] == bool(mem[_2522])
                                    if not mem[_2522]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2101 = mem[_2067]
                            require mem[_2067] == mem[_2067]
                            if mem[_2067]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2067]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2067] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2101
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2101
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2523 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2523] == bool(mem[_2523])
                                    if not mem[_2523]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1912] = return_data.size
                        mem[_1912 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2102 = mem[_2068]
                            require mem[_2068] == mem[_2068]
                            if mem[_2068]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2068]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2068] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2102
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2102
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2524 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2524] == bool(mem[_2524])
                                    if not mem[_2524]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2069 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2103 = mem[_2069]
                            require mem[_2069] == mem[_2069]
                            if mem[_2069]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2069]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2069] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2103
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2103
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2525 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2525] == bool(mem[_2525])
                                    if not mem[_2525]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1851
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1851
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1941 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1941] == bool(mem[_1941])
                    if not mem[_1941]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2201 = mem[_2165]
                        require mem[_2165] == mem[_2165]
                        if mem[_2165]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2165]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2165] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2201
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2201
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2718] == bool(mem[_2718])
                                if not mem[_2718]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2202 = mem[_2166]
                        require mem[_2166] == mem[_2166]
                        if mem[_2166]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2166]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2166] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2202
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2202
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2719] == bool(mem[_2719])
                                if not mem[_2719]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg4
        require ext_code.size(arg2)
        call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _870 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_870] == bool(mem[_870])
        if not mem[_870]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _1814 = mem[96]
        idx = 0
        s = 0
        while idx < _1814:
            _1817 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1817] = 0
            mem[_1817 + 32] = 0
            mem[_1817 + 64] = 0
            mem[_1817 + 96] = 0
            mem[_1817 + 128] = 0
            mem[_1817 + 160] = 0
            require idx < mem[96]
            _1822 = mem[(32 * idx) + 128]
            _1823 = mem[mem[(32 * idx) + 128] + 32]
            _1824 = mem[mem[(32 * idx) + 128]]
            _1825 = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1825)
            require ext_code.size(address(_1823))
            staticcall address(_1823).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(_1825)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1852 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1852] == mem[_1852]
            if mem[_1852] <= 0:
                _1857 = mem[_1822 + 128]
                mem[mem[64] + 4] = mem[_1822 + 12 len 20]
                mem[mem[64] + 36] = _1857
                require ext_code.size(address(_1823))
                call address(_1823).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1857
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1892] == bool(mem[_1892])
                _1955 = mem[_1822 + 128]
                _1956 = mem[_1822 + 64]
                _1957 = mem[_1822 + 96]
                _1958 = mem[_1822 + 160]
                mem[mem[64] + 4] = mem[_1822 + 44 len 20]
                mem[mem[64] + 36] = _1955
                mem[mem[64] + 68] = address(_1956)
                mem[mem[64] + 100] = _1957
                mem[mem[64] + 132] = _1958
                require ext_code.size(address(_1824))
                call address(_1824).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1955, address(_1956), _1957, _1958
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2160] == mem[_2160]
                require mem[_2160 + 32] == mem[_2160 + 32]
                if mem[_2160] + s < mem[_2160]:
                    revert with 0, 'SafeMath: addition overflow'
                _1814 = mem[96]
                idx = idx + 1
                s = mem[_2160] + s
                continue 
            mem[mem[64] + 4] = mem[_1822 + 12 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(address(_1823))
            call address(_1823).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1898 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1898] == bool(mem[_1898])
            _1991 = mem[_1822 + 128]
            mem[mem[64] + 4] = mem[_1822 + 12 len 20]
            mem[mem[64] + 36] = _1991
            require ext_code.size(address(_1823))
            call address(_1823).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1991
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2070 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2070] == bool(mem[_2070])
            _2137 = mem[_1822 + 128]
            _2138 = mem[_1822 + 64]
            _2139 = mem[_1822 + 96]
            _2140 = mem[_1822 + 160]
            mem[mem[64] + 4] = mem[_1822 + 44 len 20]
            mem[mem[64] + 36] = _2137
            mem[mem[64] + 68] = address(_2138)
            mem[mem[64] + 100] = _2139
            mem[mem[64] + 132] = _2140
            require ext_code.size(address(_1824))
            call address(_1824).swapExactAmountOut(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _2137, address(_2138), _2139, _2140
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2588 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2588] == mem[_2588]
            require mem[_2588 + 32] == mem[_2588 + 32]
            if mem[_2588] + s < mem[_2588]:
                revert with 0, 'SafeMath: addition overflow'
            _1814 = mem[96]
            idx = idx + 1
            s = mem[_2588] + s
            continue 
        if s > arg4:
            revert with 0, 'ERR_LIMIT_IN'
        mem[mem[64] + 4] = this.address
        if arg3 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            require ext_code.size(arg3)
            staticcall arg3.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1842 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1848 = mem[_1842]
            require mem[_1842] == mem[_1842]
            if not mem[_1842]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1942 = mem[_1922]
                    require mem[_1922] == mem[_1922]
                    if mem[_1922]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1922]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1922] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1942
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1942
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2186] == bool(mem[_2186])
                            if not mem[_2186]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1923 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1943 = mem[_1923]
                    require mem[_1923] == mem[_1923]
                    if mem[_1923]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1923]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1923] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1943
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1943
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2187] == bool(mem[_2187])
                            if not mem[_2187]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1842]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1842] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2088 = mem[_2054]
                            require mem[_2054] == mem[_2054]
                            if mem[_2054]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2054]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2054] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2088
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2088
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2492 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2492] == bool(mem[_2492])
                                    if not mem[_2492]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2055 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2089 = mem[_2055]
                            require mem[_2055] == mem[_2055]
                            if mem[_2055]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2055]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2055] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2089
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2089
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2493 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2493] == bool(mem[_2493])
                                    if not mem[_2493]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1902 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1902] = return_data.size
                        mem[_1902 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2056 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2090 = mem[_2056]
                            require mem[_2056] == mem[_2056]
                            if mem[_2056]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2056]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2056] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2090
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2090
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2494 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2494] == bool(mem[_2494])
                                    if not mem[_2494]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2057 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2091 = mem[_2057]
                            require mem[_2057] == mem[_2057]
                            if mem[_2057]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2057]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2057] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2091
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2091
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2495 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2495] == bool(mem[_2495])
                                    if not mem[_2495]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1848
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1848
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1938] == bool(mem[_1938])
                    if not mem[_1938]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2152 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2194 = mem[_2152]
                        require mem[_2152] == mem[_2152]
                        if mem[_2152]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2152]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2152] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2194
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2194
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2712 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2712] == bool(mem[_2712])
                                if not mem[_2712]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2195 = mem[_2153]
                        require mem[_2153] == mem[_2153]
                        if mem[_2153]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2153]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2153] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2195
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2195
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2713 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2713] == bool(mem[_2713])
                                if not mem[_2713]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1843 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1849 = mem[_1843]
            require mem[_1843] == mem[_1843]
            if not mem[_1843]:
                mem[mem[64] + 4] = this.address
                if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(arg2)
                    staticcall arg2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1926 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1944 = mem[_1926]
                    require mem[_1926] == mem[_1926]
                    if mem[_1926]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1926]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1926] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1944
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1944
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2188 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2188] == bool(mem[_2188])
                            if not mem[_2188]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1927 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1945 = mem[_1927]
                    require mem[_1927] == mem[_1927]
                    if mem[_1927]:
                        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_1927]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value mem[_1927] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'ERR_ETH_FAILED'
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1945
                            require ext_code.size(arg2)
                            call arg2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _1945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2189] == bool(mem[_2189])
                            if not mem[_2189]:
                                revert with 0, 'ERR_TRANSFER_FAILED'
            else:
                if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1843]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_1843] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2058 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2092 = mem[_2058]
                            require mem[_2058] == mem[_2058]
                            if mem[_2058]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2058]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2058] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2092
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2092
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2502 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2502] == bool(mem[_2502])
                                    if not mem[_2502]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2059 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2093 = mem[_2059]
                            require mem[_2059] == mem[_2059]
                            if mem[_2059]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2059]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2059] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2093
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2093
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2503 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2503] == bool(mem[_2503])
                                    if not mem[_2503]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        _1905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1905] = return_data.size
                        mem[_1905 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'ERR_ETH_FAILED'
                        mem[mem[64] + 4] = this.address
                        if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2094 = mem[_2060]
                            require mem[_2060] == mem[_2060]
                            if mem[_2060]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2060]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2060] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2094
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2094
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2504 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2504] == bool(mem[_2504])
                                    if not mem[_2504]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2061 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2095 = mem[_2061]
                            require mem[_2061] == mem[_2061]
                            if mem[_2061]:
                                if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(stor1)
                                    call stor1.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_2061]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value mem[_2061] wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'ERR_ETH_FAILED'
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2095
                                    require ext_code.size(arg2)
                                    call arg2.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _2095
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2505 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2505] == bool(mem[_2505])
                                    if not mem[_2505]:
                                        revert with 0, 'ERR_TRANSFER_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1849
                    require ext_code.size(arg3)
                    call arg3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1849
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1939] == bool(mem[_1939])
                    if not mem[_1939]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
                    mem[mem[64] + 4] = this.address
                    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                        require ext_code.size(arg2)
                        staticcall arg2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2196 = mem[_2156]
                        require mem[_2156] == mem[_2156]
                        if mem[_2156]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2156]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2156] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2196
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2196
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2714 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2714] == bool(mem[_2714])
                                if not mem[_2714]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2197 = mem[_2157]
                        require mem[_2157] == mem[_2157]
                        if mem[_2157]:
                            if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                require ext_code.size(stor1)
                                call stor1.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_2157]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value mem[_2157] wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'ERR_ETH_FAILED'
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2197
                                require ext_code.size(arg2)
                                call arg2.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _2197
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2715 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2715] == bool(mem[_2715])
                                if not mem[_2715]:
                                    revert with 0, 'ERR_TRANSFER_FAILED'
    return s
}



}
