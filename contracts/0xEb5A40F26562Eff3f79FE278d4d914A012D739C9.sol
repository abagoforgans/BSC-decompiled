contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address pairAddress;
address routerAddress;
address tokenAddress;
mapping of uint256 sub_703bde2e;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint256 sub_b2083a61;
uint256 sub_51ff5152;
uint256 launchBlock;
uint8 hasLaunched;
uint256 buyLimit;
uint256 sub_83229e39;
uint256 walletLimit;
uint256 sub_ae1e501b;
uint256 gasPriceLimit;
uint256 buyTax;
uint256 sellTax;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function walletLimit() {
    return walletLimit
}

function buyTax() {
    return buyTax
}

function sub_51ff5152(?) {
    return sub_51ff5152
}

function buyLimit() {
    return buyLimit
}

function hasLaunched() {
    return bool(hasLaunched)
}

function sub_703bde2e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_703bde2e[arg1]
}

function sub_83229e39(?) {
    return sub_83229e39
}

function owner() {
    return owner
}

function gasPriceLimit() {
    return gasPriceLimit
}

function pair() {
    return pairAddress
}

function sub_ae1e501b(?) {
    return sub_ae1e501b
}

function sub_b2083a61(?) {
    return sub_b2083a61
}

function sellTax() {
    return sellTax
}

function launchBlock() {
    return launchBlock
}

function isPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function activate() {
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not authorized'
    launchBlock = block.number
    hasLaunched = 1
}

function updateWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function authorize(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function sub_6e5f38b9(?) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    sub_51ff5152 = arg1
    sub_b2083a61 = arg2
    sub_83229e39 = arg3
    sub_ae1e501b = arg4
    gasPriceLimit = arg5
    buyTax = arg6
    sellTax = arg7
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_cbbdd84b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner == msg.sender:
        tokenAddress = address(arg1)
        pairAddress = address(arg2)
        stor8[address(arg2)] = 1
    else:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
        tokenAddress = address(arg1)
        pairAddress = address(arg2)
        stor8[address(arg2)] = 1
        if owner != msg.sender:
            if owner != tx.origin:
                revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_83229e39 and ext_call.return_data[0] > -1 / sub_83229e39:
        revert with 0, 17
    buyLimit = sub_83229e39 * ext_call.return_data[0] / 1000
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_ae1e501b and ext_call.return_data[0] > -1 / sub_ae1e501b:
        revert with 0, 17
    walletLimit = sub_ae1e501b * ext_call.return_data[0] / 1000
}

function sub_0f123d8d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not authorized'
    if launchBlock > !sub_51ff5152:
        revert with 0, 17
    if block.number < launchBlock + sub_51ff5152:
        if not stor6[address(arg1)]:
            if not stor6[address(arg2)]:
                revert with 0, 'Whitelisted launch.'
    if not stor8[address(arg1)]:
        if arg3 > buyLimit:
            revert with 0, 'Invalid amount.'
    else:
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg3:
            revert with 0, 17
        if sub_703bde2e[address(arg2)] > !sub_b2083a61:
            revert with 0, 17
        if arg3 > buyLimit:
            revert with 0, 'Invalid amount.'
        if walletLimit < ext_call.return_data[0] + arg3:
            revert with 0, 'Invalid wallet.'
        if block.number < sub_703bde2e[address(arg2)] + sub_b2083a61:
            revert with 0, 'Invalid time.'
    if not stor8[address(arg1)]:
        sub_703bde2e[address(arg1)] = block.number
        if arg3 and sellTax > -1 / arg3:
            revert with 0, 17
        return (arg3 * sellTax / 100)
    sub_703bde2e[address(arg2)] = block.number
    if arg3 and buyTax > -1 / arg3:
        revert with 0, 17
    return (arg3 * buyTax / 100)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x0f123d8d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not stor1[msg.sender]:
                revert with 0, 'Ownable: caller is not authorized'
            if launchBlock > !sub_51ff5152:
                revert with 0, 17
            if block.number < launchBlock + sub_51ff5152:
                if not stor6[address(arg1)]:
                    if not stor6[address(arg2)]:
                        revert with 0, 'Whitelisted launch.'
            if not stor8[address(arg1)]:
                if arg3 > buyLimit:
                    revert with 0, 'Invalid amount.'
            else:
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !arg3:
                    revert with 0, 17
                if sub_703bde2e[address(arg2)] > !sub_b2083a61:
                    revert with 0, 17
                if arg3 > buyLimit:
                    revert with 0, 'Invalid amount.'
                if walletLimit < ext_call.return_data[0] + arg3:
                    revert with 0, 'Invalid wallet.'
                if block.number < sub_703bde2e[address(arg2)] + sub_b2083a61:
                    revert with 0, 'Invalid time.'
            if not stor8[address(arg1)]:
                sub_703bde2e[address(arg1)] = block.number
                if arg3 and sellTax > -1 / arg3:
                    revert with 0, 17
                return (arg3 * sellTax / 100)
            sub_703bde2e[address(arg2)] = block.number
            if arg3 and buyTax > -1 / arg3:
                revert with 0, 17
            return (arg3 * buyTax / 100)
        if activate() == uint32(call.func_hash) >> 224:
            require not msg.value
            if not stor1[msg.sender]:
                revert with 0, 'Ownable: caller is not authorized'
            launchBlock = block.number
            hasLaunched = 1
        else:
            if unknown_0x2d1fb389(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    if owner != tx.origin:
                        revert with 0, 'Ownable: caller is not the owner'
                stor1[address(arg1)] = uint8(bool(arg2))
            else:
                if unknown_0x3af32abf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor6[arg1])
                if unknown_0x3c8463a1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return walletLimit
                if unknown_0x3d0f963e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        if owner != tx.origin:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor6[address(arg1)] = 1
                else:
                    if unknown_0x4f7041a5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return buyTax
                    if unknown_0x51ff5152(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_51ff5152
                    if unknown_0x589210d9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return buyLimit
                    if unknown_0x63a2b3ab(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(hasLaunched)
                    if unknown_0x6e5f38b9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 224
                        if owner != msg.sender:
                            if owner != tx.origin:
                                revert with 0, 'Ownable: caller is not the owner'
                        sub_51ff5152 = arg1
                        sub_b2083a61 = arg2
                        sub_83229e39 = arg3
                        sub_ae1e501b = arg4
                        gasPriceLimit = arg5
                        buyTax = arg6
                        sellTax = arg7
                    else:
                        if unknown_0x703bde2e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return sub_703bde2e[arg1]
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                if owner != tx.origin:
                                    revert with 0, 'Ownable: caller is not the owner'
                            emit 0xfe8be007: owner, 0
                            owner = 0
                        else:
                            if unknown_0x83229e39(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_83229e39
                            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return owner
                            if unknown_0x961a929c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return gasPriceLimit
                            if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return pairAddress
                            if unknown_0xae1e501b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_ae1e501b
                            if unknown_0xb2083a61(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_b2083a61
                            if uint32(call.func_hash) >> 224 != unknown_0xcbbdd84b(?????):
                                if unknown_0xcc1776d3(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return sellTax
                                if unknown_0xd00efb2f(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return launchBlock
                                if unknown_0xe5e31b13(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    return bool(stor8[arg1])
                                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                                    if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        return routerAddress
                                    if unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        return tokenAddress
                                    require unknown_0xfe575a87(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    return bool(stor7[arg1])
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if owner != msg.sender:
                                    if owner != tx.origin:
                                        revert with 0, 'Ownable: caller is not the owner'
                                if not address(arg1):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                emit 0xfe8be007: owner, address(arg1)
                                owner = address(arg1)
                            else:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require arg1 == address(arg1)
                                require arg2 == address(arg2)
                                if owner == msg.sender:
                                    tokenAddress = address(arg1)
                                    pairAddress = address(arg2)
                                    stor8[address(arg2)] = 1
                                else:
                                    if owner != tx.origin:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    tokenAddress = address(arg1)
                                    pairAddress = address(arg2)
                                    stor8[address(arg2)] = 1
                                    if owner != msg.sender:
                                        if owner != tx.origin:
                                            revert with 0, 'Ownable: caller is not the owner'
                                stor1[address(arg1)] = 1
                                staticcall address(arg1).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_83229e39 and ext_call.return_data[0] > -1 / sub_83229e39:
                                    revert with 0, 17
                                buyLimit = sub_83229e39 * ext_call.return_data[0] / 1000
                                staticcall address(arg1).0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_ae1e501b and ext_call.return_data[0] > -1 / sub_ae1e501b:
                                    revert with 0, 17
                                walletLimit = sub_ae1e501b * ext_call.return_data[0] / 1000
}



}
