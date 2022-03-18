contract main {




// =====================  Runtime code  =====================


address BASEAddress;
address WBNBAddress;
address DEPLOYERAddress;
uint256 totalPooled;
uint256 totalVolume;
uint256 totalFees;
uint256 removeLiquidityTx;
uint256 addLiquidityTx;
uint256 swapTx;
array of address token;
mapping of address stor10;
mapping of uint8 stor11;

function totalFees() {
    return totalFees
}

function sub_17985461(?) {
    require calldata.size - 4 >= 32
    require arg1 < token.length
    return token[arg1]
}

function removeLiquidityTx() {
    return removeLiquidityTx
}

function isPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function totalVolume() {
    return totalVolume
}

function totalPooled() {
    return totalPooled
}

function addLiquidityTx() {
    return addLiquidityTx
}

function WBNB() {
    return WBNBAddress
}

function tokenCount() {
    return token.length
}

function DEPLOYER() {
    return DEPLOYERAddress
}

function swapTx() {
    return swapTx
}

function getToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < token.length
    return token[arg1]
}

function BASE() {
    return BASEAddress
}

function _fallback() payable {
    revert
}

function purgeDeployer() {
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'DeployerErr'
    DEPLOYERAddress = 0
}

function getPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        return stor10[address(arg1)]
    return stor10[stor1]
}

function removeLiquidityExact(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2:
        require ext_code.size(stor10[address(arg2)])
        call stor10[address(arg2)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[address(arg2)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[address(arg2)])
        call stor10[address(arg2)].removeLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    else:
        require ext_code.size(stor10[stor1])
        call stor10[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[stor1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[stor1])
        call stor10[stor1].removeLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > totalPooled:
        revert with 0, '', 0
    totalPooled -= ext_call.return_data[0]
    removeLiquidityTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_7d5ae5a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'DeployerErr'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x9f181b5e with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xe4b50cb8 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        require mem[_19] == mem[_19 + 12 len 20]
        mem[mem[64] + 4] = mem[_19 + 12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xbbe4f6db with:
                gas gas_remaining wei
               args address(_20)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        require mem[_23] == mem[_23 + 12 len 20]
        mem[0] = mem[_23 + 12 len 20]
        stor11[mem[0]] = 1
        token.length++
        token[token.length] = address(_20)
        mem[0] = address(_20)
        mem[32] = 10
        stor10[address(_20)] = address(_24)
        idx = idx + 1
        continue 
}

function sub_b3858487(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'DeployerErr'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6ec21cc8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalPooled = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x5f81a57c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalVolume = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x13114a9d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x4276845a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    removeLiquidityTx = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x74944d62 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    addLiquidityTx = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xd0497550 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    swapTx = ext_call.return_data[0]
}

function removeLiquidity(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 <= 0:
        revert with 0, 'InputErr'
    if arg1 > 10000:
        revert with 0, 'InputErr'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).UTILS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2:
        require ext_code.size(stor10[address(arg2)])
        staticcall stor10[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    else:
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x714270ab with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        require ext_code.size(stor10[address(arg2)])
        call stor10[address(arg2)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[address(arg2)], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[address(arg2)])
        call stor10[address(arg2)].removeLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    else:
        require ext_code.size(stor10[stor1])
        call stor10[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[stor1], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[stor1])
        call stor10[stor1].removeLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > totalPooled:
        revert with 0, '', 0
    totalPooled -= ext_call.return_data[0]
    removeLiquidityTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sell(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if arg2:
        if arg1:
            if not arg2:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
        require ext_code.size(stor10[address(arg2)])
        call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
             gas gas_remaining wei
            args BASEAddress, msg.sender
    else:
        if arg1:
            if not arg2:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
        require ext_code.size(stor10[stor1])
        call stor10[stor1].swapTo(address rg1, address rg2) with:
             gas gas_remaining wei
            args BASEAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > totalPooled:
        revert with 0, '', 0
    totalPooled -= ext_call.return_data[0]
    totalVolume += ext_call.return_data[0]
    totalFees += ext_call.return_data[32]
    swapTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sellTo(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if arg2:
        if arg1:
            if not arg2:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
        require ext_code.size(stor10[address(arg2)])
        call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
             gas gas_remaining wei
            args BASEAddress, arg3
    else:
        if arg1:
            if not arg2:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
        require ext_code.size(stor10[stor1])
        call stor10[stor1].swapTo(address rg1, address rg2) with:
             gas gas_remaining wei
            args BASEAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > totalPooled:
        revert with 0, '', 0
    totalPooled -= ext_call.return_data[0]
    totalVolume += ext_call.return_data[0]
    totalFees += ext_call.return_data[32]
    swapTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function buy(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if arg2:
        if not arg1:
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(arg2), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor10[address(arg2)])
                call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args address(arg2), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                totalPooled += arg1
                totalVolume += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                require ext_code.size(stor10[address(arg2)])
                call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args address(arg2), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.DAO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).UTILS() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                gas gas_remaining wei
               args address(arg2), ext_call.return_data[32]
    else:
        if not arg1:
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args WBNBAddress, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor10[stor1])
                call stor10[stor1].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args WBNBAddress, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                totalPooled += arg1
                totalVolume += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                require ext_code.size(stor10[stor1])
                call stor10[stor1].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args WBNBAddress, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.DAO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).UTILS() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                gas gas_remaining wei
               args WBNBAddress, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    swapTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function buyTo(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if arg2:
        if not arg1:
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor10[address(arg2)])
                call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                totalPooled += arg1
                totalVolume += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                require ext_code.size(stor10[address(arg2)])
                call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.DAO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).UTILS() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                gas gas_remaining wei
               args address(arg2), ext_call.return_data[32]
    else:
        if not arg1:
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args WBNBAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor10[stor1])
                call stor10[stor1].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args WBNBAddress, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                totalPooled += arg1
                totalVolume += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                require ext_code.size(stor10[stor1])
                call stor10[stor1].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args WBNBAddress, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.DAO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).UTILS() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                gas gas_remaining wei
               args WBNBAddress, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    swapTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function removeLiquidityExactAndSwap(uint256 arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if arg3:
        require ext_code.size(stor10[address(arg3)])
        staticcall stor10[address(arg3)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[address(arg3)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10[address(arg3)], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor10[address(arg3)])
            call stor10[address(arg3)].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if uint255(ext_call.return_data[0]):
                if BASEAddress:
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 2 * ext_call.return_data[0] wei
                         gas gas_remaining wei
            return (2 * ext_call.return_data[0])
        require ext_code.size(BASEAddress)
        call BASEAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor10[address(arg3)], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].swap(address rg1) with:
             gas gas_remaining wei
            args BASEAddress
    else:
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor10[stor1])
        call stor10[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[stor1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[stor1])
        call stor10[stor1].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10[stor1], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if uint255(ext_call.return_data[0]):
                if BASEAddress:
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 2 * ext_call.return_data[0] wei
                         gas gas_remaining wei
            return (2 * ext_call.return_data[0])
        require ext_code.size(BASEAddress)
        call BASEAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor10[stor1], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[stor1])
        call stor10[stor1].swap(address rg1) with:
             gas gas_remaining wei
            args BASEAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).UTILS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
            gas gas_remaining wei
           args address(arg3), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    require ext_call.return_data[32] + ext_call.return_data[0] >= ext_call.return_data[0]
    if ext_call.return_data[32] + ext_call.return_data[0]:
        if arg3:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32] + ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(WBNBAddress)
            call WBNBAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] + ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[32] + ext_call.return_data[0] wei
                 gas gas_remaining wei
    return (ext_call.return_data[32] + ext_call.return_data[0])
}

function removeLiquidityAndSwap(uint256 arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).UTILS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3:
        require ext_code.size(stor10[address(arg3)])
        staticcall stor10[address(arg3)].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    else:
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x714270ab with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        require ext_code.size(stor10[address(arg3)])
        staticcall stor10[address(arg3)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[address(arg3)], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10[address(arg3)], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor10[address(arg3)])
            call stor10[address(arg3)].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if uint255(ext_call.return_data[0]):
                if BASEAddress:
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 2 * ext_call.return_data[0] wei
                         gas gas_remaining wei
            return (2 * ext_call.return_data[0])
        require ext_code.size(BASEAddress)
        call BASEAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor10[address(arg3)], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].swap(address rg1) with:
             gas gas_remaining wei
            args BASEAddress
    else:
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor10[stor1])
        call stor10[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10[stor1], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[stor1])
        call stor10[stor1].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10[stor1], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if uint255(ext_call.return_data[0]):
                if BASEAddress:
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (2 * ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 2 * ext_call.return_data[0] wei
                         gas gas_remaining wei
            return (2 * ext_call.return_data[0])
        require ext_code.size(BASEAddress)
        call BASEAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor10[stor1], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10[stor1])
        call stor10[stor1].swap(address rg1) with:
             gas gas_remaining wei
            args BASEAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).UTILS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
            gas gas_remaining wei
           args address(arg3), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    require ext_call.return_data[32] + ext_call.return_data[0] >= ext_call.return_data[0]
    if ext_call.return_data[32] + ext_call.return_data[0]:
        if arg3:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32] + ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(WBNBAddress)
            call WBNBAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[32] + ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[32] + ext_call.return_data[0] wei
                 gas gas_remaining wei
    return (ext_call.return_data[32] + ext_call.return_data[0])
}

function addLiquidity(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if arg3:
        if not arg1:
            if arg2:
                if not arg3:
                    if arg2 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg2 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[address(arg3)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(arg3)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
        addLiquidityTx++
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].addLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    else:
        if not arg1:
            if arg2:
                if not arg3:
                    if arg2 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg2 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
        addLiquidityTx++
        require ext_code.size(stor10[stor1])
        call stor10[stor1].addLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addLiquidityForMember(uint256 arg1, uint256 arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if arg3:
        if not arg1:
            if arg2:
                if not arg3:
                    if arg2 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg2 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[address(arg3)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(arg3)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
        addLiquidityTx++
        require ext_code.size(stor10[address(arg3)])
        call stor10[address(arg3)].addLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args arg4
    else:
        if not arg1:
            if arg2:
                if not arg3:
                    if arg2 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg2 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor10[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor10[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor10[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor10[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
        addLiquidityTx++
        require ext_code.size(stor10[stor1])
        call stor10[stor1].addLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function createPool(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if arg3:
        if stor10[address(arg3)]:
            revert with 0, 'CreateErr'
    else:
        if stor10[stor1]:
            revert with 0, 'CreateErr'
    if BASEAddress == arg3:
        revert with 0, 'Must not be Base'
    if arg2 <= 0:
        revert with 0, 'Must get tokens for both'
    if arg1 <= 0:
        revert with 0, 'Must get tokens for both'
    if arg3:
        create contract with 0 wei
                        code: code.data[11079 len 9531], BASEAddress, arg3
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor10[address(arg3)] = address(create.new_address)
        if not arg1:
            if arg2:
                if not arg3:
                    if arg2 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg2 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(create.new_address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(create.new_address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            token.length++
            token[token.length] = arg3
            stor11[address(create.new_address)] = 1
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(create.new_address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                token.length++
                token[token.length] = arg3
                stor11[address(create.new_address)] = 1
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                token.length++
                token[token.length] = arg3
                stor11[address(create.new_address)] = 1
    else:
        create contract with 0 wei
                        code: code.data[11079 len 9531], BASEAddress, WBNBAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor10[stor1] = address(create.new_address)
        if not arg1:
            if arg2:
                if not arg3:
                    if arg2 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg2 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(create.new_address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(create.new_address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            token.length++
            token[token.length] = WBNBAddress
            stor11[address(create.new_address)] = 1
        else:
            if not BASEAddress:
                if arg1 != msg.value:
                    revert with 0, 'InputErr'
                call WBNBAddress with:
                   value arg1 wei
                     gas gas_remaining wei
                require ext_code.size(WBNBAddress)
                call WBNBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(create.new_address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                token.length++
                token[token.length] = WBNBAddress
                stor11[address(create.new_address)] = 1
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2:
                    if not arg3:
                        if arg2 != msg.value:
                            revert with 0, 'InputErr'
                        call WBNBAddress with:
                           value arg2 wei
                             gas gas_remaining wei
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, '', 0
                token.length++
                token[token.length] = WBNBAddress
                stor11[address(create.new_address)] = 1
    addLiquidityTx++
    require ext_code.size(address(create.new_address))
    call address(create.new_address).addLiquidityForMember(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit NewPool(address(arg3), address(create.new_address), block.timestamp);
    return address(create.new_address)
}

function swapTo(uint256 arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg2 == arg3:
        revert with 0, 'TokenTypeErr'
    if BASEAddress == arg2:
        if BASEAddress == arg3:
            revert with 0, 'TokenTypeErr'
        if arg3:
            if not arg1:
                require ext_code.size(stor10[address(arg3)])
                call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            else:
                if not BASEAddress:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg3)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor10[address(arg3)])
                    call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    totalPooled += arg1
                    totalVolume += arg1
                else:
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg3)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
                    require ext_code.size(stor10[address(arg3)])
                    call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
        else:
            if not arg1:
                require ext_code.size(stor10[stor1])
                call stor10[stor1].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args WBNBAddress, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            else:
                if not BASEAddress:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor10[stor1])
                    call stor10[stor1].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args WBNBAddress, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    totalPooled += arg1
                    totalVolume += arg1
                else:
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
                    require ext_code.size(stor10[stor1])
                    call stor10[stor1].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args WBNBAddress, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalFees += ext_call.return_data[0]
        swapTx++
        emit Swapped(address(arg2), address(arg3), arg1, 0, ext_call.return_data[0], ext_call.return_data[32], arg4);
        return ext_call.return_data[0], ext_call.return_data[32]
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if BASEAddress == arg3:
        if arg2:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, arg4
        else:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        swapTx++
        emit Swapped(address(arg2), address(arg3), arg1, 0, ext_call.return_data[0], ext_call.return_data[32], arg4);
        return ext_call.return_data[0], ext_call.return_data[32]
    if arg3:
        if arg2:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[address(arg3)]
        else:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[address(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        swapTx++
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        require ext_code.size(stor10[address(arg3)])
        if arg3:
            call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), address(arg3), arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], arg4);
        else:
            call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args WBNBAddress, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), WBNBAddress, arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], arg4);
    else:
        if arg2:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[stor1]
        else:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[stor1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        swapTx++
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        require ext_code.size(stor10[stor1])
        if arg3:
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), address(arg3), arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], arg4);
        else:
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args WBNBAddress, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), WBNBAddress, arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], arg4);
    return ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32]
}

function swap(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        revert with 0, 'TokenTypeErr'
    if BASEAddress == arg2:
        if BASEAddress == arg3:
            revert with 0, 'TokenTypeErr'
        if arg3:
            if not arg1:
                require ext_code.size(stor10[address(arg3)])
                call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args address(arg3), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            else:
                if not BASEAddress:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg3)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor10[address(arg3)])
                    call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args address(arg3), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    totalPooled += arg1
                    totalVolume += arg1
                else:
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg3)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
                    require ext_code.size(stor10[address(arg3)])
                    call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args address(arg3), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
        else:
            if not arg1:
                require ext_code.size(stor10[stor1])
                call stor10[stor1].swapTo(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args WBNBAddress, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            else:
                if not BASEAddress:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor10[stor1])
                    call stor10[stor1].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args WBNBAddress, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    totalPooled += arg1
                    totalVolume += arg1
                else:
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(BASEAddress)
                    call BASEAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(BASEAddress)
                    staticcall BASEAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
                    require ext_code.size(stor10[stor1])
                    call stor10[stor1].swapTo(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args WBNBAddress, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalFees += ext_call.return_data[0]
        swapTx++
        emit Swapped(address(arg2), address(arg3), arg1, 0, ext_call.return_data[0], ext_call.return_data[32], msg.sender);
        return ext_call.return_data[0], ext_call.return_data[32]
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if BASEAddress == arg3:
        if arg2:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, msg.sender
        else:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        swapTx++
        emit Swapped(address(arg2), address(arg3), arg1, 0, ext_call.return_data[0], ext_call.return_data[32], msg.sender);
        return ext_call.return_data[0], ext_call.return_data[32]
    if arg3:
        if arg2:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[address(arg3)]
        else:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[address(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        swapTx++
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        require ext_code.size(stor10[address(arg3)])
        if arg3:
            call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(arg3), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), address(arg3), arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], msg.sender);
        else:
            call stor10[address(arg3)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args WBNBAddress, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), WBNBAddress, arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], msg.sender);
    else:
        if arg2:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[address(arg2)], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[address(arg2)])
            call stor10[address(arg2)].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[stor1]
        else:
            if arg1:
                if not arg2:
                    if arg1 != msg.value:
                        revert with 0, 'InputErr'
                    call WBNBAddress with:
                       value arg1 wei
                         gas gas_remaining wei
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor10[stor1], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor10[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, '', 0
            require ext_code.size(stor10[stor1])
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args BASEAddress, stor10[stor1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, '', 0
        totalPooled -= ext_call.return_data[0]
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        swapTx++
        totalVolume += ext_call.return_data[0]
        totalFees += ext_call.return_data[32]
        require ext_code.size(stor10[stor1])
        if arg3:
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(arg3), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args address(arg3), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), address(arg3), arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], msg.sender);
        else:
            call stor10[stor1].swapTo(address rg1, address rg2) with:
                 gas gas_remaining wei
                args WBNBAddress, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdb39dc79 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalFees += ext_call.return_data[0]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.DAO() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).UTILS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc0c4a724 with:
                    gas gas_remaining wei
                   args WBNBAddress, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Swapped(address(arg2), WBNBAddress, arg1, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32], msg.sender);
    return ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32]
}



}
