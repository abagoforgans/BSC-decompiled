contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d6319149(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    call address(arg1).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x2f703498 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getOracleForAsset(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_code.size(address(arg1))
            staticcall address(arg1).totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^18 * ext_call.return_data[0] / 10^18:
                return 0, 0, 10^18 * ext_call.return_data[0] / 10^18, 0
            if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return 0, 
                   0,
                   10^18 * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'Conversion error'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(address(arg1))
            staticcall address(arg1).totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^18 * ext_call.return_data[0] / 10^18:
                return 0, 0, 10^18 * ext_call.return_data[0] / 10^18, 0
            if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return 0, 
                   0,
                   10^18 * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            require ext_code.size(address(arg1))
            staticcall address(arg1).totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18, 0, 0, 0
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^18 * ext_call.return_data[0] / 10^18:
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18, 
                       0,
                       10^18 * ext_call.return_data[0] / 10^18,
                       0
            if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18, 
                   0,
                   10^18 * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18
        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalBorrows() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18, 
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18,
                   0,
                   0
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * ext_call.return_data[0] / 10^18:
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18, 
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18,
                   10^18 * ext_call.return_data[0] / 10^18,
                   0
        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18, 
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18,
               10^18 * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getOracleForAsset(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(arg1))
            staticcall address(arg1).totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not 10^(-uint8(ext_call.return_data[0]) + 36):
                        revert with 0, 'SafeMath: division by zero', 0
                    return 0 / 10^uint8(ext_call.return_data[0]), 
                           0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                           0 / 10^uint8(ext_call.return_data[0]),
                           0 / 10^(-uint8(ext_call.return_data[0]) + 36)
                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                       0 / 10^uint8(ext_call.return_data[0]),
                       ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                       10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36)
            if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                   10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
        if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalBorrows() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                       0 / 10^uint8(ext_call.return_data[0]),
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36)
            if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                   0 / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                   10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36)
        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        return 0 / 10^uint8(ext_call.return_data[0]), 
               ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
               10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'Conversion error'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(arg1))
            staticcall address(arg1).totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not 10^(-uint8(ext_call.return_data[0]) + 36):
                        revert with 0, 'SafeMath: division by zero', 0
                    return 0 / 10^uint8(ext_call.return_data[0]), 
                           0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                           0 / 10^uint8(ext_call.return_data[0]),
                           0 / 10^(-uint8(ext_call.return_data[0]) + 36)
                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                       0 / 10^uint8(ext_call.return_data[0]),
                       ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                       10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36)
            if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                   10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
        if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalBorrows() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                       0 / 10^uint8(ext_call.return_data[0]),
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36)
            if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                   0 / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                   10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36)
        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        return 0 / 10^uint8(ext_call.return_data[0]), 
               ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
               10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]):
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalBorrows() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not 10^(-uint8(ext_call.return_data[0]) + 36):
                    revert with 0, 'SafeMath: division by zero', 0
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                       0 / 10^uint8(ext_call.return_data[0]),
                       0 / 10^(-uint8(ext_call.return_data[0]) + 36)
            if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                   0 / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36),
                   10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36)
        if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
               0 / 10^(-uint8(ext_call.return_data[0]) + 36),
               10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
    if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^(-uint8(ext_call.return_data[0]) + 36):
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalBorrows() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not 10^(-uint8(ext_call.return_data[0]) + 36):
                revert with 0, 'SafeMath: division by zero', 0
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
                   ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
                   0 / 10^uint8(ext_call.return_data[0]),
                   0 / 10^(-uint8(ext_call.return_data[0]) + 36)
        if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
               0 / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
        if not 10^(-uint8(ext_call.return_data[0]) + 36):
            revert with 0, 'SafeMath: division by zero', 0
        return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
               ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
               10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
               0 / 10^(-uint8(ext_call.return_data[0]) + 36)
    if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^(-uint8(ext_call.return_data[0]) + 36):
        revert with 0, 'SafeMath: division by zero', 0
    return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]), 
           ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36),
           10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
           ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 36)
}

function sub_58f64631(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).getRegistry() with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 160]
    require mem[ceil32(return_data.size) + 160] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 191 < ceil32(return_data.size) + return_data.size + 160
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]) + 192 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]) + 192
    mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]
    require _9 + (32 * _10) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _9 + 192
    t = (2 * ceil32(return_data.size)) + 192
    while idx < _10:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _88 = mem[64]
    mem[64] = mem[64] + 64
    mem[_88] = 0
    mem[_88 + 32] = 0
    idx = 0
    while uint8(idx) < _10:
        require uint8(idx) < mem[(2 * ceil32(return_data.size)) + 160]
        _1156 = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 192]
        _1157 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1157] = 0
        mem[_1157 + 32] = 0
        mem[_1157 + 64] = 0
        mem[_1157 + 96] = 0
        _1159 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1159] = 0
        mem[_1159 + 32] = 0
        mem[_1159 + 64] = 0
        mem[_1159 + 96] = 0
        _1161 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1161] = 0
        mem[_1161 + 32] = 0
        mem[_1161 + 64] = 0
        mem[_1161 + 96] = 0
        require ext_code.size(address(_1156))
        call address(_1156).exchangeRateCurrent() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1166 = mem[_1164]
        require mem[_1164] == mem[_1164]
        require ext_code.size(address(_1156))
        staticcall address(_1156).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1170 = mem[_1169]
        require mem[_1169] == mem[_1169 + 12 len 20]
        require ext_code.size(address(_1156))
        staticcall address(_1156).0x2f703498 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1173] == mem[_1173 + 12 len 20]
        if address(_1170) == mem[_1173 + 12 len 20]:
            require ext_code.size(address(_1156))
            staticcall address(_1156).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1180] == mem[_1180 + 31 len 1]
            mem[mem[64] + 4] = address(_1170)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getOracleForAsset(address arg1) with:
                    gas gas_remaining wei
                   args address(_1170)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1191 = mem[_1189]
            require mem[_1189] == mem[_1189 + 12 len 20]
            mem[mem[64] + 4] = address(_1156)
            require ext_code.size(address(_1191))
            staticcall address(_1191).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1156)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1199 = mem[_1197]
            require mem[_1197] == mem[_1197]
            require ext_code.size(address(_1156))
            staticcall address(_1156).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1205 = mem[_1203]
            require mem[_1203] == mem[_1203]
            _1207 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1207] = _1166
            _1210 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1210] = 0
            _1212 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1212] = 0
            if not _1166:
                _1215 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1215] = 0
                _1227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1227] = 26
                mem[_1227 + 32] = 'SafeMath: division by zero'
                mem[_1161] = 0
                _1241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1241] = 26
                mem[_1241 + 32] = 'SafeMath: division by zero'
                mem[_1161 + 32] = 0
                require ext_code.size(address(_1156))
                staticcall address(_1156).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1283 = mem[_1267]
                require mem[_1267] == mem[_1267]
                if not mem[_1267]:
                    _1356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1356] = 26
                    mem[_1356 + 32] = 'SafeMath: division by zero'
                    mem[_1161 + 64] = 0
                    _1410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1410] = 26
                    mem[_1410 + 32] = 'SafeMath: division by zero'
                    mem[_1161 + 96] = 0
                    if mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 * mem[_1267] / mem[_1267] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1365] = 26
                    mem[_1365 + 32] = 'SafeMath: division by zero'
                    mem[_1161 + 64] = 10^18 * _1283 / 10^18
                    if not 10^18 * _1283 / 10^18:
                        _1417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1417] = 26
                        mem[_1417 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 96] = 0
                        if mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if _1199 * 10^18 * _1283 / 10^18 / 10^18 * _1283 / 10^18 != _1199:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1426 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1426] = 26
                        mem[_1426 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 96] = _1199 * 10^18 * _1283 / 10^18 / 10^18
                        if mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_1199 * 10^18 * _1283 / 10^18 / 10^18) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (_1199 * 10^18 * _1283 / 10^18 / 10^18) + mem[_88 + 32]
            else:
                if _1205 * _1166 / _1166 != _1205:
                    revert with 0, 'Conversion error'
                _1217 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1217] = _1205 * _1166
                if not _1205 * _1166 / 10^18:
                    _1232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1232] = 26
                    mem[_1232 + 32] = 'SafeMath: division by zero'
                    mem[_1161] = 0
                    _1245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1245] = 26
                    mem[_1245 + 32] = 'SafeMath: division by zero'
                    mem[_1161 + 32] = 0
                    require ext_code.size(address(_1156))
                    staticcall address(_1156).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1288 = mem[_1278]
                    require mem[_1278] == mem[_1278]
                    if not mem[_1278]:
                        _1371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1371] = 26
                        mem[_1371 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 64] = 0
                        _1422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1422] = 26
                        mem[_1422 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 96] = 0
                        if mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 * mem[_1278] / mem[_1278] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1380] = 26
                        mem[_1380 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 64] = 10^18 * _1288 / 10^18
                        if not 10^18 * _1288 / 10^18:
                            _1432 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1432] = 26
                            mem[_1432 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 96] = 0
                            if mem[_88] < mem[_88]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_88 + 32] < mem[_88 + 32]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if _1199 * 10^18 * _1288 / 10^18 / 10^18 * _1288 / 10^18 != _1199:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1443] = 26
                            mem[_1443 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 96] = _1199 * 10^18 * _1288 / 10^18 / 10^18
                            if mem[_88] < mem[_88]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_1199 * 10^18 * _1288 / 10^18 / 10^18) + mem[_88 + 32] < mem[_88 + 32]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_88 + 32] = (_1199 * 10^18 * _1288 / 10^18 / 10^18) + mem[_88 + 32]
                else:
                    if 10^18 * _1205 * _1166 / 10^18 / _1205 * _1166 / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1235] = 26
                    mem[_1235 + 32] = 'SafeMath: division by zero'
                    mem[_1161] = 10^18 * _1205 * _1166 / 10^18 / 10^18
                    if not 10^18 * _1205 * _1166 / 10^18 / 10^18:
                        _1248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1248] = 26
                        mem[_1248 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 32] = 0
                        require ext_code.size(address(_1156))
                        staticcall address(_1156).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1292 = mem[_1282]
                        require mem[_1282] == mem[_1282]
                        if not mem[_1282]:
                            _1379 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1379] = 26
                            mem[_1379 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 64] = 0
                            _1431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1431] = 26
                            mem[_1431 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 96] = 0
                            if mem[_88] < mem[_88]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_88 + 32] < mem[_88 + 32]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 * mem[_1282] / mem[_1282] != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1387 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1387] = 26
                            mem[_1387 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 64] = 10^18 * _1292 / 10^18
                            if not 10^18 * _1292 / 10^18:
                                _1442 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1442] = 26
                                mem[_1442 + 32] = 'SafeMath: division by zero'
                                mem[_1161 + 96] = 0
                                if mem[_88] < mem[_88]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_88 + 32] < mem[_88 + 32]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if _1199 * 10^18 * _1292 / 10^18 / 10^18 * _1292 / 10^18 != _1199:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1453 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1453] = 26
                                mem[_1453 + 32] = 'SafeMath: division by zero'
                                mem[_1161 + 96] = _1199 * 10^18 * _1292 / 10^18 / 10^18
                                if mem[_88] < mem[_88]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_1199 * 10^18 * _1292 / 10^18 / 10^18) + mem[_88 + 32] < mem[_88 + 32]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_88 + 32] = (_1199 * 10^18 * _1292 / 10^18 / 10^18) + mem[_88 + 32]
                    else:
                        if _1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18 * _1205 * _1166 / 10^18 / 10^18 != _1199:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1251] = 26
                        mem[_1251 + 32] = 'SafeMath: division by zero'
                        mem[_1161 + 32] = _1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18
                        require ext_code.size(address(_1156))
                        staticcall address(_1156).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1285 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1297 = mem[_1285]
                        require mem[_1285] == mem[_1285]
                        if not mem[_1285]:
                            _1386 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1386] = 26
                            mem[_1386 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 64] = 0
                            _1441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1441] = 26
                            mem[_1441 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 96] = 0
                            if (_1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18) + mem[_88] < mem[_88]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_88] = (_1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18) + mem[_88]
                            if mem[_88 + 32] < mem[_88 + 32]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 * mem[_1285] / mem[_1285] != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1391 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1391] = 26
                            mem[_1391 + 32] = 'SafeMath: division by zero'
                            mem[_1161 + 64] = 10^18 * _1297 / 10^18
                            if not 10^18 * _1297 / 10^18:
                                _1452 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1452] = 26
                                mem[_1452 + 32] = 'SafeMath: division by zero'
                                mem[_1161 + 96] = 0
                                if (_1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18) + mem[_88] < mem[_88]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_88] = (_1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18) + mem[_88]
                                if mem[_88 + 32] < mem[_88 + 32]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if _1199 * 10^18 * _1297 / 10^18 / 10^18 * _1297 / 10^18 != _1199:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1462 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1462] = 26
                                mem[_1462 + 32] = 'SafeMath: division by zero'
                                mem[_1161 + 96] = _1199 * 10^18 * _1297 / 10^18 / 10^18
                                if (_1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18) + mem[_88] < mem[_88]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_88] = (_1199 * 10^18 * _1205 * _1166 / 10^18 / 10^18 / 10^18) + mem[_88]
                                if (_1199 * 10^18 * _1297 / 10^18 / 10^18) + mem[_88 + 32] < mem[_88 + 32]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_88 + 32] = (_1199 * 10^18 * _1297 / 10^18 / 10^18) + mem[_88 + 32]
            idx = idx + 1
            continue 
        require ext_code.size(address(_1170))
        staticcall address(_1170).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1181 = mem[_1179]
        require mem[_1179] == mem[_1179 + 31 len 1]
        require ext_code.size(address(_1156))
        staticcall address(_1156).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1186] == mem[_1186 + 31 len 1]
        mem[mem[64] + 4] = address(_1170)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getOracleForAsset(address arg1) with:
                gas gas_remaining wei
               args address(_1170)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1195 = mem[_1193]
        require mem[_1193] == mem[_1193 + 12 len 20]
        mem[mem[64] + 4] = address(_1156)
        require ext_code.size(address(_1195))
        staticcall address(_1195).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_1156)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1206 = mem[_1204]
        require mem[_1204] == mem[_1204]
        require ext_code.size(address(_1156))
        staticcall address(_1156).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1213 = mem[_1211]
        require mem[_1211] == mem[_1211]
        _1216 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1216] = _1166
        _1219 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1219] = 0
        _1221 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1221] = 0
        if not _1166:
            _1225 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1225] = 0
            _1247 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1247] = 26
            mem[_1247 + 32] = 'SafeMath: division by zero'
            if not 10^uint8(_1181):
                _1254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1254 + 68] = mem[idx + _1247 + 32]
                    idx = idx + 32
                    continue 
                mem[_1254 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1254 + -mem[64] + 100
            mem[_1161] = 0 / 10^uint8(_1181)
            if not 0 / 10^uint8(_1181):
                _1291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1291] = 26
                mem[_1291 + 32] = 'SafeMath: division by zero'
                if not 10^(-uint8(_1181) + 36):
                    _1302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1302 + 68] = mem[idx + _1291 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1302 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1302 + -mem[64] + 100
                mem[_1161 + 32] = 0 / 10^(-uint8(_1181) + 36)
                require ext_code.size(address(_1156))
                staticcall address(_1156).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1361 = mem[_1333]
                require mem[_1333] == mem[_1333]
                if not mem[_1333]:
                    _1429 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1429] = 26
                    mem[_1429 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(_1181):
                        _1451 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1451 + 68] = mem[idx + _1429 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1451 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1451 + -mem[64] + 100
                    mem[_1161 + 64] = 0 / 10^uint8(_1181)
                    if not 0 / 10^uint8(_1181):
                        _1583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1583] = 26
                        mem[_1583 + 32] = 'SafeMath: division by zero'
                        if 10^(-uint8(_1181) + 36):
                            mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                            if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                            if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                            idx = idx + 1
                            continue 
                        _1639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1639 + 68] = mem[idx + _1583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1639 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1639 + -mem[64] + 100
                    if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1609] = 26
                    mem[_1609 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1668 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _1668 + 68] = mem[s + _1609 + 32]
                        s = s + 32
                        continue 
                    mem[_1668 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1668 + -mem[64] + 100
                if 10^18 * mem[_1333] / mem[_1333] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1439] = 26
                mem[_1439 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(_1181):
                    _1461 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1461 + 68] = mem[idx + _1439 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1461 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1461 + -mem[64] + 100
                mem[_1161 + 64] = 10^18 * _1361 / 10^uint8(_1181)
                if not 10^18 * _1361 / 10^uint8(_1181):
                    _1608 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1608] = 26
                    mem[_1608 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1667 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _1667 + 68] = mem[s + _1608 + 32]
                        s = s + 32
                        continue 
                    mem[_1667 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1667 + -mem[64] + 100
                if _1206 * 10^18 * _1361 / 10^uint8(_1181) / 10^18 * _1361 / 10^uint8(_1181) != _1206:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1637] = 26
                mem[_1637 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = _1206 * 10^18 * _1361 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (_1206 * 10^18 * _1361 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (_1206 * 10^18 * _1361 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1695 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1695 + 68] = mem[idx + _1637 + 32]
                    idx = idx + 32
                    continue 
                mem[_1695 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1695 + -mem[64] + 100
            if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                revert with 0, 'SafeMath: multiplication overflow'
            _1295 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1295] = 26
            mem[_1295 + 32] = 'SafeMath: division by zero'
            if not 10^(-uint8(_1181) + 36):
                _1307 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1307 + 68] = mem[idx + _1295 + 32]
                    idx = idx + 32
                    continue 
                mem[_1307 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1307 + -mem[64] + 100
            mem[_1161 + 32] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
            require ext_code.size(address(_1156))
            staticcall address(_1156).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1368 = mem[_1346]
            require mem[_1346] == mem[_1346]
            if not mem[_1346]:
                _1438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1438] = 26
                mem[_1438 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(_1181):
                    _1460 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1460 + 68] = mem[idx + _1438 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1460 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1460 + -mem[64] + 100
                mem[_1161 + 64] = 0 / 10^uint8(_1181)
                if not 0 / 10^uint8(_1181):
                    _1607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1607] = 26
                    mem[_1607 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                        if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _1666 + 68] = mem[s + _1607 + 32]
                        s = s + 32
                        continue 
                    mem[_1666 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1666 + -mem[64] + 100
                if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1635 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1635] = 26
                mem[_1635 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1694 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1694 + 68] = mem[idx + _1635 + 32]
                    idx = idx + 32
                    continue 
                mem[_1694 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1694 + -mem[64] + 100
            if 10^18 * mem[_1346] / mem[_1346] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _1450 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1450] = 26
            mem[_1450 + 32] = 'SafeMath: division by zero'
            if not 10^uint8(_1181):
                _1470 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1470 + 68] = mem[idx + _1450 + 32]
                    idx = idx + 32
                    continue 
                mem[_1470 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1470 + -mem[64] + 100
            mem[_1161 + 64] = 10^18 * _1368 / 10^uint8(_1181)
            if not 10^18 * _1368 / 10^uint8(_1181):
                _1634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1634] = 26
                mem[_1634 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1693 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1693 + 68] = mem[idx + _1634 + 32]
                    idx = idx + 32
                    continue 
                mem[_1693 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1693 + -mem[64] + 100
            if _1206 * 10^18 * _1368 / 10^uint8(_1181) / 10^18 * _1368 / 10^uint8(_1181) != _1206:
                revert with 0, 'SafeMath: multiplication overflow'
            _1664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1664] = 26
            mem[_1664 + 32] = 'SafeMath: division by zero'
            if 10^(-uint8(_1181) + 36):
                mem[_1161 + 96] = _1206 * 10^18 * _1368 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                if (_1206 * 10^18 * _1368 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88 + 32] = (_1206 * 10^18 * _1368 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                idx = idx + 1
                continue 
            _1716 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1716 + 68] = mem[idx + _1664 + 32]
                idx = idx + 32
                continue 
            mem[_1716 + 94] = 0
            revert with memory
              from mem[64]
               len _1716 + -mem[64] + 100
        if _1213 * _1166 / _1166 != _1213:
            revert with 0, 'Conversion error'
        _1228 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1228] = _1213 * _1166
        if not _1213 * _1166 / 10^18:
            _1252 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1252] = 26
            mem[_1252 + 32] = 'SafeMath: division by zero'
            if not 10^uint8(_1181):
                _1262 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1262 + 68] = mem[idx + _1252 + 32]
                    idx = idx + 32
                    continue 
                mem[_1262 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1262 + -mem[64] + 100
            mem[_1161] = 0 / 10^uint8(_1181)
            if not 0 / 10^uint8(_1181):
                _1299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1299] = 26
                mem[_1299 + 32] = 'SafeMath: division by zero'
                if not 10^(-uint8(_1181) + 36):
                    _1310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1310 + 68] = mem[idx + _1299 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1310 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1310 + -mem[64] + 100
                mem[_1161 + 32] = 0 / 10^(-uint8(_1181) + 36)
                require ext_code.size(address(_1156))
                staticcall address(_1156).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1374 = mem[_1351]
                require mem[_1351] == mem[_1351]
                if not mem[_1351]:
                    _1447 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1447] = 26
                    mem[_1447 + 32] = 'SafeMath: division by zero'
                    if not 10^uint8(_1181):
                        _1467 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1467 + 68] = mem[idx + _1447 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1467 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1467 + -mem[64] + 100
                    mem[_1161 + 64] = 0 / 10^uint8(_1181)
                    if not 0 / 10^uint8(_1181):
                        _1628 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1628] = 26
                        mem[_1628 + 32] = 'SafeMath: division by zero'
                        if 10^(-uint8(_1181) + 36):
                            mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                            if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                            if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                            idx = idx + 1
                            continue 
                        _1687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1687 + 68] = mem[idx + _1628 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1687 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1687 + -mem[64] + 100
                    if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1656] = 26
                    mem[_1656 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1712 + 68] = mem[idx + _1656 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1712 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1712 + -mem[64] + 100
                if 10^18 * mem[_1351] / mem[_1351] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1457 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1457] = 26
                mem[_1457 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(_1181):
                    _1477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1477 + 68] = mem[idx + _1457 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1477 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1477 + -mem[64] + 100
                mem[_1161 + 64] = 10^18 * _1374 / 10^uint8(_1181)
                if not 10^18 * _1374 / 10^uint8(_1181):
                    _1655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1655] = 26
                    mem[_1655 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1711 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1711 + 68] = mem[idx + _1655 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1711 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1711 + -mem[64] + 100
                if _1206 * 10^18 * _1374 / 10^uint8(_1181) / 10^18 * _1374 / 10^uint8(_1181) != _1206:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1685] = 26
                mem[_1685 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = _1206 * 10^18 * _1374 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (_1206 * 10^18 * _1374 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (_1206 * 10^18 * _1374 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1740 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1740 + 68] = mem[idx + _1685 + 32]
                    idx = idx + 32
                    continue 
                mem[_1740 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1740 + -mem[64] + 100
            if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                revert with 0, 'SafeMath: multiplication overflow'
            _1304 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1304] = 26
            mem[_1304 + 32] = 'SafeMath: division by zero'
            if not 10^(-uint8(_1181) + 36):
                _1313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1313 + 68] = mem[idx + _1304 + 32]
                    idx = idx + 32
                    continue 
                mem[_1313 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1313 + -mem[64] + 100
            mem[_1161 + 32] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
            require ext_code.size(address(_1156))
            staticcall address(_1156).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1383 = mem[_1360]
            require mem[_1360] == mem[_1360]
            if not mem[_1360]:
                _1456 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1456] = 26
                mem[_1456 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(_1181):
                    _1476 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1476 + 68] = mem[idx + _1456 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1476 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1476 + -mem[64] + 100
                mem[_1161 + 64] = 0 / 10^uint8(_1181)
                if not 0 / 10^uint8(_1181):
                    _1654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1654] = 26
                    mem[_1654 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                        if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1710 + 68] = mem[idx + _1654 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1710 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1710 + -mem[64] + 100
                if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1683] = 26
                mem[_1683 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1737 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1737 + 68] = mem[idx + _1683 + 32]
                    idx = idx + 32
                    continue 
                mem[_1737 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1737 + -mem[64] + 100
            if 10^18 * mem[_1360] / mem[_1360] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _1466 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1466] = 26
            mem[_1466 + 32] = 'SafeMath: division by zero'
            if not 10^uint8(_1181):
                _1489 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1489 + 68] = mem[idx + _1466 + 32]
                    idx = idx + 32
                    continue 
                mem[_1489 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1489 + -mem[64] + 100
            mem[_1161 + 64] = 10^18 * _1383 / 10^uint8(_1181)
            if not 10^18 * _1383 / 10^uint8(_1181):
                _1682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1682] = 26
                mem[_1682 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1736 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1736 + 68] = mem[idx + _1682 + 32]
                    idx = idx + 32
                    continue 
                mem[_1736 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1736 + -mem[64] + 100
            if _1206 * 10^18 * _1383 / 10^uint8(_1181) / 10^18 * _1383 / 10^uint8(_1181) != _1206:
                revert with 0, 'SafeMath: multiplication overflow'
            _1708 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1708] = 26
            mem[_1708 + 32] = 'SafeMath: division by zero'
            if 10^(-uint8(_1181) + 36):
                mem[_1161 + 96] = _1206 * 10^18 * _1383 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                if (_1206 * 10^18 * _1383 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88 + 32] = (_1206 * 10^18 * _1383 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                idx = idx + 1
                continue 
            _1774 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1774 + 68] = mem[idx + _1708 + 32]
                idx = idx + 32
                continue 
            mem[_1774 + 94] = 0
            revert with memory
              from mem[64]
               len _1774 + -mem[64] + 100
        if 10^18 * _1213 * _1166 / 10^18 / _1213 * _1166 / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _1257 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1257] = 26
        mem[_1257 + 32] = 'SafeMath: division by zero'
        if not 10^uint8(_1181):
            _1268 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1268 + 68] = mem[idx + _1257 + 32]
                idx = idx + 32
                continue 
            mem[_1268 + 94] = 0
            revert with memory
              from mem[64]
               len _1268 + -mem[64] + 100
        mem[_1161] = 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181)
        if not 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181):
            _1303 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1303] = 26
            mem[_1303 + 32] = 'SafeMath: division by zero'
            if not 10^(-uint8(_1181) + 36):
                _1312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1312 + 68] = mem[idx + _1303 + 32]
                    idx = idx + 32
                    continue 
                mem[_1312 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1312 + -mem[64] + 100
            mem[_1161 + 32] = 0 / 10^(-uint8(_1181) + 36)
            require ext_code.size(address(_1156))
            staticcall address(_1156).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1382 = mem[_1357]
            require mem[_1357] == mem[_1357]
            if not mem[_1357]:
                _1455 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1455] = 26
                mem[_1455 + 32] = 'SafeMath: division by zero'
                if not 10^uint8(_1181):
                    _1475 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1475 + 68] = mem[idx + _1455 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1475 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1475 + -mem[64] + 100
                mem[_1161 + 64] = 0 / 10^uint8(_1181)
                if not 0 / 10^uint8(_1181):
                    _1652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1652] = 26
                    mem[_1652 + 32] = 'SafeMath: division by zero'
                    if 10^(-uint8(_1181) + 36):
                        mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                        if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                        idx = idx + 1
                        continue 
                    _1707 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1707 + 68] = mem[idx + _1652 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1707 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1707 + -mem[64] + 100
                if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1680] = 26
                mem[_1680 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1731 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1731 + 68] = mem[idx + _1680 + 32]
                    idx = idx + 32
                    continue 
                mem[_1731 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1731 + -mem[64] + 100
            if 10^18 * mem[_1357] / mem[_1357] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _1465 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1465] = 26
            mem[_1465 + 32] = 'SafeMath: division by zero'
            if not 10^uint8(_1181):
                _1488 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1488 + 68] = mem[idx + _1465 + 32]
                    idx = idx + 32
                    continue 
                mem[_1488 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1488 + -mem[64] + 100
            mem[_1161 + 64] = 10^18 * _1382 / 10^uint8(_1181)
            if not 10^18 * _1382 / 10^uint8(_1181):
                _1679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1679] = 26
                mem[_1679 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1730 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1730 + 68] = mem[idx + _1679 + 32]
                    idx = idx + 32
                    continue 
                mem[_1730 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1730 + -mem[64] + 100
            if _1206 * 10^18 * _1382 / 10^uint8(_1181) / 10^18 * _1382 / 10^uint8(_1181) != _1206:
                revert with 0, 'SafeMath: multiplication overflow'
            _1705 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1705] = 26
            mem[_1705 + 32] = 'SafeMath: division by zero'
            if 10^(-uint8(_1181) + 36):
                mem[_1161 + 96] = _1206 * 10^18 * _1382 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                if (0 / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88]
                if (_1206 * 10^18 * _1382 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88 + 32] = (_1206 * 10^18 * _1382 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                idx = idx + 1
                continue 
            _1773 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1773 + 68] = mem[idx + _1705 + 32]
                idx = idx + 32
                continue 
            mem[_1773 + 94] = 0
            revert with memory
              from mem[64]
               len _1773 + -mem[64] + 100
        if _1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) != _1206:
            revert with 0, 'SafeMath: multiplication overflow'
        _1308 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1308] = 26
        mem[_1308 + 32] = 'SafeMath: division by zero'
        if not 10^(-uint8(_1181) + 36):
            _1318 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1318 + 68] = mem[idx + _1308 + 32]
                idx = idx + 32
                continue 
            mem[_1318 + 94] = 0
            revert with memory
              from mem[64]
               len _1318 + -mem[64] + 100
        mem[_1161 + 32] = _1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
        require ext_code.size(address(_1156))
        staticcall address(_1156).totalBorrows() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1388 = mem[_1366]
        require mem[_1366] == mem[_1366]
        if not mem[_1366]:
            _1464 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1464] = 26
            mem[_1464 + 32] = 'SafeMath: division by zero'
            if not 10^uint8(_1181):
                _1487 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1487 + 68] = mem[idx + _1464 + 32]
                    idx = idx + 32
                    continue 
                mem[_1487 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1487 + -mem[64] + 100
            mem[_1161 + 64] = 0 / 10^uint8(_1181)
            if not 0 / 10^uint8(_1181):
                _1678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1678] = 26
                mem[_1678 + 32] = 'SafeMath: division by zero'
                if 10^(-uint8(_1181) + 36):
                    mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                    if (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88] = (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                    if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                    idx = idx + 1
                    continue 
                _1727 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1727 + 68] = mem[idx + _1678 + 32]
                    idx = idx + 32
                    continue 
                mem[_1727 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1727 + -mem[64] + 100
            if _1206 * 0 / 10^uint8(_1181) / 0 / 10^uint8(_1181) != _1206:
                revert with 0, 'SafeMath: multiplication overflow'
            _1703 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1703] = 26
            mem[_1703 + 32] = 'SafeMath: division by zero'
            if 10^(-uint8(_1181) + 36):
                mem[_1161 + 96] = _1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
                if (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88] = (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                if (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88 + 32] = (_1206 * 0 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                idx = idx + 1
                continue 
            _1772 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1772 + 68] = mem[idx + _1703 + 32]
                idx = idx + 32
                continue 
            mem[_1772 + 94] = 0
            revert with memory
              from mem[64]
               len _1772 + -mem[64] + 100
        if 10^18 * mem[_1366] / mem[_1366] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _1474 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1474] = 26
        mem[_1474 + 32] = 'SafeMath: division by zero'
        if not 10^uint8(_1181):
            _1505 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1505 + 68] = mem[idx + _1474 + 32]
                idx = idx + 32
                continue 
            mem[_1505 + 94] = 0
            revert with memory
              from mem[64]
               len _1505 + -mem[64] + 100
        mem[_1161 + 64] = 10^18 * _1388 / 10^uint8(_1181)
        if not 10^18 * _1388 / 10^uint8(_1181):
            _1702 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1702] = 26
            mem[_1702 + 32] = 'SafeMath: division by zero'
            if 10^(-uint8(_1181) + 36):
                mem[_1161 + 96] = 0 / 10^(-uint8(_1181) + 36)
                if (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88] = (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
                if (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_88 + 32] = (0 / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
                idx = idx + 1
                continue 
            _1771 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1771 + 68] = mem[idx + _1702 + 32]
                idx = idx + 32
                continue 
            mem[_1771 + 94] = 0
            revert with memory
              from mem[64]
               len _1771 + -mem[64] + 100
        if _1206 * 10^18 * _1388 / 10^uint8(_1181) / 10^18 * _1388 / 10^uint8(_1181) != _1206:
            revert with 0, 'SafeMath: multiplication overflow'
        _1725 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1725] = 26
        mem[_1725 + 32] = 'SafeMath: division by zero'
        if 10^(-uint8(_1181) + 36):
            mem[_1161 + 96] = _1206 * 10^18 * _1388 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)
            if (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88] < mem[_88]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_88] = (_1206 * 10^18 * _1213 * _1166 / 10^18 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88]
            if (_1206 * 10^18 * _1388 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32] < mem[_88 + 32]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_88 + 32] = (_1206 * 10^18 * _1388 / 10^uint8(_1181) / 10^(-uint8(_1181) + 36)) + mem[_88 + 32]
            idx = idx + 1
            continue 
        _1796 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1796 + 68] = mem[idx + _1725 + 32]
            idx = idx + 32
            continue 
        mem[_1796 + 94] = 0
        revert with memory
          from mem[64]
           len _1796 + -mem[64] + 100
    mem[mem[64]] = mem[_88]
    mem[mem[64] + 32] = mem[_88 + 32]
    return memory
      from mem[64]
       len 64
}



}
