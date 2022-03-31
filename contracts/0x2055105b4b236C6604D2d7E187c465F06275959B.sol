contract main {




// =====================  Runtime code  =====================


#
#  - externalLiquidityTrade()
#
address msAddress;
address soteMasterAddress;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
address stor4;
uint256 stor4;
address stor5;
uint8 stor6; offset 160
address uniswapFactoryAddress;

function uniswapFactoryAddress() {
    return uniswapFactoryAddress
}

function ms() {
    return msAddress
}

function soteMasterAddress() {
    return soteMasterAddress
}

function sendEther() payable {
  stop
}

function _fallback() payable {
  stop
}

function changeMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function changeUniswapFactoryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uniswapFactoryAddress = arg1
    stor5 = arg1
}

function _getCurrencyAssetsBalance(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
        return eth.balance(address(stor3))
    require ext_code.size(address(stor4))
    staticcall address(stor4).getCurrencyAssetAddress(bytes4 rg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(stor3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeDependentContractAddress() {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d43000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5031000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
}

function upgradeInvestmentPool(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor6:
        revert with 0, 'Reentrant call.'
    stor6 = 1
    require ext_code.size(address(stor4))
    staticcall address(stor4).getInvestmentCurrencyLen() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    while uint64(idx) < ext_call.return_data[0]:
        require ext_code.size(address(stor4))
        staticcall address(stor4).getInvestmentCurrencyByIndex(uint256 rg1) with:
                gas gas_remaining wei
               args uint64(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor4))
        staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                gas gas_remaining wei
               args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = arg1
            mem[132] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        require ext_code.size(arg1)
        call arg1.sendEther() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor6 = 0
}

function internalLiquiditySwap(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor6:
        revert with 0, 'Reentrant call.'
    stor6 = 1
    require ext_code.size(address(stor4))
    staticcall address(stor4).getCurrencyAssetVarBase(bytes4 rg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
        if not ext_call.return_data[64] + ext_call.return_data[32]:
            if eth.balance(address(stor3)) > 0:
                require ext_code.size(address(stor4))
                staticcall address(stor4).getLastDate() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor4))
                staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                        gas gas_remaining wei
                       args uint64(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if Mask(32, 224, ext_call.return_data[64]) != Mask(32, 224, arg1):
                    require ext_code.size(address(stor3))
                    call address(stor3).0x9c1fe927 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require 0 <= eth.balance(address(stor3))
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), eth.balance(address(stor3))
                    else:
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2 <= eth.balance(address(stor3))
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), eth.balance(address(stor3)) - ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if eth.balance(address(stor3)) < ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getLastDate() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                            gas gas_remaining wei
                           args uint64(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if Mask(32, 224, ext_call.return_data[0]) != Mask(32, 224, arg1):
                        require ext_code.size(address(stor4))
                        staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(address(stor3))
                                        call address(stor3).0x9c1fe927 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require eth.balance(address(stor3)) <= 0
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if -eth.balance(address(stor3)) <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value -eth.balance(address(stor3)) wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if -eth.balance(address(stor3)) <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), -eth.balance(address(stor3))
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                            require eth.balance(address(stor3)) <= (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3)) <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3)) wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3)) <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3))
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
        else:
            require 2 * ext_call.return_data[64] + ext_call.return_data[32] / ext_call.return_data[64] + ext_call.return_data[32] == 2
            if eth.balance(address(stor3)) > 2 * ext_call.return_data[64] + ext_call.return_data[32]:
                require ext_code.size(address(stor4))
                staticcall address(stor4).getLastDate() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor4))
                staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                        gas gas_remaining wei
                       args uint64(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if Mask(32, 224, ext_call.return_data[64]) != Mask(32, 224, arg1):
                    require ext_code.size(address(stor3))
                    call address(stor3).0x9c1fe927 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require 0 <= eth.balance(address(stor3))
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), eth.balance(address(stor3))
                    else:
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2 <= eth.balance(address(stor3))
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), eth.balance(address(stor3)) - ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if eth.balance(address(stor3)) < ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getLastDate() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                            gas gas_remaining wei
                           args uint64(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if Mask(32, 224, ext_call.return_data[0]) != Mask(32, 224, arg1):
                        require ext_code.size(address(stor4))
                        staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(address(stor3))
                                        call address(stor3).0x9c1fe927 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require eth.balance(address(stor3)) <= 0
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if -eth.balance(address(stor3)) <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value -eth.balance(address(stor3)) wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if -eth.balance(address(stor3)) <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), -eth.balance(address(stor3))
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                            require eth.balance(address(stor3)) <= (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3)) <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3)) wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3)) <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - eth.balance(address(stor3))
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
    else:
        require ext_code.size(address(stor4))
        staticcall address(stor4).getCurrencyAssetAddress(bytes4 rg1) with:
                gas gas_remaining wei
               args Mask(32, 224, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(stor3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
        if not ext_call.return_data[64] + ext_call.return_data[32]:
            if ext_call.return_data[0] > 0:
                require ext_code.size(address(stor4))
                staticcall address(stor4).getLastDate() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor4))
                staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                        gas gas_remaining wei
                       args uint64(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if Mask(32, 224, ext_call.return_data[64]) != Mask(32, 224, arg1):
                    require ext_code.size(address(stor3))
                    call address(stor3).0x9c1fe927 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require 0 <= ext_call.return_data[0]
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), ext_call.return_data[0]
                    else:
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2 <= ext_call.return_data[0]
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), ext_call.return_data[0] - ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if ext_call.return_data[0] < ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getLastDate() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                            gas gas_remaining wei
                           args uint64(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if Mask(32, 224, ext_call.return_data[0]) != Mask(32, 224, arg1):
                        require ext_code.size(address(stor4))
                        staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(address(stor3))
                                        call address(stor3).0x9c1fe927 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_call.return_data[0] <= 0
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if -ext_call.return_data[0] <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value -ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if -ext_call.return_data[0] <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), -ext_call.return_data[0]
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                            require ext_call.return_data[0] <= (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0] <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0] <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0]
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
        else:
            require 2 * ext_call.return_data[64] + ext_call.return_data[32] / ext_call.return_data[64] + ext_call.return_data[32] == 2
            if ext_call.return_data[0] > 2 * ext_call.return_data[64] + ext_call.return_data[32]:
                require ext_code.size(address(stor4))
                staticcall address(stor4).getLastDate() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor4))
                staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                        gas gas_remaining wei
                       args uint64(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if Mask(32, 224, ext_call.return_data[64]) != Mask(32, 224, arg1):
                    require ext_code.size(address(stor3))
                    call address(stor3).0x9c1fe927 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require 0 <= ext_call.return_data[0]
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), ext_call.return_data[0]
                    else:
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                        require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2 <= ext_call.return_data[0]
                        require ext_code.size(address(stor3))
                        call address(stor3).0x1fac40b4 with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg1), ext_call.return_data[0] - ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if ext_call.return_data[0] < ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getLastDate() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getIARankDetailsByDate(uint64 rg1) with:
                            gas gas_remaining wei
                           args uint64(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if Mask(32, 224, ext_call.return_data[0]) != Mask(32, 224, arg1):
                        require ext_code.size(address(stor4))
                        staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if eth.balance(this.address) > 0:
                                require ext_code.size(address(stor3))
                                call address(stor3).0x9c1fe927 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(address(stor3))
                                        call address(stor3).0x9c1fe927 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_call.return_data[0] <= 0
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if -ext_call.return_data[0] <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value -ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if -ext_call.return_data[0] <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), -ext_call.return_data[0]
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            require (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / ext_call.return_data[64] + ext_call.return_data[32] == 3
                            require ext_call.return_data[0] <= (3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2
                            require ext_code.size(msAddress)
                            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5031000000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(address(stor3))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0] <= eth.balance(this.address):
                                    call address(stor3).sendEther() with:
                                       value ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                else:
                                    call address(stor3).sendEther() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(address(stor4))
                                staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0] <= ext_call.return_data[0]:
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((3 * ext_call.return_data[64]) + (3 * ext_call.return_data[32]) / 2) - ext_call.return_data[0]
                                else:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
    stor6 = 0
}

function saveIADetails(bytes4[] arg1, uint64[] arg2, uint64 arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if stor6:
        revert with 0, 'Reentrant call.'
    stor6 = 1
    mem[100] = msg.sender
    require ext_code.size(address(stor4))
    staticcall address(stor4).isnotarise(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(address(stor2))
    staticcall address(stor2).calVtpAndMCRtp() with:
            gas gas_remaining wei
    mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = 0
    s = 0
    s = 0
    s = -1
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    while idx < arg1.length:
        require idx < arg1.length
        _199 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = Mask(32, 224, mem[(32 * idx) + 128])
        require ext_code.size(address(stor4))
        staticcall address(stor4).getInvestmentAssetStatus(bytes4 rg1) with:
                gas gas_remaining wei
               args Mask(32, 224, _199)
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                s = 0
                s = 0
                s = s
                t = t
                u = u
                v = v
                w = w
                x = x
                continue 
            else:
                require idx < arg1.length
                require idx < arg2.length
                _209 = mem[(32 * idx) + (32 * arg1.length) + 160]
                if Mask(32, 224, mem[(32 * idx) + 128]) != 0x424e420000000000000000000000000000000000000000000000000000000000:
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getInvestmentAssetAddress(bytes4 rg1) with:
                            gas gas_remaining wei
                           args Mask(32, 224, mem[(32 * idx) + 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(address(stor4))
                            staticcall address(stor4).getInvestmentAssetHoldingPerc(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args Mask(32, 224, mem[(32 * idx) + 128])
                            mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 64
                                if not uint64(_209):
                                    if 0 > t:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        if 0 < s:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = 0
                                            s = 0
                                            s = 0
                                            t = 0
                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            v = mem[(32 * idx) + 128]
                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            x = mem[(32 * idx) + 128]
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = 0
                                            s = 0
                                            s = 0
                                            t = 0
                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            v = mem[(32 * idx) + 128]
                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            x = mem[(32 * idx) + 128]
                                            continue 
                                    else:
                                        if idx:
                                            if 0 < s:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = 0
                                                s = 0
                                                s = 0
                                                t = t
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = w
                                                x = x
                                                continue 
                                            else:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = 0
                                                s = 0
                                                s = 0
                                                t = t
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = w
                                                x = x
                                                continue 
                                        else:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            if 0 < s:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = 0
                                                s = 0
                                                s = 0
                                                t = 0
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                x = mem[(32 * idx) + 128]
                                                continue 
                                            else:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = 0
                                                s = 0
                                                s = 0
                                                t = 0
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                x = mem[(32 * idx) + 128]
                                                continue 
                                else:
                                    if ext_call.return_data[0]:
                                        require uint64(_209) * ext_call.return_data[0] / ext_call.return_data[0] == uint64(_209)
                                        if ext_call.return_data[0]:
                                            require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
                                            require uint64(_209) * ext_call.return_data[0] > 0
                                            require uint64(_209) * ext_call.return_data[0]
                                            if (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32]) > t:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                if (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                                else:
                                                    if not (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                                    else:
                                                        if idx:
                                                            idx = idx + 1
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = s
                                                            t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            u = u
                                                            v = v
                                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            x = mem[(32 * idx) + 128]
                                                            continue 
                                                        else:
                                                            require idx < arg1.length
                                                            require idx < arg2.length
                                                            idx = idx + 1
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            v = mem[(32 * idx) + 128]
                                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            x = mem[(32 * idx) + 128]
                                                            continue 
                                            else:
                                                if idx:
                                                    if (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = t
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = w
                                                        x = x
                                                        continue 
                                                    else:
                                                        if not (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                            require idx < arg1.length
                                                            require idx < arg2.length
                                                            idx = idx + 1
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            t = t
                                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            v = mem[(32 * idx) + 128]
                                                            w = w
                                                            x = x
                                                            continue 
                                                        else:
                                                            if idx:
                                                                idx = idx + 1
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = s
                                                                t = t
                                                                u = u
                                                                v = v
                                                                w = w
                                                                x = x
                                                                continue 
                                                            else:
                                                                require idx < arg1.length
                                                                require idx < arg2.length
                                                                idx = idx + 1
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                t = t
                                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                v = mem[(32 * idx) + 128]
                                                                w = w
                                                                x = x
                                                                continue 
                                                else:
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    if (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                                    else:
                                                        if not (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                            require idx < arg1.length
                                                            require idx < arg2.length
                                                            idx = idx + 1
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            v = mem[(32 * idx) + 128]
                                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            x = mem[(32 * idx) + 128]
                                                            continue 
                                                        else:
                                                            if idx:
                                                                idx = idx + 1
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = s
                                                                t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                u = u
                                                                v = v
                                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                x = mem[(32 * idx) + 128]
                                                                continue 
                                                            else:
                                                                require idx < arg1.length
                                                                require idx < arg2.length
                                                                idx = idx + 1
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                t = (10^6 * ext_call.return_data[0] / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                v = mem[(32 * idx) + 128]
                                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                x = mem[(32 * idx) + 128]
                                                                continue 
                                        else:
                                            require uint64(_209) * ext_call.return_data[0] > 0
                                            require uint64(_209) * ext_call.return_data[0]
                                            if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32]) > t:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                                else:
                                                    if not (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                                    else:
                                                        if idx:
                                                            idx = idx + 1
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = s
                                                            t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            u = u
                                                            v = v
                                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            x = mem[(32 * idx) + 128]
                                                            continue 
                                                        else:
                                                            require idx < arg1.length
                                                            require idx < arg2.length
                                                            idx = idx + 1
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            v = mem[(32 * idx) + 128]
                                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            x = mem[(32 * idx) + 128]
                                                            continue 
                                            else:
                                                if idx:
                                                    if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = t
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = w
                                                        x = x
                                                        continue 
                                                    else:
                                                        if not (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                            require idx < arg1.length
                                                            require idx < arg2.length
                                                            idx = idx + 1
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            t = t
                                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            v = mem[(32 * idx) + 128]
                                                            w = w
                                                            x = x
                                                            continue 
                                                        else:
                                                            if idx:
                                                                idx = idx + 1
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = s
                                                                t = t
                                                                u = u
                                                                v = v
                                                                w = w
                                                                x = x
                                                                continue 
                                                            else:
                                                                require idx < arg1.length
                                                                require idx < arg2.length
                                                                idx = idx + 1
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                t = t
                                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                v = mem[(32 * idx) + 128]
                                                                w = w
                                                                x = x
                                                                continue 
                                                else:
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                                    else:
                                                        if not (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                            require idx < arg1.length
                                                            require idx < arg2.length
                                                            idx = idx + 1
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                            t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            v = mem[(32 * idx) + 128]
                                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            x = mem[(32 * idx) + 128]
                                                            continue 
                                                        else:
                                                            if idx:
                                                                idx = idx + 1
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = s
                                                                t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                u = u
                                                                v = v
                                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                x = mem[(32 * idx) + 128]
                                                                continue 
                                                            else:
                                                                require idx < arg1.length
                                                                require idx < arg2.length
                                                                idx = idx + 1
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                                t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                v = mem[(32 * idx) + 128]
                                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                                x = mem[(32 * idx) + 128]
                                                                continue 
                                    else:
                                        require ext_call.return_data[0]
                                        require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6
                                        revert
                else:
                    require ext_code.size(address(stor4))
                    staticcall address(stor4).getInvestmentAssetHoldingPerc(bytes4 rg1) with:
                            gas gas_remaining wei
                           args Mask(32, 224, mem[(32 * idx) + 128])
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 64
                        if not uint64(_209):
                            if 0 > t:
                                require idx < arg1.length
                                require idx < arg2.length
                                if 0 < s:
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = 0
                                    s = 0
                                    s = 0
                                    t = 0
                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    v = mem[(32 * idx) + 128]
                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    x = mem[(32 * idx) + 128]
                                    continue 
                                else:
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = 0
                                    s = 0
                                    s = 0
                                    t = 0
                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    v = mem[(32 * idx) + 128]
                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    x = mem[(32 * idx) + 128]
                                    continue 
                            else:
                                if idx:
                                    if 0 < s:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = 0
                                        s = 0
                                        s = 0
                                        t = t
                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        v = mem[(32 * idx) + 128]
                                        w = w
                                        x = x
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = 0
                                        s = 0
                                        s = 0
                                        t = t
                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        v = mem[(32 * idx) + 128]
                                        w = w
                                        x = x
                                        continue 
                                else:
                                    require idx < arg1.length
                                    require idx < arg2.length
                                    if 0 < s:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = 0
                                        s = 0
                                        s = 0
                                        t = 0
                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        v = mem[(32 * idx) + 128]
                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        x = mem[(32 * idx) + 128]
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = 0
                                        s = 0
                                        s = 0
                                        t = 0
                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        v = mem[(32 * idx) + 128]
                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        x = mem[(32 * idx) + 128]
                                        continue 
                        else:
                            if ext_call.return_data[0]:
                                require uint64(_209) * ext_call.return_data[0] / ext_call.return_data[0] == uint64(_209)
                                if eth.balance(this.address):
                                    require 10^6 * eth.balance(this.address) / eth.balance(this.address) == 10^6
                                    require uint64(_209) * ext_call.return_data[0] > 0
                                    require uint64(_209) * ext_call.return_data[0]
                                    if (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32]) > t:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        if (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                            s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                            s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                            t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            v = mem[(32 * idx) + 128]
                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            x = mem[(32 * idx) + 128]
                                            continue 
                                        else:
                                            if not (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                x = mem[(32 * idx) + 128]
                                                continue 
                                            else:
                                                if idx:
                                                    idx = idx + 1
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = s
                                                    t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = u
                                                    v = v
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                                else:
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                    else:
                                        if idx:
                                            if (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                t = t
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = w
                                                x = x
                                                continue 
                                            else:
                                                if not (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = t
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = w
                                                    x = x
                                                    continue 
                                                else:
                                                    if idx:
                                                        idx = idx + 1
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = s
                                                        t = t
                                                        u = u
                                                        v = v
                                                        w = w
                                                        x = x
                                                        continue 
                                                    else:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = t
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = w
                                                        x = x
                                                        continue 
                                        else:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            if (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                x = mem[(32 * idx) + 128]
                                                continue 
                                            else:
                                                if not (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                                else:
                                                    if idx:
                                                        idx = idx + 1
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = s
                                                        t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = u
                                                        v = v
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                                    else:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = (10^6 * eth.balance(this.address) / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                else:
                                    require uint64(_209) * ext_call.return_data[0] > 0
                                    require uint64(_209) * ext_call.return_data[0]
                                    if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32]) > t:
                                        require idx < arg1.length
                                        require idx < arg2.length
                                        if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                            s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                            t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                            u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            v = mem[(32 * idx) + 128]
                                            w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            x = mem[(32 * idx) + 128]
                                            continue 
                                        else:
                                            if not (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                x = mem[(32 * idx) + 128]
                                                continue 
                                            else:
                                                if idx:
                                                    idx = idx + 1
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = s
                                                    t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = u
                                                    v = v
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                                else:
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                    else:
                                        if idx:
                                            if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                t = t
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = w
                                                x = x
                                                continue 
                                            else:
                                                if not (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = t
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = w
                                                    x = x
                                                    continue 
                                                else:
                                                    if idx:
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = s
                                                        t = t
                                                        u = u
                                                        v = v
                                                        w = w
                                                        x = x
                                                        continue 
                                                    else:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = t
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = w
                                                        x = x
                                                        continue 
                                        else:
                                            require idx < arg1.length
                                            require idx < arg2.length
                                            if (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]) < s:
                                                require idx < arg1.length
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                v = mem[(32 * idx) + 128]
                                                w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                x = mem[(32 * idx) + 128]
                                                continue 
                                            else:
                                                if not (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0]):
                                                    require idx < arg1.length
                                                    require idx < arg2.length
                                                    idx = idx + 1
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                    t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                    u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    v = mem[(32 * idx) + 128]
                                                    w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    x = mem[(32 * idx) + 128]
                                                    continue 
                                                else:
                                                    if idx:
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = s
                                                        t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = u
                                                        v = v
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                                                    else:
                                                        require idx < arg1.length
                                                        require idx < arg2.length
                                                        idx = idx + 1
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        s = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[0])
                                                        t = (0 / uint64(_209) * ext_call.return_data[0]) - uint64(ext_call.return_data[32])
                                                        u = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        v = mem[(32 * idx) + 128]
                                                        w = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                        x = mem[(32 * idx) + 128]
                                                        continue 
                            else:
                                require eth.balance(this.address)
                                require 10^6 * eth.balance(this.address) / eth.balance(this.address) != 10^6
                                revert
    require ext_code.size(address(stor4))
    call address(stor4).saveIARankDetails(bytes4 rg1, uint64 rg2, bytes4 rg3, uint64 rg4, uint64 rg5) with:
         gas gas_remaining wei
        args Mask(32, 224, x), w << 192, Mask(32, 224, v), u << 192, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor4))
    call address(stor4).updatelastDate(uint64 rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x7deb857600000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = Mask(32, 224, cd[((32 * idx) + arg1 + 36)])
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = uint64(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(address(stor4))
        call address(stor4).updateIAAvgRate(bytes4 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), uint64(cd[((32 * idx) + arg2 + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor6 = 0
}



}
