contract main {




// =====================  Runtime code  =====================


#
#  - sub_e7d89092(?)
#
address owner;
mapping of uint8 stor1;

function getAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor1[address(arg1)] = 1
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_72f01aa6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'token is not contract'
    if arg3 > 0:
        if address(arg2):
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            if not owner:
                revert with 0, 'to is'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, arg3
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'amount is zero'
        if address(arg2):
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
        else:
            if not owner:
                revert with 0, 'to is'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_eca85779(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor1[address(msg.sender)]:
        revert with 0, 'R: not admin'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'R: pair non-contract'
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg2) == address(arg3):
        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if address(arg2) == address(arg3):
            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
        if address(arg2) < address(arg3):
            if not address(arg2):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        else:
            if not address(arg3):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if address(arg2) == address(arg3):
            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
        if address(arg2) < address(arg3):
            if not address(arg2):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(arg2), address(arg3)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg3):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(arg3), address(arg2)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                    gas gas_remaining wei
        mem[ceil32(return_data.size) + 474 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[(2 * ceil32(return_data.size)) + 478] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 478 len ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 474] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 478] = 32
            mem[(4 * ceil32(return_data.size)) + 510] = 12
            mem[(4 * ceil32(return_data.size)) + 542] = 'R: balance 0'
            revert with memory
              from (4 * ceil32(return_data.size)) + 474
               len (5 * ceil32(return_data.size)) + 100
        if address(arg2) == address(arg2):
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if ext_call.return_data[0] and 9975 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 9975 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 9975 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, ext_call.return_data[0]) > (-9975 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            mem[(4 * ceil32(return_data.size)) + 478] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 510] = ext_call.return_data[0]
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 478 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) >= address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if ext_call.return_data[0] and 9975 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 9975 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 9975 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, ext_call.return_data[32]) > (-9975 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            mem[(4 * ceil32(return_data.size)) + 478] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 510] = ext_call.return_data[0]
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 478 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) >= address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
    else:
        if not address(arg3):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if address(arg2) == address(arg3):
            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
        if address(arg2) < address(arg3):
            if not address(arg2):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        else:
            if not address(arg3):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if address(arg2) == address(arg3):
            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
        if address(arg2) < address(arg3):
            if not address(arg2):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(arg2), address(arg3)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not address(arg3):
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(arg3), address(arg2)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                    gas gas_remaining wei
        mem[ceil32(return_data.size) + 474 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[(2 * ceil32(return_data.size)) + 478] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 478 len ceil32(return_data.size) + 32]
        mem[(2 * ceil32(return_data.size)) + 474] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 478] = 32
            mem[(4 * ceil32(return_data.size)) + 510] = 12
            mem[(4 * ceil32(return_data.size)) + 542] = 'R: balance 0'
            revert with memory
              from (4 * ceil32(return_data.size)) + 474
               len (5 * ceil32(return_data.size)) + 100
        if address(arg2) == address(arg3):
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if ext_call.return_data[0] and 9975 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 9975 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 9975 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, ext_call.return_data[0]) > (-9975 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            mem[(4 * ceil32(return_data.size)) + 478] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 510] = ext_call.return_data[0]
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 478 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) >= address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                mem[(4 * ceil32(return_data.size)) + 474] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 478] = 32
                mem[(4 * ceil32(return_data.size)) + 510] = 38
                mem[(4 * ceil32(return_data.size)) + 542] = 'PancakeLibrary: INSUFFICIENT_LIQ'
                mem[(4 * ceil32(return_data.size)) + 574] = 'UIDITY'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 474
                   len (5 * ceil32(return_data.size)) + 132
            if ext_call.return_data[0] and 9975 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 9975 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 9975 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, ext_call.return_data[32]) > (-9975 * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            mem[(4 * ceil32(return_data.size)) + 478] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 510] = ext_call.return_data[0]
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 478 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            if address(arg2) >= address(arg3):
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
