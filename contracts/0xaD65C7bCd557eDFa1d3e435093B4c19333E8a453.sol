contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
address adminAddress;
address bankAddress;
address bankControllerAddress;
address borrowerAddress;

function bankController() {
    return bankControllerAddress
}

function bank() {
    return bankAddress
}

function borrower() {
    return borrowerAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function setBorrower(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    borrowerAddress = arg1
}

function withdrawETH() {
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c10d4062(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    if stor1 == 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c:
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Requested pair is not available.'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if address(ext_call.return_data[0]) == 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c:
            if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1, arg1, this.address, 128, 32, arg1
            else:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1, 0, this.address, 128, 32, arg1
        else:
            if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1, this.address, 128, 32, arg1
            else:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, this.address, 128, 32, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor1 == stor1:
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'Requested pair is not available.'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if address(ext_call.return_data[0]) == 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c:
                if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1, arg1, this.address, 128, 32, arg1
                else:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1, 0, this.address, 128, 32, arg1
            else:
                if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1, this.address, 128, 32, arg1
                else:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, this.address, 128, 32, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
    staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(stor0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(stor0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[160] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = code.data[5607 len 64]
    mem[256] = cd[(arg4 + 36)]
    idx = mem[96] - 1
    while idx:
        require idx - 1 < mem[96]
        require idx < mem[96]
        _1240 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _1325 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_1240)
                _1326 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1328 = sha3(mem[_1326 + 32 len mem[_1326]])
                mem[_1325 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1325 + 105] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                mem[_1325 + 125] = _1328
                mem[_1325 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                mem[_1325 + 72] = 85
                if mem[(32 * idx - 1) + 140 len 20] == address(_1240):
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1325 + 292 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < address(_1240):
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1325 + 221] = address(mem[(32 * idx - 1) + 128])
                    mem[_1325 + 241] = address(_1240)
                    mem[_1325 + 189] = 40
                    mem[_1325 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1325 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1325 + 314] = sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240))
                    mem[_1325 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1325 + 261] = 85
                    mem[64] = _1325 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_1240):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1325 + 221] = address(_1240)
                    mem[_1325 + 241] = address(mem[(32 * idx - 1) + 128])
                    mem[_1325 + 189] = 40
                    mem[_1325 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1325 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1325 + 314] = sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20])
                    mem[_1325 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1325 + 261] = 85
                    mem[64] = _1325 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                mem[_1325 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_1325 + 488 len 22]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1325 + 484 len 26]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1325 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1325 + 484 len 26]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1325 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _1332 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _1333 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1335 = sha3(mem[_1333 + 32 len mem[_1333]])
                mem[_1332 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1332 + 105] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                mem[_1332 + 125] = _1335
                mem[_1332 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                mem[_1332 + 72] = 85
                if mem[(32 * idx - 1) + 140 len 20] == address(_1240):
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1332 + 292 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < address(_1240):
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1332 + 221] = address(mem[(32 * idx - 1) + 128])
                    mem[_1332 + 241] = address(_1240)
                    mem[_1332 + 189] = 40
                    mem[_1332 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1332 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1332 + 314] = sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240))
                    mem[_1332 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1332 + 261] = 85
                    mem[64] = _1332 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_1240):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1332 + 221] = address(_1240)
                    mem[_1332 + 241] = address(mem[(32 * idx - 1) + 128])
                    mem[_1332 + 189] = 40
                    mem[_1332 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1332 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1332 + 314] = sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20])
                    mem[_1332 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1332 + 261] = 85
                    mem[64] = _1332 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                mem[_1332 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_1332 + 488 len 22]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1332 + 484 len 26]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1332 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1332 + 484 len 26]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1332 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _1339 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_1240)
                _1340 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1342 = sha3(mem[_1340 + 32 len mem[_1340]])
                mem[_1339 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1339 + 105] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                mem[_1339 + 125] = _1342
                mem[_1339 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                mem[_1339 + 72] = 85
                if mem[(32 * idx - 1) + 140 len 20] == address(_1240):
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1339 + 292 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < address(_1240):
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1339 + 221] = address(mem[(32 * idx - 1) + 128])
                    mem[_1339 + 241] = address(_1240)
                    mem[_1339 + 189] = 40
                    mem[_1339 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1339 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1339 + 314] = sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240))
                    mem[_1339 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1339 + 261] = 85
                    mem[64] = _1339 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_1240):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1339 + 221] = address(_1240)
                    mem[_1339 + 241] = address(mem[(32 * idx - 1) + 128])
                    mem[_1339 + 189] = 40
                    mem[_1339 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1339 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1339 + 314] = sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20])
                    mem[_1339 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1339 + 261] = 85
                    mem[64] = _1339 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                mem[_1339 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_1339 + 488 len 22]
                if address(_1240) == mem[(32 * idx - 1) + 140 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1339 + 484 len 26]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1339 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1339 + 484 len 26]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1339 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _1346 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _1347 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1349 = sha3(mem[_1347 + 32 len mem[_1347]])
                mem[_1346 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1346 + 105] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                mem[_1346 + 125] = _1349
                mem[_1346 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                mem[_1346 + 72] = 85
                if mem[(32 * idx - 1) + 140 len 20] == address(_1240):
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1346 + 292 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < address(_1240):
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1346 + 221] = address(mem[(32 * idx - 1) + 128])
                    mem[_1346 + 241] = address(_1240)
                    mem[_1346 + 189] = 40
                    mem[_1346 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1346 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1346 + 314] = sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240))
                    mem[_1346 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1346 + 261] = 85
                    mem[64] = _1346 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(mem[(32 * idx - 1) + 140 len 20], address(_1240)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_1240):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_1346 + 221] = address(_1240)
                    mem[_1346 + 241] = address(mem[(32 * idx - 1) + 128])
                    mem[_1346 + 189] = 40
                    mem[_1346 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1346 + 294] = 0xbcfccbde45ce874adcb698cc183debcf17952812000000000000000000000000
                    mem[_1346 + 314] = sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20])
                    mem[_1346 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_1346 + 261] = 85
                    mem[64] = _1346 + 378
                    require ext_code.size(address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                    staticcall address(sha3(0, 13617983528775878474, sha3(address(_1240), mem[(32 * idx - 1) + 140 len 20]), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                            gas gas_remaining wei
                mem[_1346 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                42,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_1346 + 488 len 22]
                if address(_1240) == mem[(32 * idx - 1) + 140 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1346 + 484 len 26]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1346 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1346 + 484 len 26]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1346 + 484 len 26]
                    if not mem[(32 * idx) + 224]:
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
                    else:
                        require mem[(32 * idx) + 224]
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 224] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 224])) + 1
        idx = idx - 1
        continue 
    require 0 < mem[192]
    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
    call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args bankControllerAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
    call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args bankControllerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bankAddress)
    call bankAddress.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args borrowerAddress, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bankAddress)
    call bankAddress.tokenOut(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value mem[224] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, mem[224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
