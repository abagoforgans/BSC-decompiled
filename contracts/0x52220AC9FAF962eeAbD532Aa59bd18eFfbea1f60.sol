contract main {




// =====================  Runtime code  =====================


const sub_886d24a9(?) = 0x1092e4f72a9d7a28418351d029e273906af24797

const getFastGas = ext_call.return_data[0]

const BOOST = 50

const PRICE = 10

const TARGETBOND = 50 * 10^18

const FASTGAS = 0x169e633a2d1e6c10dd91238ba11c4a708dfef37c

const BASE = 10


function _fallback() payable {
    revert
}

function bonds(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x1092e4f72a9d7a28418351d029e273906af24797
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add: +'
    return (2 * ext_call.return_data[0])
}

function getQuoteLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x169e633a2d1e6c10dd91238ba11c4a708dfef37c)
    staticcall 0x169e633a2d1e6c10dd91238ba11c4a708dfef37c.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, 0x1092e4f72a9d7a28418351d029e273906af24797
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
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, 0x1092e4f72a9d7a28418351d029e273906af24797
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        else:
            return 0
    if 10 * ext_call.return_data[0] * arg1 / 10 * arg1 != ext_call.return_data[0]:
        revert with 0, 'mul: *'
    if not 10 * ext_call.return_data[0] * arg1:
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args tx.origin, 0x1092e4f72a9d7a28418351d029e273906af24797
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        if 10 * ext_call.return_data[0] * arg1 >= 0:
            return (10 * ext_call.return_data[0] * arg1)
        else:
            return 0
    if 500 * ext_call.return_data[0] * arg1 / 10 * ext_call.return_data[0] * arg1 != 50:
        revert with 0, 'mul: *'
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
            gas gas_remaining wei
           args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args tx.origin, 0x1092e4f72a9d7a28418351d029e273906af24797
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add: +'
    if not 500 * ext_call.return_data[0] * arg1 / 10:
        if 10 * ext_call.return_data[0] * arg1 >= 0:
            return (10 * ext_call.return_data[0] * arg1)
        else:
            return 0
    if 2 * ext_call.return_data[0] < 50 * 10^18:
        if (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg1 / 10) + (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg1 / 10) / 500 * ext_call.return_data[0] * arg1 / 10 != 2 * ext_call.return_data[0]:
            revert with 0, 'mul: *'
        if 10 * ext_call.return_data[0] * arg1 >= (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg1 / 10) + (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg1 / 10) / 50 * 10^18:
            return (10 * ext_call.return_data[0] * arg1)
        return ((ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg1 / 10) + (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg1 / 10) / 50 * 10^18)
    if 50 * 10^18 * 500 * ext_call.return_data[0] * arg1 / 10 / 500 * ext_call.return_data[0] * arg1 / 10 != 50 * 10^18:
        revert with 0, 'mul: *'
    if 10 * ext_call.return_data[0] * arg1 >= 50 * 10^18 * 500 * ext_call.return_data[0] * arg1 / 10 / 50 * 10^18:
        return (10 * ext_call.return_data[0] * arg1)
    return (50 * 10^18 * 500 * ext_call.return_data[0] * arg1 / 10 / 50 * 10^18)
}

function getQuoteLimitFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x169e633a2d1e6c10dd91238ba11c4a708dfef37c)
    staticcall 0x169e633a2d1e6c10dd91238ba11c4a708dfef37c.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x1092e4f72a9d7a28418351d029e273906af24797
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
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x1092e4f72a9d7a28418351d029e273906af24797
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        else:
            return 0
    if 10 * ext_call.return_data[0] * arg2 / 10 * arg2 != ext_call.return_data[0]:
        revert with 0, 'mul: *'
    if not 10 * ext_call.return_data[0] * arg2:
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
        staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x1092e4f72a9d7a28418351d029e273906af24797
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'add: +'
        if 10 * ext_call.return_data[0] * arg2 >= 0:
            return (10 * ext_call.return_data[0] * arg2)
        else:
            return 0
    if 500 * ext_call.return_data[0] * arg2 / 10 * ext_call.return_data[0] * arg2 != 50:
        revert with 0, 'mul: *'
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.votes(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1092e4f72a9d7a28418351d029e273906af24797)
    staticcall 0x1092e4f72a9d7a28418351d029e273906af24797.bonds(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), 0x1092e4f72a9d7a28418351d029e273906af24797
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add: +'
    if not 500 * ext_call.return_data[0] * arg2 / 10:
        if 10 * ext_call.return_data[0] * arg2 >= 0:
            return (10 * ext_call.return_data[0] * arg2)
        else:
            return 0
    if 2 * ext_call.return_data[0] < 50 * 10^18:
        if (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg2 / 10) + (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg2 / 10) / 500 * ext_call.return_data[0] * arg2 / 10 != 2 * ext_call.return_data[0]:
            revert with 0, 'mul: *'
        if 10 * ext_call.return_data[0] * arg2 >= (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg2 / 10) + (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg2 / 10) / 50 * 10^18:
            return (10 * ext_call.return_data[0] * arg2)
        return ((ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg2 / 10) + (ext_call.return_data[0] * 500 * ext_call.return_data[0] * arg2 / 10) / 50 * 10^18)
    if 50 * 10^18 * 500 * ext_call.return_data[0] * arg2 / 10 / 500 * ext_call.return_data[0] * arg2 / 10 != 50 * 10^18:
        revert with 0, 'mul: *'
    if 10 * ext_call.return_data[0] * arg2 >= 50 * 10^18 * 500 * ext_call.return_data[0] * arg2 / 10 / 50 * 10^18:
        return (10 * ext_call.return_data[0] * arg2)
    return (50 * 10^18 * 500 * ext_call.return_data[0] * arg2 / 10 / 50 * 10^18)
}



}
