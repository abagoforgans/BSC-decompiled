contract main {




// =====================  Runtime code  =====================


const sub_886d24a9(?) = 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81

const getFastGas = 36097 * 10^6

const BOOST = 50

const PRICE = 10

const TARGETBOND = 200 * 10^18

const FASTGAS = 36097 * 10^6

const BASE = 10


function _fallback() payable {
    revert
}

function bonds(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
    staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
    staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add: +'
    return (2 * ext_call.return_data[0])
}

function getQuoteLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        else:
            return 0
    if 10 * arg1 / arg1 != 10:
        revert with 0, 'mul: *'
    if not 10 * arg1:
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        else:
            return 0
    if 360970 * 10^6 * arg1 / 10 * arg1 != 36097 * 10^6:
        revert with 0, 'mul: *'
    if not 360970 * 10^6 * arg1:
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        if 360970 * 10^6 * arg1 >= 0:
            return (360970 * 10^6 * arg1)
        else:
            return 0
    if 18048500 * 10^6 * arg1 / 360970 * 10^6 * arg1 != 50:
        revert with 0, 'mul: *'
    require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
    staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
            gas gas_remaining wei
           args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
    staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args tx.origin, 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add: +'
    if not 18048500 * 10^6 * arg1 / 10:
        if 360970 * 10^6 * arg1 >= 0:
            return (360970 * 10^6 * arg1)
        else:
            return 0
    if 2 * ext_call.return_data[0] < 200 * 10^18:
        if (ext_call.return_data[0] * 18048500 * 10^6 * arg1 / 10) + (ext_call.return_data[0] * 18048500 * 10^6 * arg1 / 10) / 18048500 * 10^6 * arg1 / 10 != 2 * ext_call.return_data[0]:
            revert with 0, 'mul: *'
        if 360970 * 10^6 * arg1 >= (ext_call.return_data[0] * 18048500 * 10^6 * arg1 / 10) + (ext_call.return_data[0] * 18048500 * 10^6 * arg1 / 10) / 200 * 10^18:
            return (360970 * 10^6 * arg1)
        return ((ext_call.return_data[0] * 18048500 * 10^6 * arg1 / 10) + (ext_call.return_data[0] * 18048500 * 10^6 * arg1 / 10) / 200 * 10^18)
    if 200 * 10^18 * 18048500 * 10^6 * arg1 / 10 / 18048500 * 10^6 * arg1 / 10 != 200 * 10^18:
        revert with 0, 'mul: *'
    if 360970 * 10^6 * arg1 >= 200 * 10^18 * 18048500 * 10^6 * arg1 / 10 / 200 * 10^18:
        return (360970 * 10^6 * arg1)
    return (200 * 10^18 * 18048500 * 10^6 * arg1 / 10 / 200 * 10^18)
}

function getQuoteLimitFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        else:
            return 0
    if 10 * arg2 / arg2 != 10:
        revert with 0, 'mul: *'
    if not 10 * arg2:
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        else:
            return 0
    if 360970 * 10^6 * arg2 / 10 * arg2 != 36097 * 10^6:
        revert with 0, 'mul: *'
    if not 360970 * 10^6 * arg2:
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
        staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        if 360970 * 10^6 * arg2 >= 0:
            return (360970 * 10^6 * arg2)
        else:
            return 0
    if 18048500 * 10^6 * arg2 / 360970 * 10^6 * arg2 != 50:
        revert with 0, 'mul: *'
    require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
    staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.votes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81)
    staticcall 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x5ea29eee799aa7cc379fde5cf370bc24f2ea7c81
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add: +'
    if not 18048500 * 10^6 * arg2 / 10:
        if 360970 * 10^6 * arg2 >= 0:
            return (360970 * 10^6 * arg2)
        else:
            return 0
    if 2 * ext_call.return_data[0] < 200 * 10^18:
        if (ext_call.return_data[0] * 18048500 * 10^6 * arg2 / 10) + (ext_call.return_data[0] * 18048500 * 10^6 * arg2 / 10) / 18048500 * 10^6 * arg2 / 10 != 2 * ext_call.return_data[0]:
            revert with 0, 'mul: *'
        if 360970 * 10^6 * arg2 >= (ext_call.return_data[0] * 18048500 * 10^6 * arg2 / 10) + (ext_call.return_data[0] * 18048500 * 10^6 * arg2 / 10) / 200 * 10^18:
            return (360970 * 10^6 * arg2)
        return ((ext_call.return_data[0] * 18048500 * 10^6 * arg2 / 10) + (ext_call.return_data[0] * 18048500 * 10^6 * arg2 / 10) / 200 * 10^18)
    if 200 * 10^18 * 18048500 * 10^6 * arg2 / 10 / 18048500 * 10^6 * arg2 / 10 != 200 * 10^18:
        revert with 0, 'mul: *'
    if 360970 * 10^6 * arg2 >= 200 * 10^18 * 18048500 * 10^6 * arg2 / 10 / 200 * 10^18:
        return (360970 * 10^6 * arg2)
    return (200 * 10^18 * 18048500 * 10^6 * arg2 / 10 / 200 * 10^18)
}



}
